'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class AyarlarSchema extends Schema {
  up () {
    this.create('ayarlars', (table) => {
      table.increments()
      table.string('title',100)
      table.string('keyword',250)
      table.string('description',250)
      table.string('phone',20)
      table.string('open_time',50)
      table.string('open_description',255)
      table.string('adress',255)
      table.string('mail',255)
      table.string('twitter',255)
      table.string('facebook',255)
      table.string('instagram',255)
      table.string('youtube',255)
      table.string('logo',255)
      table.timestamps()
    })
  }

  down () {
    this.drop('ayarlars')
  }
}

module.exports = AyarlarSchema
