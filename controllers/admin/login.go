package admin

import "github.com/astaxie/beego"

type LoginController struct {
	beego.Controller
}

func (c *LoginController) Login()  {
c.TplName= "admin/login.tpl"
}