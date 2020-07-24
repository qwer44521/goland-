package admin

import "github.com/astaxie/beego"

type LoginController struct {
	beego.Controller
}
type User struct {
	Username string `form:"email"`
	Password string `form:"password"`
}

func (c *LoginController) Login() {
	c.TplName = "admin/login.tpl"
}

func (c *LoginController) Post() {
	u := User{}
	c.ParseForm(&u)
	//params := c.Input()
	//params := map[string]string{"email": email, "pwd": pwd}
	c.Data["json"] = u
	c.ServeJSON()
	//u := User{}
	//if err := this.ParseForm(&u);err != nil {
	//	//handle error
	//}
}
