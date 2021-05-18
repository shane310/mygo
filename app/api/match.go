package api

import (
	"github.com/gogf/gf-demos/library/response"
	"github.com/gogf/gf/net/ghttp"
)

// 用户API管理对象
var Match = new(matchApi)

type matchApi struct{}

// @summary Get match list
// @tags    match service
// @produce json
// @router  /api/match [GET]
// @success 200 {object} response.JsonResponse
func (a *matchApi) index(r *ghttp.Request) {
	response.JsonExit(r, 1, "test")
}
