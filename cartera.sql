-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2015 a las 22:33:42
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cartera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deudores`
--

CREATE TABLE IF NOT EXISTS `deudores` (
`id` bigint(20) NOT NULL,
  `barriodeudor` varchar(100) DEFAULT NULL,
  `ceduladeudor` varchar(20) DEFAULT NULL,
  `celulardeudor` varchar(50) DEFAULT NULL,
  `ciudaddeudor` varchar(100) DEFAULT NULL,
  `direcciondeudor` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `nombredeudor` varchar(150) DEFAULT NULL,
  `telefonodeudor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `deudores`
--

INSERT INTO `deudores` (`id`, `barriodeudor`, `ceduladeudor`, `celulardeudor`, `ciudaddeudor`, `direcciondeudor`, `eliminado`, `nombredeudor`, `telefonodeudor`) VALUES
(1, 'esperanza', '1234', '848383', 'barraqnuilla', 'calle m4', 0, 'edgar', '34958'),
(2, 'prado', '12304949', '3045678', 'barraqnuilla', 'palmar', 0, 'juan tejeda', '3456789'),
(3, 'porvenir', '12309', '34503', 'barraqnuilla', 'carrera 56# 56 -90', 0, 'Maria', '34560'),
(5, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL),
(10, 'PARAISO', '12344', '34345', 'barraqnuilla', 'PARAISO', 0, 'Daniel Gonzalez', '3456'),
(11, 'BOQUILLA', '1223448238', '300898765', 'Cartagena', 'cALLE 45-89.09', 0, 'Juan Valencia', '4567890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestiones`
--

CREATE TABLE IF NOT EXISTS `gestiones` (
`id` bigint(20) NOT NULL,
  `comentario_gestion` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `fecha_gestion` datetime DEFAULT NULL,
  `gestion` int(11) NOT NULL,
  `obligacion_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obligaciones`
--

CREATE TABLE IF NOT EXISTS `obligaciones` (
`id` bigint(20) NOT NULL,
  `deudor_id` bigint(20) NOT NULL,
  `diassobregiro` int(11) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `estado` bigint(20) NOT NULL,
  `fecha_obligacion` datetime DEFAULT NULL,
  `interes_corriente` float NOT NULL,
  `interes_mora` float NOT NULL,
  `numero_obligacion` int(11) NOT NULL,
  `saldo` float NOT NULL,
  `tipo_obligacion` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `obligaciones`
--

INSERT INTO `obligaciones` (`id`, `deudor_id`, `diassobregiro`, `eliminado`, `estado`, `fecha_obligacion`, `interes_corriente`, `interes_mora`, `numero_obligacion`, `saldo`, `tipo_obligacion`) VALUES
(1, 11, 30, 1, 1, '2015-04-11 00:00:00', 3000, 2000, 93828, 600000, 1),
(2, 11, 30, 1, 1, '2015-04-11 00:00:00', 3000, 2000, 93828, 600000, 1),
(3, 1, 60, 0, 1, '2105-05-10 00:00:00', 400, 450, 23423, 1000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
`id` bigint(20) NOT NULL,
  `cls` varchar(255) NOT NULL,
  `controlador` varchar(200) DEFAULT NULL,
  `desc_opcion` varchar(200) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_opcion` varchar(1) NOT NULL,
  `id_padre` bigint(20) DEFAULT NULL,
  `id_tipo_opcion` varchar(10) DEFAULT NULL,
  `nombre_opcion` varchar(100) NOT NULL,
  `orden` varchar(3) DEFAULT NULL,
  `tiene_hijos` tinyint(4) NOT NULL,
  `url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE IF NOT EXISTS `operaciones` (
`id` bigint(20) NOT NULL,
  `acciones` varchar(1000) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_operacion` varchar(1) NOT NULL,
  `nombre_operacion` varchar(100) NOT NULL,
  `opcion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
`id` bigint(20) NOT NULL,
  `atributo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado_parametro` varchar(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `atributo`, `descripcion`, `estado_parametro`) VALUES
(1, 'sobregiros', 'aqui se pondran si son de mas de 90 dias el sobregiro', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` bigint(20) NOT NULL,
  `desc_rol` varchar(200) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol` varchar(1) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_usuarios`
--

CREATE TABLE IF NOT EXISTS `roles_usuarios` (
`id` bigint(20) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol_usuario` varchar(1) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_opcion_operacion`
--

CREATE TABLE IF NOT EXISTS `rol_opcion_operacion` (
`id` bigint(20) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol_opcion_operacion` varchar(1) NOT NULL,
  `opcion_id` bigint(20) NOT NULL,
  `operacion_id` bigint(20) NOT NULL,
  `rol_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` bigint(20) NOT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `id_estado_usuario` varchar(10) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `usuario` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `contrasena`, `eliminado`, `id_estado_usuario`, `nombre`, `usuario`) VALUES
(1, 'colombia', 0, '1', 'Edgar', 'epaez2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_parametros`
--

CREATE TABLE IF NOT EXISTS `valor_parametros` (
`id` bigint(20) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado_valor_parametro` varchar(1) DEFAULT NULL,
  `orden` varchar(3) DEFAULT NULL,
  `parametros_id` bigint(20) NOT NULL,
  `valor` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `valor_parametros`
--

INSERT INTO `valor_parametros` (`id`, `descripcion`, `estado_valor_parametro`, `orden`, `parametros_id`, `valor`) VALUES
(1, 'si se demora mas el cliente en pagar la deuda', '1', '1', 1, '100-120 dias');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `deudores`
--
ALTER TABLE `deudores`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gestiones`
--
ALTER TABLE `gestiones`
 ADD PRIMARY KEY (`id`), ADD KEY `FK32B9E65734C8C03` (`obligacion_id`);

--
-- Indices de la tabla `obligaciones`
--
ALTER TABLE `obligaciones`
 ADD PRIMARY KEY (`id`), ADD KEY `FKBA616C1D22BEAA03` (`deudor_id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
 ADD PRIMARY KEY (`id`), ADD KEY `FKEAB8C1C65C0AD123` (`opcion_id`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
 ADD PRIMARY KEY (`id`), ADD KEY `FKC9AC5A47B19BCAD1` (`rol_id`), ADD KEY `FKC9AC5A478AD5C6F1` (`usuario_id`);

--
-- Indices de la tabla `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
 ADD PRIMARY KEY (`id`), ADD KEY `FKD4E68CAFB19BCAD1` (`rol_id`), ADD KEY `FKD4E68CAFC357A4F1` (`operacion_id`), ADD KEY `FKD4E68CAF5C0AD123` (`opcion_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
 ADD PRIMARY KEY (`id`), ADD KEY `FK831254B567D90890` (`parametros_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deudores`
--
ALTER TABLE `deudores`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `gestiones`
--
ALTER TABLE `gestiones`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `obligaciones`
--
ALTER TABLE `obligaciones`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `parametros`
--
ALTER TABLE `parametros`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gestiones`
--
ALTER TABLE `gestiones`
ADD CONSTRAINT `FK32B9E65734C8C03` FOREIGN KEY (`obligacion_id`) REFERENCES `obligaciones` (`id`);

--
-- Filtros para la tabla `obligaciones`
--
ALTER TABLE `obligaciones`
ADD CONSTRAINT `FKBA616C1D22BEAA03` FOREIGN KEY (`deudor_id`) REFERENCES `deudores` (`id`);

--
-- Filtros para la tabla `operaciones`
--
ALTER TABLE `operaciones`
ADD CONSTRAINT `FKEAB8C1C65C0AD123` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`);

--
-- Filtros para la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
ADD CONSTRAINT `FKC9AC5A478AD5C6F1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
ADD CONSTRAINT `FKC9AC5A47B19BCAD1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
ADD CONSTRAINT `FKD4E68CAF5C0AD123` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`),
ADD CONSTRAINT `FKD4E68CAFB19BCAD1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
ADD CONSTRAINT `FKD4E68CAFC357A4F1` FOREIGN KEY (`operacion_id`) REFERENCES `operaciones` (`id`);

--
-- Filtros para la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
ADD CONSTRAINT `FK831254B567D90890` FOREIGN KEY (`parametros_id`) REFERENCES `parametros` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
