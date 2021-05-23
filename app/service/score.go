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

// score export
func (s *ScoreService) ExportScore(r *ghttp.Request) gdb.Result {
	m := g.DB().Model("Contestant").As("t1").Safe().
		LeftJoin("score t2", "t2.contestant_id=t1.id and t2.subject_id=1").
		LeftJoin("score t3", "t3.contestant_id=t1.id and t3.subject_id=2").
		LeftJoin("user t4", "t4.id=t2.user_id").
		LeftJoin("user t5", "t5.id=t3.user_id").
		Fields("t1.gid cgid,t1.name cname,region,`group`,t2.score,t4.gid ugid1,t4.name uname1,t3.score score2,t5.gid ugid2,t5.name uname2,case is_show_result when 1 then '是' else '否' end  is_show_result")
	data, err := m.All()
	if err != nil {
		return nil
	}
	return data
}

// score export log
func (s *ScoreService) ExportScoreLog(r *ghttp.Request) gdb.Result {
	matchId := r.Get("match_id")
	m := g.DB().Model("Contestant").As("t1").Safe().
		LeftJoin("score_log t2", "t2.contestant_id=t1.id").
		LeftJoin("subject t3", "t3.id=t2.subject_id").
		Fields("gid,t1.name,t1.group,t3.name sname,score,t2.created_at").
		Where("t2.match_id", matchId).Where("t2.contestant_id is not null")
	data, err := m.All()
	if err != nil {
		return nil
	}
	return data
}
