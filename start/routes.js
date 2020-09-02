'use strict'

const { route } = require('@adonisjs/framework/src/Route/Manager');
/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.get('/','Home/Home.index').as("home.index");

Route.get('admin/login','Admin/AuthController.index').as('admin.login').middleware("guest");
Route.get('admin/admin/login','Admin/AuthController.index').as('admin.login').middleware("guest");
Route.post('admin/login','Admin/AuthController.login').as('admin.login').middleware("guest");

Route.group(()=>{
  Route.get('/','Admin/HomeController.index').as('admin.home');
}).prefix("/admin").middleware("auth")

Route.group(()=>{
  Route.get('/anasayfa','Admin/SayfalarController.anasayfa').as('admin.sayfalar.anasayfa')
  Route.post('/anasayfa_update','Admin/SayfalarController.anasayfa_update').as('admin.sayfalar.anasayfa_update')
  Route.post('/hakkimizda_update','Admin/SayfalarController.hakkimizda_update').as('admin.sayfalar.hakkimizda_update')
  Route.get('/fiyatlar','Admin/SayfalarController.fiyatlar').as('admin.sayfalar.fiyatlar')
  Route.post('/fiyatlar_insert','Admin/SayfalarController.fiyatlar_insert').as('admin.sayfalar.fiyatlar_insert')
  Route.get('/fiyatlar_delete/:id','Admin/SayfalarController.fiyatlar_delete').as('admin.sayfalar.fiyatlar_delete')
  Route.get('/referanslar','Admin/SayfalarController.referanslar').as('admin.sayfalar.referanslar')
  Route.post('/referanslar_insert','Admin/SayfalarController.referanslar_insert').as('admin.sayfalar.referanslar_insert')
  Route.get('/referanslar_delete/:id','Admin/SayfalarController.referanslar_delete').as('admin.sayfalar.referanslar_delete')
  Route.get('/ekibimiz','Admin/SayfalarController.ekibimiz').as('admin.sayfalar.ekibimiz')
  Route.post('/ekibimiz_insert','Admin/SayfalarController.ekibimiz_insert').as('admin.sayfalar.ekibimiz_insert')
  Route.get('/ekibimiz_delete/:id','Admin/SayfalarController.ekibimiz_delete').as('admin.sayfalar.ekibimiz_delete')
  Route.get('/ayarlar','Admin/SayfalarController.ayarlar').as('admin.sayfalar.ayarlar')
  Route.post('/ayarlar_update','Admin/SayfalarController.ayarlar_update').as('admin.sayfalar.ayarlar_update')

}).prefix('/admin/sayfalar/')

Route.get("admin/logout",async ({auth,session,response})=>{
  await auth.logout();
  return response.redirect("admin/login")
}).as('admin.logout')

Route.get("*",({view})=>{
  return view.render("404")
})






