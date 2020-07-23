package admin

import "github.com/astaxie/beego"

type IndexController struct {
	beego.Controller
}

func (c *IndexController) Index()  {
	c.Data["test"]="这是一个测试数据"
	c.TplName = "admin/index.tpl"
}