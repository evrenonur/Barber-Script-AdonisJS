'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class ReferanslarSchema extends Schema {
  up () {
    this.create('referanslars', (table) => {
      table.increments()
      table.string("isim",255)
      table.text("aciklama",255)
      table.string("resim")
      table.timestamps()
    })
  }

  down () {
    this.drop('referanslars')
  }
}

module.exports = ReferanslarSchema
