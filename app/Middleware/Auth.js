'use strict'
/** @typedef {import('@adonisjs/framework/src/Request')} Request */
/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

class Auth {
  /**
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Function} next
   */
  async handle ({response,auth,session} , next) {
    try {
      await auth.check();
      await next();
    }catch (e) {
      session.flash({message:"Lütfen Giriş Yapınız!"})
      return response.redirect('admin/login');
    }
    await next()
  }
}

module.exports = Auth
