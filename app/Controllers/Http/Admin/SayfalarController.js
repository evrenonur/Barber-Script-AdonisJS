'use strict'

const modelAna = use('App/Models/Anasayfa')
const Helpers = use('Helpers')
const fs = require('fs')
const fiyatModel = use('App/Models/Fiyatlar')
const referanslarModel = use('App/Models/Referanslar')
const ekibimizModel =  use('App/Models/Ekibimiz')
const ayarlarModel = use('App/Models/Ayarlar')

class SayfalarController {


  async anasayfa({view}) {
    const data = await modelAna.find(1);
    const viewData = {
      data: data.toJSON()
    }
    return view.render("admin.pages.anasayfa", viewData)
  }

  async anasayfa_update({request, response,session}) {
    const post = await modelAna.find(1);
    post.slider_baslik = request.input("slider_baslik")
    post.slider_aciklama = request.input("slider_aciklama")
    if (request.file('slider_resim')) {
      const slider_resim = request.file('slider_resim', {
        types: ['image'],
        size: '10mb'
      })
      this.delete_file(request.input("tmp_slider"))
      post.slider_resim = new Date().getTime() + '.' + slider_resim.subtype
      await slider_resim.move(Helpers.publicPath('uploads'), {
        name: post.slider_resim,
      })
    }

    const check = await post.save()
    this.flash_message(check,session)
    return response.redirect('back')
  }

  async hakkimizda_update({request, response, session}) {
    const post = await modelAna.find(1);
    post.hakkimizda_baslik = request.input("hakkimizda_baslik")
    post.hakkimizda_aciklama = request.input("hakkimizda_aciklama")
    if (request.file('hakkimizda_resim')) {
      const hakkimizda_resim = request.file('hakkimizda_resim', {
        types: ['image'],
        size: '10mb'
      })
      this.delete_file(request.input("tmp_hakkimizda"))
      post.hakkimizda_resim = new Date().getTime() + '.' + hakkimizda_resim.subtype
      await hakkimizda_resim.move(Helpers.publicPath('uploads'), {
        name: post.hakkimizda_resim,
      })
    }
    const check = await post.save()
   this.flash_message(check,session)
    return response.redirect('back')
  }

  async fiyatlar({view}){

    const post = await fiyatModel.all()
    const data = {
      data: post.toJSON()
    }
    return view.render('admin.pages.fiyatlar',data)
  }

  async fiyatlar_insert({request, response,session}) {
    const post = new fiyatModel()
    post.baslik = request.input("baslik")
    post.fiyat = request.input("fiyat")
    if (request.file('fiyat_resim')) {
      const fiyat_resim = request.file('fiyat_resim', {
        types: ['image'],
        size: '10mb'
      })
      post.fiyat_resim = new Date().getTime() + '.' + fiyat_resim.subtype
      await fiyat_resim.move(Helpers.publicPath('uploads'), {
        name: post.fiyat_resim,
      })
    }

    const check = await post.save()
    this.flash_message(check,session)
    return response.redirect('back')
  }

  async fiyatlar_delete({params,response,session}){
    const data = await fiyatModel.find(params.id)
    this.delete_file(data.fiyat_resim)
    const check = await data.delete()
    this.flash_message(check,session)
    return response.redirect('back')
  }

  async referanslar({view}){
    const referanslar = await referanslarModel.all()
    const data = {
      referanslar:referanslar.toJSON()
    }
    return view.render("admin.pages.referanslar",data)
  }

  async referanslar_insert({request,response,session}){
    const post = new referanslarModel()
    post.isim = request.input("isim")
    post.aciklama = request.input("aciklama")
    if (request.file('resim')) {
      const resim = request.file('resim', {
        types: ['image'],
        size: '10mb'
      })
      post.resim = new Date().getTime() + '.' + resim.subtype
      await resim.move(Helpers.publicPath('uploads'), {
        name: post.resim,
      })
    }

    const check = await post.save()
    this.flash_message(check,session)
    return response.redirect('back')
  }

  async referanslar_delete({params,response,session}){
    const data = await referanslarModel.find(params.id)
    this.delete_file(data.resim)
    const check = await data.delete()
    this.flash_message(check,session)
    return response.redirect('back')
  }

  async ekibimiz({view}){
    const ekibimiz = await ekibimizModel.all()
    const data = {
      ekibimiz:ekibimiz.toJSON()
    }
    return view.render("admin.pages.ekibimiz",data)
  }

  async ekibimiz_insert({request,response,session}){
    const post = new ekibimizModel()
    post.isim = request.input("isim")
    post.pozisyon = request.input("pozisyon")
    if (request.file('resim')) {
      const resim = request.file('resim', {
        types: ['image'],
        size: '10mb'
      })
      post.resim = new Date().getTime() + '.' + resim.subtype
      await resim.move(Helpers.publicPath('uploads'), {
        name: post.resim,
      })
    }

    const check = await post.save()
    this.flash_message(check,session)
    return response.redirect('back')
  }

  async ekibimiz_delete({params,response,session}){
    const data = await ekibimizModel.find(params.id)
    this.delete_file(data.resim)
    const check = await data.delete()
    this.flash_message(check,session)
    return response.redirect('back')
  }

  async ayarlar({view}){
    const ayarlar = await ayarlarModel.find(1);
    const data = {
      ayarlar:ayarlar.toJSON()
    }
    return view.render("admin.pages.ayarlar",data)
  }

  async ayarlar_update({request,response,session}){
    const post = await ayarlarModel.find(1);
    post.title = request.input("title")
    post.description = request.input("description")
    post.keyword = request.input("keyword")
    post.phone = request.input("phone")
    post.open_time = request.input("open_time")
    post.open_description = request.input("open_description")
    post.adress = request.input("adress")
    post.mail = request.input("mail")
    post.twitter = request.input("twitter")
    post.facebook = request.input("facebook")
    post.instagram = request.input("instagram")
    post.youtube = request.input("youtube")


    if (request.file('logo')) {
      const logo = request.file('logo', {
        types: ['image'],
        size: '10mb'
      })
      this.delete_file(request.input("tmp_logo"))
      post.logo = new Date().getTime() + '.' + logo.subtype
      await logo.move(Helpers.publicPath('uploads'), {
        name: post.logo,
      })
    }
    const check = await post.save()
    this.flash_message(check,session)
    return response.redirect('back')
  }

  async delete_file(filename) {
    fs.unlink("public/uploads/" + filename, (err) => {
      console.log(err);
    });
  }

  async flash_message(check,session){
    if (check){
      session.flash({
        notification: {
          type: 'success',
          message: 'İşlem Başarılı!'
        }
      })
    }else{
      session.flash({
        notification: {
          type: 'error',
          message: 'İşlem Hatalı!'
        }
      })
    }
  }


}

module.exports = SayfalarController
