// ============================================================================
// This is auto-generated by gf cli tool only once. Fill this file as you wish.
// ============================================================================

package score

// Fill with you ideas below.

// score search params
type ReqListSearchParams struct {
	ContestantId int     `p:"contestant_id"` //
	MatchId      int     `p:"match_id"`      //
	SubjectId    int     `p:"subject_id"`    //
	UserId       int     `p:"user_id"`       //
	Result       string  `p:"result"`        //
	Score        float64 `p:"score"`         //
	Comments     string  `p:"comments"`      //
	PageNum      int     `p:"page"`          //当前页码
	PageSize     int     `p:"pageSize"`      //每页数
	OrderBy      string  //排序字段
}
