-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2016 a las 23:18:48
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumibles`
--

CREATE TABLE IF NOT EXISTS `consumibles` (
  `id_consumibles` int(11) NOT NULL AUTO_INCREMENT,
  `articulo` varchar(50) NOT NULL,
  `marca_consumible` varchar(50) NOT NULL,
  `proveedor_consumible` varchar(50) NOT NULL,
  `codigo_consumible` int(4) NOT NULL,
  `fecha_consumible` date NOT NULL,
  `cant_consumible` int(11) NOT NULL,
  `precio_unit_consumible` float NOT NULL,
  `total_consumible` float NOT NULL,
  PRIMARY KEY (`id_consumibles`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `consumibles`
--

INSERT INTO `consumibles` (`id_consumibles`, `articulo`, `marca_consumible`, `proveedor_consumible`, `codigo_consumible`, `fecha_consumible`, `cant_consumible`, `precio_unit_consumible`, `total_consumible`) VALUES
(5, 'Resma Carta', 'HP', 'CompuMall', 5521, '2016-05-12', 1, 5600, 5600);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE IF NOT EXISTS `equipos` (
  `id_equipos` int(11) NOT NULL AUTO_INCREMENT,
  `equipo` varchar(50) NOT NULL,
  `modelo_equipo` varchar(50) NOT NULL,
  `marca_equipo` varchar(50) NOT NULL,
  `proveedor_equipo` varchar(50) NOT NULL,
  `fecha_equipo` date NOT NULL,
  `cant_equipo` int(11) NOT NULL,
  `precio_unit_equipo` float NOT NULL,
  `total_equipo` float NOT NULL,
  PRIMARY KEY (`id_equipos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipos`, `equipo`, `modelo_equipo`, `marca_equipo`, `proveedor_equipo`, `fecha_equipo`, `cant_equipo`, `precio_unit_equipo`, `total_equipo`) VALUES
(16, 'Laptop', 'P2400', 'VIT', 'Venezuela Productiva', '2013-08-16', 1, 6550.5, 6550.5),
(17, 'Laptop ', 'Thinkpad Edge', 'Lenovo', 'Vivace', '2016-05-13', 1, 50000, 50000),
(18, 'Laptop', 'SL400', 'HP', 'Amazon', '2010-08-08', 1, 18000, 18000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partes`
--

CREATE TABLE IF NOT EXISTS `partes` (
  `id_partes` int(11) NOT NULL AUTO_INCREMENT,
  `periferico` varchar(50) NOT NULL,
  `modelo_parte` varchar(50) NOT NULL,
  `marca_parte` varchar(50) NOT NULL,
  `proveedor_parte` varchar(50) NOT NULL,
  `fecha_parte` date NOT NULL,
  `cant_parte` int(11) NOT NULL,
  `precio_unit_parte` float NOT NULL,
  `total_parte` float NOT NULL,
  PRIMARY KEY (`id_partes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `contrasena` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `empleados` int(11) NOT NULL,
  `tiempo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `contrasena`, `empleados`, `tiempo`) VALUES
(16, 'Ulises Vargas', 'texanico@gmail.com', '12345', 20, 2),
(18, 'Monica Del Rio', 'monica@gmail.com', '12345', 50, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
