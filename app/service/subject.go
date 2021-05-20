package service

import (
	"github.com/gogf/gf-demos/app/model/rule"
	"github.com/gogf/gf-demos/app/model/subject"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
)

// 中间件管理服务
var Subject = subjectService{}

type subjectService struct{}

// subject detail
func (s *subjectService) Show(id int) subject.Entity {
	var subject subject.Entity
	g.DB().Table("user").Scan(&subject.Subject, "id", id)
	g.DB().Table("rule").Scan(&subject.Rule, "subject_id", subject.Subject.Id)
	return subject
}

// subject rule
func (s *subjectService) Rule(r *ghttp.Request) []*rule.Entity {
	subject_id := r.Get("subject_id")
	data, _ := rule.Model.Where("subject_id", subject_id).All()
	return data
}
