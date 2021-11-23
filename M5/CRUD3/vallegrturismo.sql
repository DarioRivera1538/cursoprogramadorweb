-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-11-2021 a las 15:58:50
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vallegrturismo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `img_id`, `cuerpo`) VALUES
(45, 'Rafting', 'Rafting en el Atuel', 'nweryqp4ns4wzj8zbsqf', 'Con nosotros te divertis seguro!!  Animate a una aventura diferente, para grandes y chicos, miedosos o extremos, no importa si sos un adicto a las redes sociales o el rey del sillón y la tv. Esto es para vos, animate y viví una  experiencia inolvidable'),
(47, 'Rappel', 'Adrenalina en la roca', 'sudacmjdaaolb8pra809', 'Descenso de paredes con cuerdas. Contamos con dos excelentes alternativas completamente equipadas en medio de atractivos cañadones naturales. Rappel de más de 30 metros de altura. (Existen alternativas de menor altura para niños).'),
(48, 'Cool River', 'La fuerza del río.', 'sg8eoe3uq8gunra1hqvn', 'Querés sentir la fuerza del rio realmente?  Esta actividad es la mas personalizada y divertida de todas, donde vas a estar cuidado por nuestros instructores y poder conducir un bote individual que pataleando vas a afrontar curvas, olas, remolinos y mucho mas.  Consejo… cerrá la boca, abrí los ojos y agarrate fuerte!!!'),
(3, 'Tirolesa', 'Las mejores vistas!', 'qqw20zmbqpypzhzu3zag', 'Tirolesa es pasar de un cerro a otro por medio de una cuerda o cable. Canopy es la suma de tirolesas. Nuestro circuito dispone de 3 tramos recorriendo 120 mts, 110 mts y 70 mts de longitud'),
(31, 'Trekking', 'Conoce el cañon del atuel por dentro', 'sutiz5n71nxekbs3cejy', 'Un trekking espectacular, de fácil acceso. Se ingresa en un angosto cañadón con paredes de más de 70 metros de altura, con coloridas formas y paredes con vegetación típica de la zona');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`) VALUES
(1, 'dario', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
