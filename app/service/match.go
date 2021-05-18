package service

import (
	"github.com/gogf/gf-demos/app/model"
)

// 中间件管理服务
var Match = matchService{}

type matchService struct{}

// 获取比赛详情
func (s *matchService) Show(r *model.UserServiceSignUpReq) error {

}

