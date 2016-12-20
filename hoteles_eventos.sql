-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-11-2016 a las 17:42:26
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hoteles_eventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_empresa` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `estaActivo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_empresa`, `id_persona`, `id_usuario`, `estaActivo`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id_calificacion` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_ejecutivo` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `id_hotel` int(11) DEFAULT NULL,
  `id_centro_eventos` int(11) DEFAULT NULL,
  `id_habitacion` int(11) DEFAULT NULL,
  `id_espacio` int(11) DEFAULT NULL,
  `comentario` varchar(140) NOT NULL,
  `cantidad_estrellas` int(1) NOT NULL,
  `fecha_comentario` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centroeventos`
--

CREATE TABLE `centroeventos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `id_sucursal` int(11) DEFAULT NULL,
  `estaActivo` int(1) NOT NULL,
  `ruta_imagen` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_persona` int(11) NOT NULL,
  `rut_persona` varchar(19) NOT NULL,
  `numeroTarjeta` int(11) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `ciudad` varchar(20) DEFAULT NULL,
  `comuna` varchar(20) DEFAULT NULL,
  `calleNumero` varchar(30) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `estaActivo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_persona`, `rut_persona`, `numeroTarjeta`, `sexo`, `ciudad`, `comuna`, `calleNumero`, `id_usuario`, `estaActivo`) VALUES
