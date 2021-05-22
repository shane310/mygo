package service

import (
	"github.com/gogf/gf-demos/app/dao"
	"github.com/gogf/gf-demos/app/model"
	"github.com/gogf/gf-demos/app/model/contestant"
	"github.com/gogf/gf/database/gdb"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gconv"
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

// contestant edit
func (s *contestantService) Edit(id int, r *ghttp.Request) map[string]interface{} {
	params := r.GetQueryMap()
	data, _ := contestant.Model.WherePri(id).FindOne()
	if data == nil {
		return nil
	}
	newData := gconv.Map(data)
	if params != nil {
		for k, v := range params {
			newData[k] = v
		}
	}
	contestant.Model.Save(newData)
	return newData
}

// contestant batch edit
func (s *contestantService) BatchEdit(r *ghttp.Request) map[string]interface{} {
	params := r.GetQueryMap()
	ids := r.Get("ids")
	newData := make(map[string]interface{})
	if params != nil {
		for k, v := range params {
			newData[k] = v
		}
	}
	contestant.Model.Where("id in (" + ids.(string) + ")").Update(newData)
	return newData
}

// contestant show
func (s *contestantService) Search(r *ghttp.Request) gdb.Result {
	keyword := r.Get("keyword")
	matchId := r.Get("match_id")
	m := g.DB().Model("Contestant").Safe().
		LeftJoin("score", "score.contestant_id=contestant.id").
		LeftJoin("subject", "subject.id=score.subject_id").
		Fields("score.id score_id,contestant.name contestant_name,gid,score,comments,subject.name subject_name")
	if keyword != nil {
		m = m.Where("gid=? or contestant.name=?", keyword, keyword)
	}
	if matchId != nil {
		m = m.Where("match_id", matchId)
	}
	data, _ := m.All()
	return data
}

// my contestant
func (s *contestantService) MyContestant(r *ghttp.Request) gdb.Result {
	// payload := r.Get("JWT_PAYLOAD")
	userId := r.Get("uid")
	matchId := r.Get("match_id")
	keyword := r.Get("keyword")
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
	if matchId != nil {
		m = m.Where("match_id", matchId)
	}
	if keyword != nil {
		m = m.Where("gid=? or contestant.name=?", keyword, keyword)
	}
	data, _ := m.
		Where("score.user_id", userId).
		All()
	return data
}
