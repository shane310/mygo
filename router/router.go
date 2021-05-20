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
	s.Group("/", func(group *ghttp.RouterGroup) {
		group.Middleware(
			service.Middleware.Ctx,
			service.Middleware.CORS,
		)
	s.Group("/auth/", func(g *ghttp.RouterGroup) {
		g.ALL("/login", api.Auth.LoginHandler)
		g.ALL("/refresh_token", api.Auth.RefreshHandler)
		g.ALL("/logout", api.Auth.LogoutHandler)
	})
		group.ALL("/chat", api.Chat)
		group.ALL("/user", api.User)
		group.Group("/", func(group *ghttp.RouterGroup) {
			group.Middleware(service.Middleware.Auth)
			group.ALL("/user/profile", api.User.Profile)
		})
	})
	s.Group("/api/", func(group *ghttp.RouterGroup) {

		group.GET("/contestant/:id", api.Contestant.Show)
	})
	s.Group("/api/", func(group *ghttp.RouterGroup) {
		group.Middleware(service.Middleware.CORS, jwtAuth)
		group.GET("/contestant", api.Contestant)
		group.GET("/subject/:id", api.Subject.Show)
		group.PUT("/score/:id", api.Score.Do)
	})
}
