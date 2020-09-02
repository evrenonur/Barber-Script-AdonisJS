'use strict'

const anasayfaModel = use('App/Models/Anasayfa')
const fiyatlarModel = use('App/Models/Fiyatlar')
const referanslarModel = use('App/Models/Referanslar')
const ekibimizModel = use('App/Models/Ekibimiz')
const ayarlarModel = use('App/Models/Ayarlar')
class HomeController {

    async index({view}){
      const anasayfa = await anasayfaModel.find(1);
      const fiyatlar = await fiyatlarModel.all();
      const referanslar = await referanslarModel.all();
      const ekibimiz = await ekibimizModel.all();
      const ayarlar = await ayarlarModel.find(1);
      const data = {
        anasayfa:anasayfa.toJSON(),
        fiyatlar:fiyatlar.toJSON(),
        referanslar:referanslar.toJSON(),
        ekibimiz:ekibimiz.toJSON(),
        ayarlar:ayarlar.toJSON()
      }

        return view.render('home.pages.home',data);
    }

}

module.exports = HomeController
