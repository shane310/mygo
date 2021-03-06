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
	data := service.Contestant.Index(r)
	response.JsonExit(r, 0, "ok", data)
}

// @summary 获取选手详情
// @tags    Contestant
// @produce json
// @router  /contestant/:id [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *contestantApi) Show(r *ghttp.Request) {
	id := r.GetInt("id")
	data := service.Contestant.Show(id)
	response.JsonExit(r, 0, "ok", data)
}

// @summary 编辑选手详情
// @tags    Contestant
// @produce json
// @router  /contestant/:id [PUT]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *contestantApi) Edit(r *ghttp.Request) {
	id := r.GetInt("id")
	data := service.Contestant.Edit(id, r)
	response.JsonExit(r, 0, "ok", data)
}

// @summary 批量编辑选手详情
// @tags    Contestant
// @produce json
// @router  /contestant [PUT]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *contestantApi) BatchEdit(r *ghttp.Request) {
	data := service.Contestant.BatchEdit(r)
	response.JsonExit(r, 0, "ok", data)
}

// @summary 获取我名下的选手
// @tags    Contestant
// @produce json
// @param isScored query int false "是否已打分：0 1"
// @router  /contestant/my [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *contestantApi) My(r *ghttp.Request) {
	data := service.Contestant.MyContestant(r)
	response.JsonExit(r, 0, "ok", data)
}

// @summary 查询分数
// @tags    Contestant
// @produce json
// @param keyword query string false "姓名/gid"
// @router  /contestant/search [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *contestantApi) Search(r *ghttp.Request) {
	data := service.Contestant.Search(r)
	response.JsonExit(r, 0, "ok", data)
}
