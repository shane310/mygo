package api

import (
	"github.com/gogf/gf-demos/app/service"
	"github.com/gogf/gf-demos/library/response"
	"github.com/gogf/gf/net/ghttp"
)

// 用户API管理对象
var Contestant = new(contestantApi)

type contestantApi struct{}

// @summary 获取选手列表
// @tags    Contestant
// @produce json
// @router  /contestant [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *contestantApi) Index(r *ghttp.Request) {
	data := service.Contestant.Index()
	response.JsonExit(r, 0, data.Error())
}
