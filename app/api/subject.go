package api

import (
	"github.com/gogf/gf-demos/app/service"
	"github.com/gogf/gf-demos/library/response"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
)

// 用户API管理对象
var Subject = new(subjectApi)

type subjectApi struct{}

// @summary 获取科目详情
// @tags    Subject
// @produce json
// @router  /subject/:id [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *subjectApi) Show(r *ghttp.Request) {
	id := r.GetInt("id")
	g.Dump(id)
	data := service.Subject.Show(id)
	response.JsonExit(r, 0, "ok", data)
}

// @summary 获取科目评分规则
// @tags    Subject
// @produce json
// @router  /subject/rule [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *subjectApi) Rule(r *ghttp.Request) {
	data := service.Subject.Rule(r)
	response.JsonExit(r, 0, "ok", data)
}
