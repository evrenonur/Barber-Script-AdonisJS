'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class EkibimizSchema extends Schema {
  up () {
    this.create('ekibimizs', (table) => {
      table.increments()
      table.string("isim",255)
      table.string("pozisyon",255)
      table.string("resim",255)
      table.timestamps()
    })
  }

  down () {
    this.drop('ekibimizs')
  }
}

module.exports = EkibimizSchema
