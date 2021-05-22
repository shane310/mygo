package service

import (
	"github.com/gogf/gf-demos/app/model/match"
)

// 中间件管理服务
var Match = matchService{}

type matchService struct{}

// match list
func (s *matchService) Index() []*match.Entity {
	data, _ := match.Model.All()
	return data
}

// match detail
func (s *matchService) Show(id int) *match.Entity {
	data, _ := match.Model.One("id", id)
	return data
}
