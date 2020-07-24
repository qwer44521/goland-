package routers

import (
	"adminweb/controllers"
	"adminweb/controllers/admin"
	"github.com/astaxie/beego"
)

func init() {

	beego.Router("/login", &admin.LoginController{}, "post:Post")
	beego.Router("/login", &admin.LoginController{}, "get:Login")
	beego.Router("/admin", &admin.IndexController{}, "get:Index")
	beego.Router("/", &controllers.MainController{})
}
