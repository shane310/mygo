package service

import (
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
	score.Model.Save(data)
	data.Id = 0
	score_log.Model.Insert(data)
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
