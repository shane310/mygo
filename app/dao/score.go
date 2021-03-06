// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"github.com/gogf/gf-demos/app/dao/internal"
)

// scoreDao is the manager for logic model data accessing
// and custom defined data operations functions management. You can define
// methods on it to extend its functionality as you wish.
type scoreDao struct {
	internal.ScoreDao
}

var (
	// Score is globally public accessible object for table score operations.
	Score = scoreDao{
		internal.Score,
	}
)

// Fill with you ideas below.