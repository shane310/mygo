package main

import (
	"github.com/gogf/gf/frame/g"
	_ "github.com/shane310/mygo/boot"
	_ "github.com/shane310/mygo/router"
)

// @title       技能大賽評分系統
// @version     1.0
// @description 評分系統
// @schemes     http
func main() {
	g.Server().Run()
}
