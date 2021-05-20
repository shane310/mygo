package service

import (
	"strings"

	"github.com/gogf/gf-demos/app/dao"
	"github.com/gogf/gf-demos/app/model"
	"github.com/gogf/gf-demos/app/model/score"
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gconv"
)

// 中间件管理服务
var Score = ScoreService{}

type ScoreService struct{}

// contestant list
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
	score.Model.Save(data)
	return data
}

// contestant show
func (s *ScoreService) Show(id int) *model.Contestant {
	data, _ := dao.Contestant.FindOne(id)
	return data
}

// contestant show
func (s *ScoreService) MyContestant(r *ghttp.Request) gdb.Result {
	// payload := r.Get("JWT_PAYLOAD")
	userId := r.Get("id")
	m := g.DB().Model("Contestant").Safe().LeftJoin("score", "score.contestant_id=contestant.id").Fields("name,gid,score")
	isScored := r.Get("isScored")
	if isScored != nil {
		switch isScored {
		case "0":
			m = m.Where("score", 0)
		case "1":
			m = m.Where("score>0")
		}
	}
	data, _ := m.
		Where("score.user_id", userId).
		All()
	return data
}
