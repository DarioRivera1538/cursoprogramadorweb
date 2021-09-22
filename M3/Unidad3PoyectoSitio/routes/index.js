var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

var nombre = req.body.nombre;
var apellido = req.body.apellido;
var email= req.body.email;
var telefono = req.body.telefono;
var ciudad = req.body.ciudad;
var provincia = req.body.provincia;


module.exports = router;
