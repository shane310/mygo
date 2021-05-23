package api

import (
	"github.com/360EntSecGroup-Skylar/excelize/v2"
	"github.com/gogf/gf-demos/app/model"
	"github.com/gogf/gf-demos/app/service"
	"github.com/gogf/gf-demos/library/response"
	"github.com/gogf/gf/net/ghttp"
	"github.com/gogf/gf/util/gconv"
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

// @summary 获取评分历史
// @tags    Score
// @produce json
// @router  /score/log [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *scoreApi) Log(r *ghttp.Request) {
	data := service.Score.LogList(r)
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

// @summary 评分导出
// @tags    Score
// @produce json
// @param match_id query int false "比赛ID"
// @param subject_id query int false "科目ID"
// @router  /score/export [GET]
// @success 200 {object} response.JsonResponse "执行结果"
func (a *scoreApi) Export(r *ghttp.Request) {
	data := service.Score.ExportScore(r)
	f := excelize.NewFile()
	categories := map[string]string{
		"A1": "GID",
		"B1": "姓名",
		"C1": "大区",
		"D1": "分组",
		"E1": "ECG成绩得分",
		"F1": "ECG考官GID",
		"G1": "ECG考官姓名",
		"H1": "3CG成绩得分",
		"I1": "3CG考官GID",
		"J1": "3CG考官姓名",
		"K1": "推送至成绩端口状态",
	}
	for k, v := range categories {
		f.SetCellValue("Sheet1", k, v)
	}
	for k, v := range data {
		gconv.Map(v)
		index := gconv.String(k + 2)
		f.SetCellValue("Sheet1", "A"+index, v["cgid"])
		f.SetCellValue("Sheet1", "B"+index, v["cname"])
		f.SetCellValue("Sheet1", "C"+index, v["region"])
		f.SetCellValue("Sheet1", "D"+index, v["group"])
		f.SetCellValue("Sheet1", "E"+index, v["score"])
		f.SetCellValue("Sheet1", "F"+index, v["ugid1"])
		f.SetCellValue("Sheet1", "G"+index, v["uname1"])
		f.SetCellValue("Sheet1", "H"+index, v["score2"])
		f.SetCellValue("Sheet1", "I"+index, v["ugid2"])
		f.SetCellValue("Sheet1", "J"+index, v["uname2"])
		f.SetCellValue("Sheet1", "K"+index, v["is_show_result"])
	}

	f.NewSheet("Sheet2")
	data2 := service.Score.ExportScoreLog(r)
	categories2 := map[string]string{
		"A1": "GID",
		"B1": "姓名",
		"C1": "分组",
		"D1": "考试类别",
		"E1": "得分",
		"F1": "打分时间",
	}
	for k, v := range categories2 {
		f.SetCellValue("Sheet2", k, v)
	}
	for k, v := range data2 {
		gconv.Map(v)
		index := gconv.String(k + 2)
		f.SetCellValue("Sheet2", "A"+index, v["gid"])
		f.SetCellValue("Sheet2", "B"+index, v["name"])
		f.SetCellValue("Sheet2", "C"+index, v["group"])
		f.SetCellValue("Sheet2", "D"+index, v["sname"])
		f.SetCellValue("Sheet2", "E"+index, v["score"])
		f.SetCellValue("Sheet2", "F"+index, v["created_at"])
	}
	r.Response.Writer.Header().Set("Content-Type", "application/octet-stream")
	r.Response.Writer.Header().Set("Content-Disposition", "attachment; filename=score-export.xlsx")
	options := ghttp.CORSOptions{
		AllowOrigin:      "*",
		AllowMethods:     "*",
		AllowCredentials: "true",
		AllowHeaders:     "*",
		MaxAge:           3628800,
	}
	r.Response.CORS(options)
	f.Write(r.Response.Writer)
}
