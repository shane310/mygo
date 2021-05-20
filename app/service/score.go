package service

import (
	"database/sql"
	"strings"

	"github.com/gogf/gf-demos/app/dao"
	"github.com/gogf/gf-demos/app/model"
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
)

// 中间件管理服务
var Score = ScoreService{}

type ScoreService struct{}

// contestant list
func (s *ScoreService) Do(r *ghttp.Request) sql.Result{
	id := r.Get("id")
	socre:=g.DB().Model("score").One(id)
	score.result=strings.Split(r.Get("result").(string),",")
	g.DB().Model("score").Save(score)
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
	userId :=r.Get("id")
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
