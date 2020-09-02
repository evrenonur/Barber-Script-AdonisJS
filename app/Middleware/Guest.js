'use strict'
/** @typedef {import('@adonisjs/framework/src/Request')} Request */

/** @typedef {import('@adonisjs/framework/src/Response')} Response */
/** @typedef {import('@adonisjs/framework/src/View')} View */

class Guest {
  /**
   * @param {object} ctx
   * @param {Request} ctx.request
   * @param {Function} next
   */
  async handle({response, auth, session}, next) {
    try {
      await auth.check();
      return response.redirect("/login")
    } catch {
      await next()
    }

  }
}

module.exports = Guest
