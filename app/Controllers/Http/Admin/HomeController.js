'use strict'

class HomeController {

    async index({view}){
        return view.render('admin.pages.home')
    }

    async logout({auth,session,response}){
      await auth.logout();
      return response.redirect("admin/login")
    }

}

module.exports = HomeController
