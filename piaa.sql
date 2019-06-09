-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `piaamauri`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `Cliente_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellido_P` varchar(30) NOT NULL,
  `Apellido_M` varchar(30) DEFAULT NULL,
  `Estatus` varchar(30) DEFAULT NULL,
  `Diereccion` text NOT NULL,
  `Telefono` bigint(10) NOT NULL,
  PRIMARY KEY (`Cliente_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`Cliente_id`, `Nombre`, `Apellido_P`, `Apellido_M`, `Estatus`, `Diereccion`, `Telefono`) VALUES
(1, 'Abraham', 'Cueto', 'Morales', 'Mamalon', 'Central 315,Santa Clara,67300 Santiago, N.L.', 8115368687),
(2, 'Amauri Missael', 'Rodriguez', 'Plata', '2/3', 'No me la se', 8114857665),
(3, 'gugy', 'gyug', 'gyg', 'gygu', 'gyguy', 8115657823),
(4, 'alan', 'cuellar', 'rios', NULL, 'no se', 8765567),
(5, 'aa', 'aa', 'aa', NULL, 'dd', 9876543),
(6, 'a', 'a', 'a', NULL, 'no se', 8152646754),
(7, 'Amauri', 'Rodriguez', 'plata', NULL, 'jardines de la Bocas', 8114857665),
(8, 'hik', 'hik', 'hku', NULL, 'ukhhuk', 9765);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `Empleado_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(30) NOT NULL,
  `Apellido_P` varchar(30) NOT NULL,
  `Apellido_M` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Empleado_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Empleado_id`, `Nombre`, `Apellido_P`, `Apellido_M`) VALUES
(1, 'Melissa Lisette', 'Guzmán', 'Sánchez'),
(2, 'Jaime Humberto', 'García', 'Gaitán'),
(3, 'Monserrat', 'Rodriguez', 'Regino'),
(5, 'Milton Alfonso', 'Gomez', 'Gonzalez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE IF NOT EXISTS `habitacion` (
  `Habitacion_id` int(11) NOT NULL,
  `Hotel` varchar(40) NOT NULL,
  `Tipo_Habitacion` varchar(20) NOT NULL,
  `Num_Habitacion` int(11) NOT NULL,
  `Num_Cuartos` int(11) NOT NULL,
  PRIMARY KEY (`Habitacion_id`),
  KEY `Hotel_id` (`Hotel`),
  KEY `id_Tipo_Habitacion` (`Tipo_Habitacion`),
  KEY `Hotel_id_2` (`Hotel`),
  KEY `id_Tipo_Habitacion_2` (`Tipo_Habitacion`),
  KEY `Num_Cuartos` (`Num_Cuartos`),
  KEY `Tipo_Habitacion` (`Tipo_Habitacion`),
  KEY `Num_Cuartos_2` (`Num_Cuartos`),
  KEY `Hotel` (`Hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`Habitacion_id`, `Hotel`, `Tipo_Habitacion`, `Num_Habitacion`, `Num_Cuartos`) VALUES
