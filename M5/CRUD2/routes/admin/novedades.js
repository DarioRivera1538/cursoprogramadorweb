var express = require('express');
var router = express.Router();
var novedadesModel = require('./../../models/novedadesModel');


/* GET home page. */
router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades()

  res.render('admin/novedades', {
    layout: 'admin/layout',
    usuario: req.session.nombre,
    novedades
  });
});

/*Para eliminar una novedad*/ 
router.get ('/eliminar/:id', async(req, res, next)=>{
  var id = req.params.id;
  await novedadesModel.deleteNovedadesById(id);
  res.redirect('/admin/novedades')

}); //cierra get de eliminar

/*muestre el form para agregar*/

router.get('/agregar', (req, res, next)=>{
  res.render('admin/agregar', {
    layout: 'admin/layout'
  })//cierra render
});// cierra get

router.post('/agregar', async (req, res, next)=>{
  try {
    if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
      await novedadesModel.insertNovedad(req.body);
      res.redirect('/admin/novedades')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true,
        message: 'Todos los campos son requeridos'
      })
    }
  } catch (error) {
    console.log(error)
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se cargo la novedad'
    }) 
  }
})

router.get('/modificar/:id', async (req, res, next)=>{
  var id = req.params.id;
  var novedad = await novedadesModel.getNovedadById(id);
  res.render('admin/modificar', {
    layout: 'admin/layout',
    novedad
  });
}); //cierro get modi


/* post para modificar novedad*/

router.post('/modificar', async (req, res,next)=>{
  try {
    //console.log(req.body.id);//para ver si trae id
    var obj = {
      titulo: req.body.titulo,
      subtitulo: req.body.subtitulo,
      cuerpo: req.body.cuerpo
    }

    console.log(obj) //para ver si trae datos
    await novedadesModel.modificarNovedadById(obj, req.body.id);
    res.redirect('/admin/novedades');
  } catch (error) {
    console.log(error)
    res.render('admin/modificar', {
      layout: 'admin/modificar',
      error: true,
      message: 'No se modifico la novedad'
    })
  }// cierro el catch
  }); //cierro el post




module.exports = router;
