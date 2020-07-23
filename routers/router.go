package routers

import (
	"adminweb/controllers"
	"adminweb/controllers/admin"
	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/admin", &admin.IndexController{},"get:Index")
    beego.Router("/", &controllers.MainController{})
}
