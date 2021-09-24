var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', {tittle: 'express'});
});
  
router.post('/', async (req,res,next)=> {

  var nombre = req.body.nombre;
  var apellido = req.body.apelido;
  var email = req.body.email;
  var telefono = req.body.telefono;
  var mensaje = req.body.mensaje;

  console.log(req.body);

  var obj = {
    to: 'dariorivera1538@gmail.com',
    subject: 'contacto web',
    html: nombre + "se contactó a trave de la web y quiere mas info a este correo: "+email+ ". <br> Ademas, hizo este comentario: "+mensaje+ ". <br> Su tel es: "+telefno
  }

  var transport= nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    }
  });

  var info = await transport.sendMail(obj);

  res.render('contacto', {
    message: 'mensaje enviado correctamente'
  });

{{message}}



