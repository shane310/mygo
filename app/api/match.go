package api

import (
	"github.com/gogf/gf-demos/app/service"
	"github.com/gogf/gf-demos/library/response"
	"github.com/gogf/gf/net/ghttp"
)

// 用户API管理对象
var Match = new(matchApi)

type matchApi struct{}

// @summary 获取比赛列表
// @tags    Match
// @produce json
// @router  /match [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *matchApi) Index(r *ghttp.Request) {
	data := service.Match.Index()
	response.JsonExit(r, 0, "ok", data)
}

// @summary 获取比赛详情
// @tags    Match
// @produce json
// @router  /match/:id [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *matchApi) Show(r *ghttp.Request) {
	id := r.GetInt("id")
	data := service.Match.Show(id)
	response.JsonExit(r, 0, "ok", data)
}
