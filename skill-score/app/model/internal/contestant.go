// ==========================================================================
// Code generated by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
    "github.com/gogf/gf/os/gtime"
)

// Contestant is the golang structure for table contestant.
type Contestant struct {
    Id        int         `orm:"id,primary" json:"id"`        //   
    Tid       int         `orm:"tid"        json:"tid"`       //   
    Name      string      `orm:"name"       json:"name"`      //   
    Vurl      string      `orm:"vurl"       json:"vurl"`      //   
    Sid       int         `orm:"sid"        json:"sid"`       //   
    Score     float64     `orm:"score"      json:"score"`     //   
    CreatedAt *gtime.Time `orm:"created_at" json:"createdAt"` //   
    UpdatedAt *gtime.Time `orm:"updated_at" json:"updatedAt"` //   
}