(2, '125005330', 3234343, 'Hombre', 'Santiago', 'Puente Alto', 'San Carlos 3243', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ejecutivo`
--

CREATE TABLE `ejecutivo` (
  `id_persona` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `estaActivo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ejecutivo`
--

INSERT INTO `ejecutivo` (`id_persona`, `id_empresa`, `id_usuario`, `estaActivo`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `rut` varchar(15) NOT NULL,
  `directorio` varchar(60) NOT NULL,
  `estaActivo` int(1) NOT NULL,
  `ruta_imagen` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `rut`, `directorio`, `estaActivo`, `ruta_imagen`) VALUES
(1, 'empresa A', '12300300-1', 'localhost/empresa A', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacio`
--

CREATE TABLE `espacio` (
  `id` int(11) NOT NULL,
  `metrosCuadrados` int(11) NOT NULL,
  `tienePiscina` tinyint(1) NOT NULL,
  `cantMaximaPersonas` int(11) NOT NULL,
  `precioHora` int(11) NOT NULL,
  `tieneEscenario` tinyint(1) NOT NULL,
  `accesoDiscapacitados` tinyint(1) NOT NULL,
  `estaActivo` int(1) NOT NULL,
  `ruta_imagen` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `numero` int(11) NOT NULL,
  `metrosCuadrados` int(11) NOT NULL,
  `precioPorDia` int(11) NOT NULL,
  `precioPorNoche` int(11) NOT NULL,
  `cantidadMaximaPersonas` int(11) NOT NULL,
  `estaActivo` int(1) NOT NULL,
  `ruta_imagen` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`numero`, `metrosCuadrados`, `precioPorDia`, `precioPorNoche`, `cantidadMaximaPersonas`, `estaActivo`, `ruta_imagen`) VALUES
(17, 90, 444, 555, 3000, 1, 'folder\\img\\Usuarios\\1-csalgado\\tiger.jpg'),
(20, 20, 20000, 5000, 6, 1, 'folder\\img\\Usuarios\\1-csalgado\\city.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `cantidadEstrellas` int(11) DEFAULT NULL,
  `id_sucursal` int(11) NOT NULL,
  `estaActivo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `rut` varchar(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `estaActivo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `rut`, `nombre`, `apellido`, `fechaNacimiento`, `telefono`, `correo`, `estaActivo`) VALUES
(1, '19220903', 'Cristopher', 'Salgado', '1995-12-06', 3244435, 'csalgadolizana@gmail', 1),
(2, '125005330', 'Daniel', 'Perez', '1994-03-30', 324234344, 'danie@gmail.com', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacion`
--

CREATE TABLE `reservacion` (
  `id_reservacion` int(11) NOT NULL,
  `rut_cliente` int(11) NOT NULL,
  `id_ejecutivo` int(11) DEFAULT NULL,
  `numero_habitacion` int(11) DEFAULT NULL,
  `id_espacio` int(11) DEFAULT NULL,
  `fecha_reserva` date DEFAULT NULL,
  `hora_reserva` time DEFAULT NULL,
  `horas_reservadas` int(11) DEFAULT NULL,
  `esta_aprobada` tinyint(1) DEFAULT NULL,
  `precio_total` int(11) DEFAULT NULL,
  `esta_pagado` tinyint(1) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `ruta_imagen` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`codigo`, `nombre`, `direccion`, `telefono`, `id_empresa`, `ruta_imagen`) VALUES
(49, 'Hola Mundo', 'mi casa', 6666666, 1, 'folder\\img\\Usuarios\\1-csalgado\\2014032it.jpg'),
(53, 'suc', 'direccion 1', 94435345, 1, 'folder\\img\\Usuarios\\1-csalgado\\flowers.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `username`, `password`, `estado`) VALUES
(1, 'csalgado', 'csalgado', '1'),
(2, 'cliente01', 'cliente01', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD KEY `id_ejecutivo` (`id_ejecutivo`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_sucursal` (`id_sucursal`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_centro_eventos` (`id_centro_eventos`),
  ADD KEY `id_habitacion` (`id_habitacion`),
  ADD KEY `id_espacio` (`id_espacio`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `centroeventos`
--
ALTER TABLE `centroeventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_empresa` (`id_sucursal`) USING BTREE;

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_persona`),
  ADD UNIQUE KEY `rut_persona` (`rut_persona`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `ejecutivo`
--
ALTER TABLE `ejecutivo`
  ADD PRIMARY KEY (`id_persona`),
  ADD KEY `id_empresa` (`id_empresa`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `espacio`
--
ALTER TABLE `espacio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`numero`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sucursal` (`id_sucursal`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rut` (`rut`);

--
-- Indices de la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD PRIMARY KEY (`id_reservacion`),
  ADD UNIQUE KEY `numero_habitacion` (`numero_habitacion`),
  ADD UNIQUE KEY `id_espacio` (`id_espacio`),
  ADD KEY `rut_cliente` (`rut_cliente`),
  ADD KEY `id_ejecutivo` (`id_ejecutivo`),
  ADD KEY `rut_cliente_2` (`rut_cliente`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id_calificacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `centroeventos`
--
ALTER TABLE `centroeventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `reservacion`
--
ALTER TABLE `reservacion`
  MODIFY `id_reservacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `administrador_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `administrador_ibfk_3` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `calificacion_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacion_ibfk_2` FOREIGN KEY (`id_ejecutivo`) REFERENCES `ejecutivo` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacion_ibfk_3` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacion_ibfk_4` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacion_ibfk_5` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacion_ibfk_6` FOREIGN KEY (`id_centro_eventos`) REFERENCES `centroeventos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacion_ibfk_7` FOREIGN KEY (`id_habitacion`) REFERENCES `habitacion` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificacion_ibfk_8` FOREIGN KEY (`id_espacio`) REFERENCES `espacio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `centroeventos`
--
ALTER TABLE `centroeventos`
  ADD CONSTRAINT `centroeventos_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`rut_persona`) REFERENCES `persona` (`rut`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_3` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_4` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `ejecutivo`
--
ALTER TABLE `ejecutivo`
  ADD CONSTRAINT `ejecutivo_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ejecutivo_ibfk_2` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ejecutivo_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`codigo`);

--
-- Filtros para la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD CONSTRAINT `reservacion_ibfk_1` FOREIGN KEY (`id_ejecutivo`) REFERENCES `ejecutivo` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservacion_ibfk_2` FOREIGN KEY (`numero_habitacion`) REFERENCES `habitacion` (`numero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservacion_ibfk_3` FOREIGN KEY (`id_espacio`) REFERENCES `espacio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservacion_ibfk_4` FOREIGN KEY (`rut_cliente`) REFERENCES `cliente` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
