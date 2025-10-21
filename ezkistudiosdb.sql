-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 21-10-2025 a las 04:48:20
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ezkistudiosdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `IdCliente` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Empresa` varchar(100) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajescontacto`
--

CREATE TABLE `mensajescontacto` (
  `IdMensaje` int(11) NOT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Asunto` varchar(100) DEFAULT NULL,
  `Mensaje` text NOT NULL,
  `FechaEnvio` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajescontacto`
--

INSERT INTO `mensajescontacto` (`IdMensaje`, `IdCliente`, `Nombre`, `Correo`, `Asunto`, `Mensaje`, `FechaEnvio`) VALUES
(1, NULL, 'Alan', 'alan@gmail.com', 'Hola cómo estás', 'Hola como estás yo muy bien y decidido a romper esquemas', '2025-10-20 11:29:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `IdTestimonio` int(11) NOT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `NombreCliente` varchar(100) NOT NULL,
  `Empresa` varchar(100) DEFAULT NULL,
  `Comentario` text NOT NULL,
  `Fecha` date DEFAULT curdate(),
  `ImagenCliente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`IdTestimonio`, `IdCliente`, `NombreCliente`, `Empresa`, `Comentario`, `Fecha`, `ImagenCliente`) VALUES
(1, NULL, 'Alan Esquivel', 'EzkiStudios', 'Muy bonito todo', '2025-10-20', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`IdCliente`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- Indices de la tabla `mensajescontacto`
--
ALTER TABLE `mensajescontacto`
  ADD PRIMARY KEY (`IdMensaje`),
  ADD KEY `FK_Mensajes_Clientes` (`IdCliente`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`IdTestimonio`),
  ADD KEY `FK_Testimonios_Clientes` (`IdCliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensajescontacto`
--
ALTER TABLE `mensajescontacto`
  MODIFY `IdMensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `IdTestimonio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mensajescontacto`
--
ALTER TABLE `mensajescontacto`
  ADD CONSTRAINT `FK_Mensajes_Clientes` FOREIGN KEY (`IdCliente`) REFERENCES `clientes` (`IdCliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD CONSTRAINT `FK_Testimonios_Clientes` FOREIGN KEY (`IdCliente`) REFERENCES `clientes` (`IdCliente`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