(1, 'Hotel Safi Valle', 'Simple', 1, 4),
(2, 'Hotel Safi Valle', 'Simple', 2, 4),
(4, 'Hotel Safi Valle', 'Simple', 5, 4),
(5, 'Hotel Safi Valle', 'Doble', 6, 5),
(6, 'Hotel Safi Valle', 'Doble', 7, 5),
(7, 'Hotel Safi Valle', 'Doble', 8, 5),
(8, 'Hotel Safi Valle', 'suite', 9, 7),
(9, 'Krystal Cancun Hotel & Resort', 'Simple', 1, 5),
(10, 'Krystal Cancun Hotel & Resort', 'Simple', 2, 5),
(11, 'Krystal Cancun Hotel & Resort', 'Simple', 3, 5),
(12, 'Krystal Cancun Hotel & Resort', 'Simple', 4, 5),
(13, 'Krystal Cancun Hotel & Resort', 'Doble', 5, 6),
(14, 'Krystal Cancun Hotel & Resort', 'Doble', 6, 6),
(15, 'Krystal Cancun Hotel & Resort', 'suite', 7, 8),
(16, 'Krystal Cancun Hotel & Resort', 'suite', 8, 8),
(17, 'LAS ALCOBAS', 'Simple', 1, 5),
(18, 'LAS ALCOBAS', 'Simple', 2, 5),
(19, 'LAS ALCOBAS', 'Simple', 3, 5),
(20, 'LAS ALCOBAS', 'Simple', 4, 5),
(21, 'LAS ALCOBAS', 'Simple', 5, 6),
(22, 'LAS ALCOBAS', 'Doble', 6, 6),
(23, 'LAS ALCOBAS', 'Doble', 7, 6),
(24, 'LAS ALCOBAS', 'Doble', 8, 6),
(25, 'LAS ALCOBAS', 'suite', 9, 8),
(26, 'LAS ALCOBAS', 'suite', 10, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones_ocupadas`
--

CREATE TABLE IF NOT EXISTS `habitaciones_ocupadas` (
  `Habitaciones_Ocupadas_id` int(11) NOT NULL AUTO_INCREMENT,
  `Habitacion_id` int(11) NOT NULL,
  `Hotel` varchar(30) NOT NULL,
  `Habitacion` int(11) NOT NULL,
  `Tipo_Habitacion` varchar(30) NOT NULL,
  `Num_Cuartos` int(11) NOT NULL,
  PRIMARY KEY (`Habitaciones_Ocupadas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `Hotel_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL,
  `Direccion` text NOT NULL,
  `Encargado` varchar(50) NOT NULL,
  PRIMARY KEY (`Hotel_id`),
  KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `hotel`
--

INSERT INTO `hotel` (`Hotel_id`, `Nombre`, `Nacionalidad`, `Direccion`, `Encargado`) VALUES
(1, 'LAS ALCOBAS', 'Mexicana', 'Av. Pdte. Masaryk 390, Polanco, Polanco III Secc, 11560 Ciudad de México, CDMX', 'Alejandro Moya Salazar'),
(2, 'Krystal Cancun Hotel & Resort', 'Mexicana', 'Blvd. Kukulcan Km 9, Punta Cancun, Zona Hotelera, 77500 Cancún, Q.R.', 'Abraham Cueto Morales'),
(3, 'Hotel Safi Valle', 'Mexicana', 'Av. Diego Rivera 555, Valle Oriente, 66260 San Pedro Garza García, N.L.', 'Mauricio Salazar Dias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacion`
--

CREATE TABLE IF NOT EXISTS `reservacion` (
  `Recervacion_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente_id` int(11) NOT NULL,
  `Hotel` varchar(45) NOT NULL,
  `Numero_Cuarto` int(11) NOT NULL,
  `Tipo_Habitacion` varchar(30) NOT NULL,
  `Fecha_Entrada` date NOT NULL,
  `Fecha_Salida` date NOT NULL,
  PRIMARY KEY (`Recervacion_id`),
  KEY `Cliente_id` (`Cliente_id`),
  KEY `id_Tipo_Habitacion` (`Tipo_Habitacion`),
  KEY `Hotel` (`Hotel`),
  KEY `Hotel_2` (`Hotel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_habitacion`
--

CREATE TABLE IF NOT EXISTS `tipo_habitacion` (
  `id_Tipo_Habitacion` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id_Tipo_Habitacion`),
  KEY `Nombre` (`Nombre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tipo_habitacion`
--

INSERT INTO `tipo_habitacion` (`id_Tipo_Habitacion`, `Nombre`) VALUES
(2, 'Doble'),
(1, 'Simple'),
(3, 'suite');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `Usuario_id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Tipo_Usuario` varchar(30) NOT NULL,
  PRIMARY KEY (`Usuario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Usuario_id`, `Nombre`, `Password`, `Tipo_Usuario`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin'),
(2, 'amauri', '81dc9bdb52d04dc20036dbd8313ed055', 'Usuario'),
(3, 'cwds', 'd41d8cd98f00b204e9800998ecf8427e', 'Usuario'),
(4, 'Alan', '827ccb0eea8a706c4c34a16891f84e7b', 'Usuario'),
(5, 'popo', '3b2285b348e95774cb556cb36e583106', 'Usuario'),
(6, 'csc', 'c7549417a3a61d38c5d9e40b5e70d59a', 'Usuario'),
(7, 'missael', '827ccb0eea8a706c4c34a16891f84e7b', 'Usuario'),
(8, 'iihkh', 'c7549417a3a61d38c5d9e40b5e70d59a', 'Usuario');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `habitacion_ibfk_1` FOREIGN KEY (`Hotel`) REFERENCES `hotel` (`Nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `habitacion_ibfk_2` FOREIGN KEY (`Tipo_Habitacion`) REFERENCES `tipo_habitacion` (`Nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD CONSTRAINT `reservacion_ibfk_4` FOREIGN KEY (`Hotel`) REFERENCES `hotel` (`Nombre`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservacion_ibfk_1` FOREIGN KEY (`Cliente_id`) REFERENCES `cliente` (`Cliente_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservacion_ibfk_2` FOREIGN KEY (`Tipo_Habitacion`) REFERENCES `tipo_habitacion` (`Nombre`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
