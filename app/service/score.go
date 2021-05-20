package service

import (
	"strings"

	"github.com/gogf/gf-demos/app/model/score"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gconv"
)

// 中间件管理服务
var Score = ScoreService{}

type ScoreService struct{}

// Do score
func (s *ScoreService) Do(r *ghttp.Request) *score.Entity {
	id := r.Get("id")
	data, err := score.Model.One(id)
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
	score.Model.Save(data)
	return data
}

// score detail
func (s *ScoreService) Show(id int) *score.Entity {
	data, _ := score.Model.One(id)
	return data
}
