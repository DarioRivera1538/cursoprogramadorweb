-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 20-11-2021 a las 15:06:44
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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `img_id`, `cuerpo`) VALUES
(3, 'Antonela Roccuzzo mostró qué hace en París \r\n', 'La esposa del delantero se propuso una nueva meta relacionada a su vida en Francia y contó que está entusiasmada por los avances', NULL, 'A principios de agosto toda la familia de Lionel Messi sufrió un abrupto cambio de vida cuando el delantero no revonó su contrato con el club de Barcelona y se mudó a Francia para sumarse al París Saint Germain. Después de una emotiva conferencia de prensa donde se despidieron de una etapa que había perdurado por más de una década y media, dieron vuelta la página y se concentraron en su nueva vida en la capital francesa. Mientras el astro rosarino entrena en la Argentina para los próximos partidos de las Eliminatorias Sudamericanas del Mundial Qatar 2022, Antonela Roccuzzo se animó a encarar otro desafío para sentirse más cómoda en “la ciudad de la luz”.\r\n\r\nEn tres meses buscaron una nueva casa, inscribieron a Thiago, Mateo y Ciro en una prestigiosa escuela, y disfrutaron de salidas románticas con el paisaje de la Torre Eiffel de fondo. Sin embargo, la barrera más grande para todos fue el idioma, ya que los niños hablan español, e incluso se habían acostumbrado al catalán, pero no estaban familiarizados con el francés. Ahora que ya culminaron los cambios más grandes, la joven rosarina le contó a sus seguidores que tomó una decisión para integrarse aún más a la vida parisina: “Este año, con la mudanza a París y el inicio del nuevo colegio, necesitaba encontrar un sistema fácil y cómodo para reforzar el curso escolar de los peques”.'),
(31, 'Actividad modif.', 'actividad modif', '', 'act modif'),
(36, 'last new', 'last new lorem kASLKJalkjaLKJSalkj', NULL, 'last new'),
(8, 'Pompeya Bar: la mejor hamburguesa de Córdoba de 2021', 'Conocé cómo es la “Cheese Bacon”, la hamburguesa campeona de este año.', NULL, 'Con una década en la escena gastronómica cordobesa, este año Pompeya Bar se consagró campeón en el torneo de delivery que eligió a la mejor hamburguesa de la ciudad.\r\n\r\nSu “Cheese Bacon” deslumbró los paladares del jurado de la final, compuesto por profesionales de la gastronomía, y finalmente se quedó con el primer lugar.'),
(9, 'The Barbeer: barbería, cervecería y buenas hamburguesas', 'Con dos sucursales en Nueva Córdoba, su propuesta marcó tendencia en los bares cordobeses.', NULL, 'The Barbeer es un original concepto que, además de ofrecer más de 18 variedades de cervezas artesanales tiradas, incorpora al igual que sus antecesoras europeas una original barbería respondiendo al boom en las principales metrópolis del mundo.\r\n\r\nCuenta con dos sucursales en Nueva Córdoba, la de Irigoyen que abrió sus puertas en octubre de 2016, y la de Chacabuco que abrió en el mismo mes pero de 2017. Ambas con una típica arquitectura londinense que rememora a los hipsters.\r\n\r\nLa firma propone “The Barbeer Experience” que consiste en ofrecer un espacio de reunión para un público cosmopolita, que necesita un momento de distensión, disfrutando productos artesanales de calidad en un ambiente informal y divertido con música de todas las épocas, especialmente rock internacional.'),
(18, 'Prueba carga novedades', 'Misma prueba ', NULL, 'Prueba');

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`) VALUES
(1, 'dario', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
