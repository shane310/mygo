package api

import (
	"github.com/gogf/gf-demos/app/model"
	"github.com/gogf/gf-demos/app/service"
	"github.com/gogf/gf-demos/library/response"
	"github.com/gogf/gf/net/ghttp"
)

// 用户API管理对象
var Score = new(scoreApi)

type scoreApi struct{}

// @summary 获取评分列表
// @tags    Score
// @produce json
// @router  /score [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *scoreApi) Index(r *ghttp.Request) {
	data := service.Score.Index(r)
	response.JsonExit(r, 0, "ok", data)
}

// @summary 获取评分详情
// @tags    Score
// @produce json
// @router  /score/:id [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *scoreApi) Show(r *ghttp.Request) {
	id := r.GetInt("id")
	data := service.Score.Show(id)
	response.JsonExit(r, 0, "ok", data)
}

// @summary 打分
// @tags    Score
// @produce json
// @param result query string true "打分结果:6,3,1,90"
// @param score query float64 false "分数"
// @router  /score/:id [PUT]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *scoreApi) Do(r *ghttp.Request) {
	var (
		doScoreReq *model.DoScoreReq
	)
	if err := r.ParseForm(&doScoreReq); err != nil {
		response.JsonExit(r, 1, err.Error())
	}
	data := service.Score.Do(r)
	response.JsonExit(r, 0, "ok", data)
}
