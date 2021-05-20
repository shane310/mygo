package service

import (
	"github.com/gogf/gf-demos/app/dao"
	"github.com/gogf/gf-demos/app/model"
)

// 中间件管理服务
var Subject = subjectService{}

type subjectService struct{}


// contestant show
func (s *subjectService) Show(id int) *model.Subject {
	data, _ := dao.Subject.FindOne(id)
	return data
}

