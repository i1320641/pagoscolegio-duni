-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-06-2022 a las 03:04:29
-- Versión del servidor: 8.0.28
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `paysystem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branch`
--

CREATE TABLE `branch` (
  `id` int NOT NULL,
  `branch` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `detail` text NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `branch`
--

INSERT INTO `branch` (`id`, `branch`, `address`, `detail`, `delete_status`) VALUES
(1, 'Banco Falabella', 'Calle 54 N 35 23', 'Excelente banco no cobra por cuota de manejo ni por sacar el dinero de cajeros automáticos.', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fees_transaction`
--

CREATE TABLE `fees_transaction` (
  `id` int NOT NULL,
  `stdid` varchar(255) NOT NULL,
  `paid` int NOT NULL,
  `submitdate` datetime NOT NULL,
  `transcation_remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fees_transaction`
--

INSERT INTO `fees_transaction` (`id`, `stdid`, `paid`, `submitdate`, `transcation_remark`) VALUES
(13, '10', 100000, '2020-08-20 00:00:00', 'Pago adelantado'),
(15, '11', 120000, '2020-08-21 00:00:00', 'Pudo realizar el pago antes de lo acordado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `id` int NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `joindate` datetime NOT NULL,
  `about` text NOT NULL,
  `contact` varchar(255) NOT NULL,
  `fees` int NOT NULL,
  `branch` varchar(255) NOT NULL,
  `balance` int NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `emailid`, `lastlogin`) VALUES
(1, 'configuroweb', '4b67deeb9aba04a5b54632ad19934f26', 'ConfiguroWeb', 'hola@cweb.com', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fees_transaction`
--
ALTER TABLE `fees_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `fees_transaction`
--
ALTER TABLE `fees_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
