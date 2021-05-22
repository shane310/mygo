package router

import (
	"github.com/gogf/gf-demos/app/api"
	"github.com/gogf/gf-demos/app/service"
	"github.com/gogf/gf/frame/g"
	"github.com/gogf/gf/net/ghttp"
)

// authHook is the HOOK function implements JWT logistics.
func jwtAuth(r *ghttp.Request) {
	api.Auth.MiddlewareFunc()(r)
	r.Middleware.Next()
}

func init() {
	s := g.Server()
	// 分组路由注册方式
	s.Group("/auth/", func(group *ghttp.RouterGroup) {
		group.Middleware(service.Middleware.Ctx, service.Middleware.CORS)
		group.ALL("/login", api.Auth.LoginHandler)
		group.ALL("/refresh_token", api.Auth.RefreshHandler)
		group.ALL("/logout", api.Auth.LogoutHandler)
	})
	s.Group("/api/", func(group *ghttp.RouterGroup) {
		group.Middleware(
			service.Middleware.Ctx,
			service.Middleware.CORS,
		)
		group.ALL("/user", api.User)
		group.GET("/match/:id", api.Match.Show)
		group.GET("/match", api.Match)
		group.GET("/contestant/search", api.Contestant.Search)
	})
	s.Group("/api/", func(group *ghttp.RouterGroup) {
		group.Middleware(service.Middleware.CORS, jwtAuth)
		group.GET("/contestant/:id", api.Contestant.Show)
		group.GET("/contestant", api.Contestant)
		group.GET("/subject/:id", api.Subject.Show)
		group.GET("/subject", api.Subject)
		group.PUT("/score/:id", api.Score.Do)
		group.GET("/score/:id", api.Score.Show)
		group.GET("/score", api.Score)
	})
}
