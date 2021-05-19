package service

import (
	"github.com/gogf/gf-demos/app/dao"
	"github.com/gogf/gf-demos/app/model"
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
func (s *contestantService) MyContestant(r *ghttp.Request) gdb.Result {
	userId := 1
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
	g.Dump(data)
	// db.Model(Contestant).WithAll().All()
	// data, _ := dao.Contestant.
	// 	LeftJoin("score", "score.contestant_id=contestant.id").
	// 	Where("score.user_id", 1).
	// 	With(UserScores{}).
	// 	Fields("score").
	// 	All()
	// godump.Dump(data)
	// userId := 1
	// data, _ := dao.Score.With(Contestant).Where("user_id", userId).All()
	// dataMap := gmap.New(true)
	// for k, v := range data {
	// 	dataMap.Set(k, v)
	// 	temp := v.ToMap()
	// 	contestant, _ := dao.Contestant.FindOne(temp["contestant_id"])
	// 	godump.Dump(contestant)

	// }
	// godump.Dump(dataMap)

	// os.Exit(0)
	return data
}
