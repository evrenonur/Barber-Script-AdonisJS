'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class FiyatlarSchema extends Schema {
  up () {
    this.create('fiyatlars', (table) => {
      table.increments()
      table.string("baslik",255)
      table.string("fiyat",10)
      table.string("fiyat_resim")
      table.timestamps()
    })
  }

  down () {
    this.drop('fiyatlars')
  }
}

module.exports = FiyatlarSchema
