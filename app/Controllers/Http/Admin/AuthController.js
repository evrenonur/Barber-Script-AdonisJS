'use strict'

const User = use("App/Models/User")
const Hash = use("Hash")
const {validate} = use("Validator")

class AuthController {

    async index({view}){
        return view.render('admin.auth.login')
    }

    async login({request, response,session,auth}){
        const body = request.all()
        const rules = {
          email:"required|email",
          password:"required"
        }
        const messeges = {
          "email.required" : "Email Adresi Giriniz!",
          "password.required" : "Şifrenizi Giriniz!",
          "email.email" : "Geçerli Mail Adresi Giriniz!"
        }
        const validation = await validate(body,rules,messeges);
        if (validation.fails()){
          session.withErrors(validation.messages().flashAll());
          return response.redirect("back");
        }
        await auth.attempt(body.email,body.password);
        session.flash({message:"Başarıyla Giriş Yapıldı!"});
        return response.redirect("/admin")

    }

}

module.exports = AuthController
