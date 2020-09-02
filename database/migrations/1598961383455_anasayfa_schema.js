'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class AnasayfaSchema extends Schema {
  up () {
    this.create('anasayfas', (table) => {
      table.increments()
      table.string('slider_baslik', 255)
      table.text('slider_aciklama')
      table.text('slider_resim')
      table.string('hakkimizda_baslik', 255)
      table.text('hakkimizda_aciklama')
      table.text('hakkimizda_resim')
      table.timestamps()
    })
  }

  down () {
    this.drop('anasayfas')
  }
}

module.exports = AnasayfaSchema
