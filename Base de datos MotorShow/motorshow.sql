-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2023 a las 09:30:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `motorshow`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coches`
--

CREATE TABLE `coches` (
  `IDCoches` int(11) NOT NULL,
  `Precio` int(120) NOT NULL,
  `TemaDeExposicion` varchar(120) NOT NULL,
  `IDSubastas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conferencia`
--

CREATE TABLE `conferencia` (
  `IDConferencia` int(11) NOT NULL,
  `Localidad` varchar(120) NOT NULL,
  `Horario` varchar(120) NOT NULL,
  `IDUsuario` int(11) NOT NULL,
  `IDCoches` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentador`
--

CREATE TABLE `presentador` (
  `IDPresentador` int(11) NOT NULL,
  `Nombre` varchar(120) NOT NULL,
  `IDConferencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subasta`
--

CREATE TABLE `subasta` (
  `IDSubastas` int(11) NOT NULL,
  `IDPresentador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDUsuario` int(15) NOT NULL,
  `Nombre` varchar(120) NOT NULL,
  `Apellido` varchar(40) NOT NULL,
  `DNI` varchar(30) NOT NULL,
  `CorreoElectronico` varchar(120) NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  `Socio` varchar(60) NOT NULL,
  `Contrasena` varchar(70) NOT NULL,
  `condiciones` text NOT NULL,
  `tipocoches` text NOT NULL,
  `caracmotor` text NOT NULL,
  `clasicos` text NOT NULL,
  `nuevoslanzamientos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDUsuario`, `Nombre`, `Apellido`, `DNI`, `CorreoElectronico`, `Telefono`, `Socio`, `Contrasena`, `condiciones`, `tipocoches`, `caracmotor`, `clasicos`, `nuevoslanzamientos`) VALUES
(1, 'Markel', 'gustavo', '123486784G', 'gustavo@gmail.com', '+23456453786', 'Si', '37867a7dd6165b10692f635c961288ab', 'agree_terms', 'on', 'on', 'on', 'on'),
(2, 'Aaron', 'rene', '123486786H', 'rene@gmail.com', '+23456453782', 'Si', 'f5276ad16cd0d31e161d46f98587996a', 'agree_terms', 'on', '', '', ''),
(3, 'Julen', 'Cristiano', '123486788P', 'cristiano@gmail.com', '+23456453784', 'No', '42455eab8424e43dd1a2ebacee03544a', 'agree_terms', '', 'on', 'on', 'on'),
(4, 'Jon', 'Noticiero', '123486789K', 'noticia@gmail.com', '+23456453788', 'Si', '2241a317541a513f2216c2777620ac92', 'agree_terms', '', 'on', '', 'on'),
(5, 'Eustaquia', 'Navarrete', '12348678S', 'navarrete@gmail.com', '+23456453783', 'No', '49c022204b27ab3586f0f8ea447e5f8b', 'agree_terms', '', '', '', ''),
(6, 'Alejandro', 'emperador', '12348679K', 'emperador@gmail.com', '+23456453783', 'Si', '05d565dda994a834fea9bbbe634402d1', 'agree_terms', '', '', 'on', 'on'),
(7, 'Roberto', 'Pasacual', '12348673N', 'pascual@gmail.com', '+23456453787', 'Si', 'b3a99cd56a0a03216084526cb4f55042', 'agree_terms', '', '', '', 'on'),
(8, 'Emperador', 'Magno', '12348674H', 'pascual@gmail.com', '+23456453789', 'Si', 'b8b1d6cbc6e6d2fc4723b81a4ecd7802', 'agree_terms', '', '', 'on', 'on'),
(9, 'donald', 'Trump', '12348675D', 'Trump@gmail.com', '+23456453783', 'No', '3e6a337a0a09e952d84e53ac1fc5209b', 'agree_terms', '', '', 'on', ''),
(10, 'Mishell', 'Obaman', '12348675Ñ', 'obaman@gmail.com', '+23456453745', 'Si', '7dc9315bffe2aba9b392dbbc8e870d4a', 'agree_terms', 'on', 'on', 'on', 'on'),
(11, 'Curco', 'Vain', '12348675H', 'vain@gmail.com', '+23456453746', 'No', '454e3994c98523cbcfb7490f3942eeaa', 'agree_terms', 'on', '', '', ''),
(12, 'Lucia', 'Pacheco', '29742591S', 'pacheco@gmail.com', '+3190912894', 'Si', '7540ba6571c76780981a8afdc32304ed', 'agree_terms', '', '', '', ''),
(13, 'Manolito', 'Lopez', '12783901N', 'nolito@hotmail.com', '+45239935', 'No', '781c2bc0cda7f3818f9157d8ae640058', 'agree_terms', '', 'on', '', ''),
(14, 'Luis', 'Magallanes', '1289347A', 'mallanes@gmail.com', '+123499213', 'Si', '0055fe931197b7088d03386095e7d692', 'agree_terms', '', 'on', 'on', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coches`
--
ALTER TABLE `coches`
  ADD PRIMARY KEY (`IDCoches`),
  ADD KEY `IDSubastas` (`IDSubastas`);

--
-- Indices de la tabla `conferencia`
--
ALTER TABLE `conferencia`
  ADD PRIMARY KEY (`IDConferencia`),
  ADD KEY `IDUsuario` (`IDUsuario`),
  ADD KEY `IDCoches` (`IDCoches`);

--
-- Indices de la tabla `presentador`
--
ALTER TABLE `presentador`
  ADD PRIMARY KEY (`IDPresentador`),
  ADD KEY `IDConferencia` (`IDConferencia`);

--
-- Indices de la tabla `subasta`
--
ALTER TABLE `subasta`
  ADD PRIMARY KEY (`IDSubastas`),
  ADD KEY `IDPresentador` (`IDPresentador`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `coches`
--
ALTER TABLE `coches`
  MODIFY `IDCoches` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `conferencia`
--
ALTER TABLE `conferencia`
  MODIFY `IDConferencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `presentador`
--
ALTER TABLE `presentador`
  MODIFY `IDPresentador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subasta`
--
ALTER TABLE `subasta`
  MODIFY `IDSubastas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDUsuario` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coches`
--
ALTER TABLE `coches`
  ADD CONSTRAINT `coches_ibfk_1` FOREIGN KEY (`IDSubastas`) REFERENCES `subasta` (`IDSubastas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `conferencia`
--
ALTER TABLE `conferencia`
  ADD CONSTRAINT `conferencia_ibfk_2` FOREIGN KEY (`IDCoches`) REFERENCES `coches` (`IDCoches`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `conferencia_ibfk_3` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`IDUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `presentador`
--
ALTER TABLE `presentador`
  ADD CONSTRAINT `presentador_ibfk_1` FOREIGN KEY (`IDConferencia`) REFERENCES `conferencia` (`IDConferencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subasta`
--
ALTER TABLE `subasta`
  ADD CONSTRAINT `subasta_ibfk_1` FOREIGN KEY (`IDPresentador`) REFERENCES `presentador` (`IDPresentador`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
