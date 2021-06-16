-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2021 a las 17:57:53
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apisac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `ID_ACTIVIDAD` smallint(6) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_PERIODO` int(11) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `OBJETIVO_GENERAL` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `COMPETENCIA` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `TEMARIO` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `AUTORIZADA` char(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ID_ORGANIGRAMA` int(11) NOT NULL,
  `NO_CREDITOS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`ID_ACTIVIDAD`, `ID_USUARIO`, `ID_PERIODO`, `NOMBRE`, `OBJETIVO_GENERAL`, `COMPETENCIA`, `TEMARIO`, `AUTORIZADA`, `ID_ORGANIGRAMA`, `NO_CREDITOS`) VALUES
(1, 1, 1, 'Redactar un ensayo de modelo cliente/servidor', 'Redactar un ensayo de máximo 6 cuartillas sobre el modelo cliente/servidor, especificando las principales arquitecturas lógicas, sus ventajas y desventajas', 'Conocer los conceptos teóricos básicos relacionados con el modelo cliente/servidor.', 'Tema 1. Contexto de la Programación cliente/servidor', 'Leonel', 1, 5),
(2, 2, 2, 'Investigar el Funcionamiento y Características de ', 'Investigar de forma individual y analiza en grupo el funcionamiento y las características de STP, en fuentes de información confiable y plasma los resultados haciendo una analogía ', 'Aplica protocolos de capa 2 configurando topologías redundantes libre de loops, para disponer de la alta  disponibilidad de los datos en las organizaciones. ', 'Tema 1 STP y RSTP.', 'Rosa I.', 2, 5),
(3, 3, 3, 'Investigación Sistemas Operativos ', 'Investigar sobre los sistemas operativos más utilizados en las organizaciones.', 'Conoce, implementa y gestiona la virtualización de servidores de distintos sistemas operativos para el manejo en\r\ndistintos escenarios de red.', 'Tema 2. Instalación de un sistema operativo para un servidor.', 'Sergio', 3, 5),
(4, 4, 4, 'Práctica de ejercicios.', 'Diseño de interfaces mediante formularios o\r\ntemplates que atiendan problemas generales.', 'Identificar y conocer las estructuras de programación desarrollando aplicaciones, empleando lenguaje HTML y lenguajes de programación. Desarrollar aplicaciones web que implementan acceso a datos.', 'Tema 2 Entorno de programación.', 'Veronica', 4, 4),
(5, 5, 5, 'Investigación ', 'Investigación del Desarrollo con XML.', 'Identificar y conocer las características del lenguaje XML desarrollando aplicaciones que resuelvan el intercambio de información estructurada. Desarrollar aplicaciones web que implementan el intercambio de información a través de servicios web ya definidos.', 'Tema 4 Desarrollo con XML.', 'Eucebio', 5, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`ID_ACTIVIDAD`),
  ADD KEY `FK_REFERENCE_19` (`ID_PERIODO`),
  ADD KEY `fk_ACTIVIDAD_ORGANIGRAMA1_idx` (`ID_ORGANIGRAMA`),
  ADD KEY `fk_ACTIVIDAD_USUARIO1_idx` (`ID_USUARIO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
