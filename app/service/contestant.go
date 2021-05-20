package service

import (
	"github.com/gogf/gf-demos/app/dao"
	"github.com/gogf/gf-demos/app/model"
	"github.com/gogf/gf-demos/app/model/contestant"
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
)

// 中间件管理服务
var Contestant = contestantService{}

type contestantService struct{}

// contestant list
func (s *contestantService) Index(r *ghttp.Request) []*model.Contestant {
	data, _ := dao.Contestant.All()
	return data
}

// contestant show
func (s *contestantService) Show(id int) *model.Contestant {
	data, _ := dao.Contestant.FindOne(id)
	return data
}

// contestant show
func (s *contestantService) Search(r *ghttp.Request) []*contestant.Entity {
	keyword := r.Get("keyword")
	m := contestant.Model.
		LeftJoin("score", "score.contestant_id=contestant.id").
		Fields("name,gid,score,comments")
	if keyword != nil {
		m = m.Where("gid=? or name=?", keyword, keyword)
	}
	data, _ := m.All()
	return data
}

// my contestant
func (s *contestantService) MyContestant(r *ghttp.Request) gdb.Result {
	// payload := r.Get("JWT_PAYLOAD")
	userId := r.Get("id")
	m := g.DB().Model("Contestant").Safe().
		LeftJoin("score", "score.contestant_id=contestant.id").
		Fields("score.id,name,gid,score")
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
