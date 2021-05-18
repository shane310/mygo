package service

import (
	"github.com/gogf/gf-demos/app/dao"
	"github.com/gogf/gf-demos/app/model"
)

// 中间件管理服务
var Contestant = contestantService{}

type contestantService struct{}

// contestant list
func (s *contestantService) Index() *model.Contestant {
	data, _ := dao.Contestant.All()
	return nil
}
