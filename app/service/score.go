package service

import (
	"encoding/json"
	"strings"

	"github.com/gogf/gf-demos/app/model/score"
	"github.com/gogf/gf-demos/app/model/score_log"
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gconv"
)

// 中间件管理服务
var Score = ScoreService{}

type ScoreService struct{}

// score list
func (s *ScoreService) Index(r *ghttp.Request) gdb.Result {
	matchId := r.Get("match_id")
	keyword := r.Get("keyword")
	sort := r.Get("sort")
	m := g.DB().Model("Contestant").Safe().
		LeftJoin("score", "score.contestant_id=contestant.id").
		LeftJoin("subject", "subject.id=score.subject_id").
		Fields("contestant.*,score.id score_id,subject_id,score,subject.name subject_name").
		Where("score.match_id", matchId)
	if keyword != nil {
		m = m.Where("gid=? or contestant.name=?", keyword, keyword)
	}
	if sort != nil {
		m = m.OrderBy(strings.Replace(sort.(string), ",", " ", 1))
	}
	data, err := m.All()
	if err != nil {
		return nil
	}
	return data
}

// score list
func (s *ScoreService) LogList(r *ghttp.Request) gdb.Result {
	scoreId := r.Get("score_id")
	m := g.DB().Model("score_log").Safe().
		LeftJoin("user", "user.id=score_log.user_id").
		Fields("score_log.*,name").
		Where("score_id", scoreId)
	data, err := m.All()
	if err != nil {
		return nil
	}
	return data
}

// Do score
func (s *ScoreService) Do(r *ghttp.Request) *score.Entity {
	id := r.GetInt("id")
	data, err := score.Model.One("id", id)
	if err != nil || data == nil {
		return nil
	}
	if r.Get("result") != nil {
		result := r.Get("result").(string)
		var totalScore float64
		for _, v := range strings.Split(result, ",") {
			totalScore += gconv.Float64(v)
		}
		data.Result = result
		data.Score = totalScore
	}
	if r.Get("score") != nil {
		data.Score = r.GetFloat64("score")
	}
	if r.Get("comments") != nil {
		data.Comments = r.Get("comments").(string)
	}
	data.Id = id
	// Insert score log
	score.Model.Save(data)
	dataJson, _ := json.Marshal(data)
	log := gconv.Map(dataJson)
	log["score_id"] = log["id"]
	delete(log, "id")
	score_log.Model.Insert(log)
	g.Dump(log)
	return data
}

// score detail
func (s *ScoreService) Show(id int) gdb.Record {
	data, err := g.DB().Model("Contestant").Safe().
		LeftJoin("score", "score.contestant_id=contestant.id").
		Fields("score.id score_id,subject_id,score,gid,name,result,comments").
		One("score.id", id)
	if err != nil {
		return nil
	}
	return data
}
