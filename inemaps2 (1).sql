-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2022 a las 00:34:51
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inemaps`
--
DROP DATABASE IF EXISTS inemaps;
CREATE DATABASE inemaps DEFAULT CHARACTER SET utf8mb4;
USE inemaps;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idComentario` int(11) NOT NULL,
  `descripcion` varchar(280) NOT NULL,
  `fechaPublicacion` date NOT NULL,
  `codigoEstudiante` int(11) NOT NULL,
  `idpost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `codigoEstudiante` int(11) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `contraseña` varchar(30) NOT NULL,
  `nombreEstudiante` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `idpost` int(11) NOT NULL,
  `fechaPublicacion` date NOT NULL,
  `descripcion` varchar(280) NOT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `codigoEstudiante` int(11) NOT NULL,
  `idCategoria` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS categorias;
CREATE TABLE categorias(
	idCategoria int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descripcion varchar(15) NOT NULL
);
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `FK_ComentariosEstudiantes` (`codigoEstudiante`),
  ADD KEY `FK_ComentariosPosts` (`idpost`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`codigoEstudiante`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `FK_PostsEstudiantes` (`codigoEstudiante`),
  ADD KEY `FK_Categorias` (`idCategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `codigoEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `idpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `FK_ComentariosEstudiantes` FOREIGN KEY (`codigoEstudiante`) REFERENCES `estudiantes` (`codigoEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ComentariosPosts` FOREIGN KEY (`idpost`) REFERENCES `posts` (`idpost`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_PostsEstudiantes` FOREIGN KEY (`codigoEstudiante`) REFERENCES `estudiantes` (`codigoEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Categorias` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

INSERT INTO categorias(descripcion) VALUES ("Informacion"),("Eventos"),("Quejas"),("Dudas");

INSERT INTO estudiantes(codigoEstudiante, correo, contraseña, nombreEstudiante) VALUES 
(1, 'Georgi.Facello@gmail.com', 'Georgi123', 'Georgi Facello'),
(2, 'Bezalel.Simmel@gmail.com', 'Bezalel123', 'Bezalel Simmel'),
(3, 'Parto.Bamford@gmail.com', 'Parto123', 'Parto Bamford'),
(4, 'Chirstian.Koblick@gmail.com', 'Chirstian123', 'Chirstian Koblick'),
(5, 'Kyoichi.Maliniak@gmail.com', 'Kyoichi123', 'Kyoichi Maliniak'),
(6, 'Anneke.Preusig@gmail.com', 'Anneke123', 'Anneke Preusig'),
(7, 'Tzvetan.Zielinski@gmail.com', 'Tzvetan123', 'Tzvetan Zielinski'),
(8, 'Saniya.Kalloufi@gmail.com', 'Saniya123', 'Saniya Kalloufi'),
(9, 'Sumant.Peac@gmail.com', 'Sumant123', 'Sumant Peac'),
(10, 'Duangkaew.Piveteau@gmail.com', 'Duangkaew123', 'Duangkaew Piveteau'),
(11, 'Mary.Sluis@gmail.com', 'Mary123', 'Mary Sluis'),
(12, 'Patricio.Bridgland@gmail.com', 'Patricio123', 'Patricio Bridgland'),
(13, 'Eberhardt.Terkki@gmail.com', 'Eberhardt123', 'Eberhardt Terkki'),
(14, 'Berni.Genin@gmail.com', 'Berni123', 'Berni Genin'),
(15, 'Guoxiang.Nooteboom@gmail.com', 'Guoxiang123', 'Guoxiang Nooteboom'),
(16, 'Kazuhito.Cappelletti@gmail.com', 'Kazuhito123', 'Kazuhito Cappelletti'),
(17, 'Cristinel.Bouloucos@gmail.com', 'Cristinel123', 'Cristinel Bouloucos'),
(18, 'Kazuhide.Peha@gmail.com', 'Kazuhide123', 'Kazuhide Peha'),
(19, 'Lillian.Haddadi@gmail.com', 'Lillian123', 'Lillian Haddadi'),
(20, 'Mayuko.Warwick@gmail.com', 'Mayuko123', 'Mayuko Warwick'),
(21, 'Ramzi.Erde@gmail.com', 'Ramzi123', 'Ramzi Erde'),
(22, 'Shahaf.Famili@gmail.com', 'Shahaf123', 'Shahaf Famili'),
(23, 'Bojan.Montemayor@gmail.com', 'Bojan123', 'Bojan Montemayor'),
(24, 'Suzette.Pettey@gmail.com', 'Suzette123', 'Suzette Pettey'),
(25, 'Prasadram.Heyers@gmail.com', 'Prasadram123', 'Prasadram Heyers'),
(26, 'Yongqiao.Berztiss@gmail.com', 'Yongqiao123', 'Yongqiao Berztiss'),
(27, 'Divier.Reistad@gmail.com', 'Divier123', 'Divier Reistad'),
(28, 'Domenick.Tempesti@gmail.com', 'Domenick123', 'Domenick Tempesti'),
(29, 'Otmar.Herbst@gmail.com', 'Otmar123', 'Otmar Herbst'),
(30, 'Elvis.Demeyer@gmail.com', 'Elvis123', 'Elvis Demeyer'),
(31, 'Karsten.Joslin@gmail.com', 'Karsten123', 'Karsten Joslin'),
(32, 'Jeong.Reistad@gmail.com', 'Jeong123', 'Jeong Reistad'),
(33, 'Arif.Merlo@gmail.com', 'Arif123', 'Arif Merlo'),
(34, 'Bader.Swan@gmail.com', 'Bader123', 'Bader Swan'),
(35, 'Alain.Chappelet@gmail.com', 'Alain123', 'Alain Chappelet'),
(36, 'Adamantios.Portugali@gmail.com', 'Adamantios123', 'Adamantios Portugali'),
(37, 'Pradeep.Makrucki@gmail.com', 'Pradeep123', 'Pradeep Makrucki'),
(38, 'Huan.Lortz@gmail.com', 'Huan123', 'Huan Lortz'),
(39, 'Alejandro.Brender@gmail.com', 'Alejandro123', 'Alejandro Brender'),
(40, 'Weiyi.Meriste@gmail.com', 'Weiyi123', 'Weiyi Meriste'),
(41, 'Uri.Lenart@gmail.com', 'Uri123', 'Uri Lenart'),
(42, 'Magy.Stamatiou@gmail.com', 'Magy123', 'Magy Stamatiou'),
(43, 'Yishay.Tzvieli@gmail.com', 'Yishay123', 'Yishay Tzvieli'),
(44, 'Mingsen.Casley@gmail.com', 'Mingsen123', 'Mingsen Casley'),
(45, 'Moss.Shanbhogue@gmail.com', 'Moss123', 'Moss Shanbhogue'),
(46, 'Lucien.Rosenbaum@gmail.com', 'Lucien123', 'Lucien Rosenbaum'),
(47, 'Zvonko.Nyanchama@gmail.com', 'Zvonko123', 'Zvonko Nyanchama'),
(48, 'Florian.Syrotiuk@gmail.com', 'Florian123', 'Florian Syrotiuk'),
(49, 'Basil.Tramer@gmail.com', 'Basil123', 'Basil Tramer'),
(50, 'Yinghua.Dredge@gmail.com', 'Yinghua123', 'Yinghua Dredge'),
(51, 'Hidefumi.Caine@gmail.com', 'Hidefumi123', 'Hidefumi Caine'),
(52, 'Heping.Nitsch@gmail.com', 'Heping123', 'Heping Nitsch'),
(53, 'Sanjiv.Zschoche@gmail.com', 'Sanjiv123', 'Sanjiv Zschoche'),
(54, 'Mayumi.Schueller@gmail.com', 'Mayumi123', 'Mayumi Schueller'),
(55, 'Georgy.Dredge@gmail.com', 'Georgy123', 'Georgy Dredge'),
(56, 'Brendon.Bernini@gmail.com', 'Brendon123', 'Brendon Bernini'),
(57, 'Ebbe.Callaway@gmail.com', 'Ebbe123', 'Ebbe Callaway'),
(58, 'Berhard.McFarlin@gmail.com', 'Berhard123', 'Berhard McFarlin'),
(59, 'Alejandro.McAlpine@gmail.com', 'Alejandro123', 'Alejandro McAlpine'),
(60, 'Breannda.Billingsley@gmail.com', 'Breannda123', 'Breannda Billingsley'),
(61, 'Tse.Herber@gmail.com', 'Tse123', 'Tse Herber'),
(62, 'Anoosh.Peyn@gmail.com', 'Anoosh123', 'Anoosh Peyn'),
(63, 'Gino.Leonhardt@gmail.com', 'Gino123', 'Gino Leonhardt'),
(64, 'Udi.Jansch@gmail.com', 'Udi123', 'Udi Jansch'),
(65, 'Satosi.Awdeh@gmail.com', 'Satosi123', 'Satosi Awdeh'),
(66, 'Kwee.Schusler@gmail.com', 'Kwee123', 'Kwee Schusler'),
(67, 'Claudi.Stavenow@gmail.com', 'Claudi123', 'Claudi Stavenow'),
(68, 'Charlene.Brattka@gmail.com', 'Charlene123', 'Charlene Brattka'),
(69, 'Margareta.Bierman@gmail.com', 'Margareta123', 'Margareta Bierman'),
(70, 'Reuven.Garigliano@gmail.com', 'Reuven123', 'Reuven Garigliano'),
(71, 'Hisao.Lipner@gmail.com', 'Hisao123', 'Hisao Lipner'),
(72, 'Hironoby.Sidou@gmail.com', 'Hironoby123', 'Hironoby Sidou'),
(73, 'Shir.McClurg@gmail.com', 'Shir123', 'Shir McClurg'),
(74, 'Mokhtar.Bernatsky@gmail.com', 'Mokhtar123', 'Mokhtar Bernatsky'),
(75, 'Gao.Dolinsky@gmail.com', 'Gao123', 'Gao Dolinsky'),
(76, 'Erez.Ritzmann@gmail.com', 'Erez123', 'Erez Ritzmann'),
(77, 'Mona.Azuma@gmail.com', 'Mona123', 'Mona Azuma'),
(78, 'Danel.Mondadori@gmail.com', 'Danel123', 'Danel Mondadori'),
(79, 'Kshitij.Gils@gmail.com', 'Kshitij123', 'Kshitij Gils'),
(80, 'Premal.Baek@gmail.com', 'Premal123', 'Premal Baek'),
(81, 'Zhongwei.Rosen@gmail.com', 'Zhongwei123', 'Zhongwei Rosen'),
(82, 'Parviz.Lortz@gmail.com', 'Parviz123', 'Parviz Lortz'),
(83, 'Vishv.Zockler@gmail.com', 'Vishv123', 'Vishv Zockler'),
(84, 'Tuval.Kalloufi@gmail.com', 'Tuval123', 'Tuval Kalloufi'),
(85, 'Kenroku.Malabarba@gmail.com', 'Kenroku123', 'Kenroku Malabarba'),
(86, 'Somnath.Foote@gmail.com', 'Somnath123', 'Somnath Foote'),
(87, 'Xinglin.Eugenio@gmail.com', 'Xinglin123', 'Xinglin Eugenio'),
(88, 'Jungsoon.Syrzycki@gmail.com', 'Jungsoon123', 'Jungsoon Syrzycki'),
(89, 'Sudharsan.Flasterstein@gmail.com', 'Sudharsan123', 'Sudharsan Flasterstein'),
(90, 'Kendra.Hofting@gmail.com', 'Kendra123', 'Kendra Hofting'),
(91, 'Amabile.Gomatam@gmail.com', 'Amabile123', 'Amabile Gomatam'),
(92, 'Valdiodio.Niizuma@gmail.com', 'Valdiodio123', 'Valdiodio Niizuma'),
(93, 'Sailaja.Desikan@gmail.com', 'Sailaja123', 'Sailaja Desikan'),
(94, 'Arumugam.Ossenbruggen@gmail.com', 'Arumugam123', 'Arumugam Ossenbruggen'),
(95, 'Hilari.Morton@gmail.com', 'Hilari123', 'Hilari Morton'),
(96, 'Jayson.Mandell@gmail.com', 'Jayson123', 'Jayson Mandell'),
(97, 'Remzi.Waschkowski@gmail.com', 'Remzi123', 'Remzi Waschkowski'),
(98, 'Sreekrishna.Servieres@gmail.com', 'Sreekrishna123', 'Sreekrishna Servieres'),
(99, 'Valter.Sullins@gmail.com', 'Valter123', 'Valter Sullins'),
(100, 'Hironobu.Haraldson@gmail.com', 'Hironobu123', 'Hironobu Haraldson'),
(101, 'Perla.Heyers@gmail.com', 'Perla123', 'Perla Heyers'),
(102, 'Paraskevi.Luby@gmail.com', 'Paraskevi123', 'Paraskevi Luby'),
(103, 'Akemi.Birch@gmail.com', 'Akemi123', 'Akemi Birch'),
(104, 'Xinyu.Warwick@gmail.com', 'Xinyu123', 'Xinyu Warwick'),
(105, 'Hironoby.Piveteau@gmail.com', 'Hironoby123', 'Hironoby Piveteau'),
(106, 'Eben.Aingworth@gmail.com', 'Eben123', 'Eben Aingworth'),
(107, 'Dung.Baca@gmail.com', 'Dung123', 'Dung Baca'),
(108, 'Lunjin.Giveon@gmail.com', 'Lunjin123', 'Lunjin Giveon'),
(109, 'Mariusz.Prampolini@gmail.com', 'Mariusz123', 'Mariusz Prampolini'),
(110, 'Xuejia.Ullian@gmail.com', 'Xuejia123', 'Xuejia Ullian'),
(111, 'Hugo.Rosis@gmail.com', 'Hugo123', 'Hugo Rosis'),
(112, 'Yuichiro.Swick@gmail.com', 'Yuichiro123', 'Yuichiro Swick'),
(113, 'Jaewon.Syrzycki@gmail.com', 'Jaewon123', 'Jaewon Syrzycki'),
(114, 'Munir.Demeyer@gmail.com', 'Munir123', 'Munir Demeyer'),
(115, 'Chikara.Rissland@gmail.com', 'Chikara123', 'Chikara Rissland'),
(116, 'Dayanand.Czap@gmail.com', 'Dayanand123', 'Dayanand Czap'),
(117, 'Kiyotoshi.Blokdijk@gmail.com', 'Kiyotoshi123', 'Kiyotoshi Blokdijk'),
(118, 'Zhonghui.Zyda@gmail.com', 'Zhonghui123', 'Zhonghui Zyda'),
(119, 'Domenick.Peltason@gmail.com', 'Domenick123', 'Domenick Peltason'),
(120, 'Armond.Fairtlough@gmail.com', 'Armond123', 'Armond Fairtlough'),
(121, 'Guoxiang.Ramsay@gmail.com', 'Guoxiang123', 'Guoxiang Ramsay'),
(122, 'Ohad.Esposito@gmail.com', 'Ohad123', 'Ohad Esposito'),
(123, 'Hinrich.Randi@gmail.com', 'Hinrich123', 'Hinrich Randi'),
(124, 'Geraldo.Marwedel@gmail.com', 'Geraldo123', 'Geraldo Marwedel'),
(125, 'Syozo.Hiltgen@gmail.com', 'Syozo123', 'Syozo Hiltgen'),
(126, 'Kayoko.Valtorta@gmail.com', 'Kayoko123', 'Kayoko Valtorta'),
(127, 'Subir.Baja@gmail.com', 'Subir123', 'Subir Baja'),
(128, 'Babette.Lamba@gmail.com', 'Babette123', 'Babette Lamba'),
(129, 'Armond.Peir@gmail.com', 'Armond123', 'Armond Peir'),
(130, 'Nishit.Casperson@gmail.com', 'Nishit123', 'Nishit Casperson'),
(131, 'Magdalena.Eldridge@gmail.com', 'Magdalena123', 'Magdalena Eldridge'),
(132, 'Ayakannu.Skrikant@gmail.com', 'Ayakannu123', 'Ayakannu Skrikant'),
(133, 'Giri.Isaak@gmail.com', 'Giri123', 'Giri Isaak'),
(134, 'Diederik.Siprelle@gmail.com', 'Diederik123', 'Diederik Siprelle'),
(135, 'Nathan.Monkewich@gmail.com', 'Nathan123', 'Nathan Monkewich'),
(136, 'Zissis.Pintelas@gmail.com', 'Zissis123', 'Zissis Pintelas'),
(137, 'Maren.Hutton@gmail.com', 'Maren123', 'Maren Hutton'),
(138, 'Perry.Shimshoni@gmail.com', 'Perry123', 'Perry Shimshoni'),
(139, 'Ewing.Foong@gmail.com', 'Ewing123', 'Ewing Foong'),
(140, 'Yucel.Auria@gmail.com', 'Yucel123', 'Yucel Auria'),
(141, 'Shahaf.Ishibashi@gmail.com', 'Shahaf123', 'Shahaf Ishibashi'),
(142, 'Tzvetan.Hettesheimer@gmail.com', 'Tzvetan123', 'Tzvetan Hettesheimer'),
(143, 'Sakthirel.Bakhtari@gmail.com', 'Sakthirel123', 'Sakthirel Bakhtari'),
(144, 'Marla.Brendel@gmail.com', 'Marla123', 'Marla Brendel'),
(145, 'Akemi.Esposito@gmail.com', 'Akemi123', 'Akemi Esposito'),
(146, 'Chenyi.Syang@gmail.com', 'Chenyi123', 'Chenyi Syang'),
(147, 'Kazuhito.Encarnacion@gmail.com', 'Kazuhito123', 'Kazuhito Encarnacion'),
(148, 'Douadi.Azumi@gmail.com', 'Douadi123', 'Douadi Azumi'),
(149, 'Xiadong.Perry@gmail.com', 'Xiadong123', 'Xiadong Perry'),
(150, 'Zhenbing.Perng@gmail.com', 'Zhenbing123', 'Zhenbing Perng'),
(151, 'Itzchak.Lichtner@gmail.com', 'Itzchak123', 'Itzchak Lichtner'),
(152, 'Jaques.Munro@gmail.com', 'Jaques123', 'Jaques Munro'),
(153, 'Heekeun.Majewski@gmail.com', 'Heekeun123', 'Heekeun Majewski'),
(154, 'Abdulah.Thibadeau@gmail.com', 'Abdulah123', 'Abdulah Thibadeau'),
(155, 'Adas.Nastansky@gmail.com', 'Adas123', 'Adas Nastansky'),
(156, 'Sumali.Fargier@gmail.com', 'Sumali123', 'Sumali Fargier'),
(157, 'Nigel.Aloisi@gmail.com', 'Nigel123', 'Nigel Aloisi'),
(158, 'Khedija.Mitsuhashi@gmail.com', 'Khedija123', 'Khedija Mitsuhashi'),
(159, 'Serif.Buescher@gmail.com', 'Serif123', 'Serif Buescher'),
(160, 'Debatosh.Khasidashvili@gmail.com', 'Debatosh123', 'Debatosh Khasidashvili'),
(161, 'Hairong.Mellouli@gmail.com', 'Hairong123', 'Hairong Mellouli'),
(162, 'Florina.Eugenio@gmail.com', 'Florina123', 'Florina Eugenio'),
(163, 'Karsten.Szmurlo@gmail.com', 'Karsten123', 'Karsten Szmurlo'),
(164, 'Jagoda.Braunmuhl@gmail.com', 'Jagoda123', 'Jagoda Braunmuhl'),
(165, 'Miyeon.Macedo@gmail.com', 'Miyeon123', 'Miyeon Macedo'),
(166, 'Samphel.Siegrist@gmail.com', 'Samphel123', 'Samphel Siegrist'),
(167, 'Duangkaew.Rassart@gmail.com', 'Duangkaew123', 'Duangkaew Rassart'),
(168, 'Dharmaraja.Stassinopoulos@gmail.com', 'Dharmaraja123', 'Dharmaraja Stassinopoulos'),
(169, 'Sampalli.Snedden@gmail.com', 'Sampalli123', 'Sampalli Snedden'),
(170, 'Kasturi.Jenevein@gmail.com', 'Kasturi123', 'Kasturi Jenevein'),
(171, 'Herbert.Trachtenberg@gmail.com', 'Herbert123', 'Herbert Trachtenberg'),
(172, 'Shigeu.Matzen@gmail.com', 'Shigeu123', 'Shigeu Matzen'),
(173, 'Shrikanth.Mahmud@gmail.com', 'Shrikanth123', 'Shrikanth Mahmud'),
(174, 'Badri.Furudate@gmail.com', 'Badri123', 'Badri Furudate'),
(175, 'Aleksandar.Ananiadou@gmail.com', 'Aleksandar123', 'Aleksandar Ananiadou'),
(176, 'Brendon.Lenart@gmail.com', 'Brendon123', 'Brendon Lenart'),
(177, 'Pragnesh.Iisaka@gmail.com', 'Pragnesh123', 'Pragnesh Iisaka'),
(178, 'Valery.Litvinov@gmail.com', 'Valery123', 'Valery Litvinov'),
(179, 'Deniz.Duclos@gmail.com', 'Deniz123', 'Deniz Duclos'),
(180, 'Shaw.Wendorf@gmail.com', 'Shaw123', 'Shaw Wendorf'),
(181, 'Sibyl.Nooteboom@gmail.com', 'Sibyl123', 'Sibyl Nooteboom'),
(182, 'Moriyoshi.Merey@gmail.com', 'Moriyoshi123', 'Moriyoshi Merey'),
(183, 'Mechthild.Bonifati@gmail.com', 'Mechthild123', 'Mechthild Bonifati'),
(184, 'Mihalis.Lowrie@gmail.com', 'Mihalis123', 'Mihalis Lowrie'),
(185, 'Duro.Sidhu@gmail.com', 'Duro123', 'Duro Sidhu'),
(186, 'Shigehito.Kropatsch@gmail.com', 'Shigehito123', 'Shigehito Kropatsch'),
(187, 'Tommaso.Narwekar@gmail.com', 'Tommaso123', 'Tommaso Narwekar'),
(188, 'Christ.Muchinsky@gmail.com', 'Christ123', 'Christ Muchinsky'),
(189, 'Khalid.Erva@gmail.com', 'Khalid123', 'Khalid Erva'),
(190, 'Arve.Fairtlough@gmail.com', 'Arve123', 'Arve Fairtlough'),
(191, 'Zdislav.Nastansky@gmail.com', 'Zdislav123', 'Zdislav Nastansky'),
(192, 'Mohua.Falck@gmail.com', 'Mohua123', 'Mohua Falck'),
(193, 'Masaru.Cheshire@gmail.com', 'Masaru123', 'Masaru Cheshire'),
(194, 'Josyula.Hofmeyr@gmail.com', 'Josyula123', 'Josyula Hofmeyr'),
(195, 'Annemarie.Redmiles@gmail.com', 'Annemarie123', 'Annemarie Redmiles'),
(196, 'Marc.Hellwagner@gmail.com', 'Marc123', 'Marc Hellwagner'),
(197, 'Kasidit.Krzyzanowski@gmail.com', 'Kasidit123', 'Kasidit Krzyzanowski'),
(198, 'Pranav.Furedi@gmail.com', 'Pranav123', 'Pranav Furedi'),
(199, 'Kazuhisa.Ranta@gmail.com', 'Kazuhisa123', 'Kazuhisa Ranta'),
(200, 'Vidya.Awdeh@gmail.com', 'Vidya123', 'Vidya Awdeh'),
(201, 'Idoia.Kavraki@gmail.com', 'Idoia123', 'Idoia Kavraki'),
(202, 'Greger.Lichtner@gmail.com', 'Greger123', 'Greger Lichtner'),
(203, 'Steen.Escriba@gmail.com', 'Steen123', 'Steen Escriba'),
(204, 'Nevio.Ritcey@gmail.com', 'Nevio123', 'Nevio Ritcey'),
(205, 'Mabhin.Leijenhorst@gmail.com', 'Mabhin123', 'Mabhin Leijenhorst'),
(206, 'Alassane.Iwayama@gmail.com', 'Alassane123', 'Alassane Iwayama'),
(207, 'Girolamo.Anandan@gmail.com', 'Girolamo123', 'Girolamo Anandan'),
(208, 'Xiping.Klerer@gmail.com', 'Xiping123', 'Xiping Klerer'),
(209, 'Yolla.Ellozy@gmail.com', 'Yolla123', 'Yolla Ellozy'),
(210, 'Yuping.Alpin@gmail.com', 'Yuping123', 'Yuping Alpin'),
(211, 'Vishu.Strehl@gmail.com', 'Vishu123', 'Vishu Strehl'),
(212, 'Divier.Esteva@gmail.com', 'Divier123', 'Divier Esteva'),
(213, 'Jackson.Kakkad@gmail.com', 'Jackson123', 'Jackson Kakkad'),
(214, 'Tadahiko.Ciolek@gmail.com', 'Tadahiko123', 'Tadahiko Ciolek'),
(215, 'Xiaobin.Duclos@gmail.com', 'Xiaobin123', 'Xiaobin Duclos'),
(216, 'Amstein.Ghemri@gmail.com', 'Amstein123', 'Amstein Ghemri'),
(217, 'Yongmin.Roison@gmail.com', 'Yongmin123', 'Yongmin Roison'),
(218, 'Zhenhua.Magalhaes@gmail.com', 'Zhenhua123', 'Zhenhua Magalhaes'),
(219, 'Genta.Kolvik@gmail.com', 'Genta123', 'Genta Kolvik'),
(220, 'Kish.Fasbender@gmail.com', 'Kish123', 'Kish Fasbender'),
(221, 'Yucai.Granlund@gmail.com', 'Yucai123', 'Yucai Granlund'),
(222, 'Tze.Nourani@gmail.com', 'Tze123', 'Tze Nourani'),
(223, 'Carrsten.Schmiedel@gmail.com', 'Carrsten123', 'Carrsten Schmiedel'),
(224, 'Leon.Trogemann@gmail.com', 'Leon123', 'Leon Trogemann'),
(225, 'Kellie.Chinen@gmail.com', 'Kellie123', 'Kellie Chinen'),
(226, 'Xinglin.Plessier@gmail.com', 'Xinglin123', 'Xinglin Plessier'),
(227, 'Anneli.Kaiser@gmail.com', 'Anneli123', 'Anneli Kaiser'),
(228, 'Karoline.Cesareni@gmail.com', 'Karoline123', 'Karoline Cesareni'),
(229, 'Ulises.Takanami@gmail.com', 'Ulises123', 'Ulises Takanami'),
(230, 'Clyde.Vernadat@gmail.com', 'Clyde123', 'Clyde Vernadat'),
(231, 'Shaowen.Desikan@gmail.com', 'Shaowen123', 'Shaowen Desikan'),
(232, 'Marko.Auria@gmail.com', 'Marko123', 'Marko Auria'),
(233, 'Lein.Vendrig@gmail.com', 'Lein123', 'Lein Vendrig'),
(234, 'Arunachalam.Bakhtari@gmail.com', 'Arunachalam123', 'Arunachalam Bakhtari'),
(235, 'Susanta.Roccetti@gmail.com', 'Susanta123', 'Susanta Roccetti'),
(236, 'Susumu.Bade@gmail.com', 'Susumu123', 'Susumu Bade'),
(237, 'Yannis.Mandell@gmail.com', 'Yannis123', 'Yannis Mandell'),
(238, 'Mototsugu.Gire@gmail.com', 'Mototsugu123', 'Mototsugu Gire'),
(239, 'Nikolaos.Llado@gmail.com', 'Nikolaos123', 'Nikolaos Llado'),
(240, 'Remko.Maccarone@gmail.com', 'Remko123', 'Remko Maccarone'),
(241, 'Ortrud.Murillo@gmail.com', 'Ortrud123', 'Ortrud Murillo'),
(242, 'Lunjin.Ozeri@gmail.com', 'Lunjin123', 'Lunjin Ozeri'),
(243, 'Wonhee.Pouyioutas@gmail.com', 'Wonhee123', 'Wonhee Pouyioutas'),
(244, 'Foong.Flasterstein@gmail.com', 'Foong123', 'Foong Flasterstein'),
(245, 'Ramalingam.Gente@gmail.com', 'Ramalingam123', 'Ramalingam Gente'),
(246, 'Basem.Teitelbaum@gmail.com', 'Basem123', 'Basem Teitelbaum'),
(247, 'Heon.Riefers@gmail.com', 'Heon123', 'Heon Riefers'),
(248, 'Frederique.Tempesti@gmail.com', 'Frederique123', 'Frederique Tempesti'),
(249, 'Marie.Boreale@gmail.com', 'Marie123', 'Marie Boreale'),
(250, 'Serap.Etalle@gmail.com', 'Serap123', 'Serap Etalle'),
(251, 'Alair.Rosenbaum@gmail.com', 'Alair123', 'Alair Rosenbaum'),
(252, 'Shirish.Wegerle@gmail.com', 'Shirish123', 'Shirish Wegerle'),
(253, 'Zsolt.Salinas@gmail.com', 'Zsolt123', 'Zsolt Salinas'),
(254, 'Shen.Brattka@gmail.com', 'Shen123', 'Shen Brattka'),
(255, 'Roddy.Garnick@gmail.com', 'Roddy123', 'Roddy Garnick'),
(256, 'Irene.Radhakrishnan@gmail.com', 'Irene123', 'Irene Radhakrishnan'),
(257, 'Aiman.Riexinger@gmail.com', 'Aiman123', 'Aiman Riexinger'),
(258, 'Basil.Ishibashi@gmail.com', 'Basil123', 'Basil Ishibashi'),
(259, 'Susanna.Vesel@gmail.com', 'Susanna123', 'Susanna Vesel'),
(260, 'Alper.Suomi@gmail.com', 'Alper123', 'Alper Suomi'),
(261, 'Mang.Erie@gmail.com', 'Mang123', 'Mang Erie'),
(262, 'Mahendra.Maraist@gmail.com', 'Mahendra123', 'Mahendra Maraist'),
(263, 'Takahiro.Waterhouse@gmail.com', 'Takahiro123', 'Takahiro Waterhouse'),
(264, 'Nalini.Kawashimo@gmail.com', 'Nalini123', 'Nalini Kawashimo'),
(265, 'Ramalingam.Muniz@gmail.com', 'Ramalingam123', 'Ramalingam Muniz'),
(266, 'Sukumar.Rassart@gmail.com', 'Sukumar123', 'Sukumar Rassart'),
(267, 'Shaunak.Cullers@gmail.com', 'Shaunak123', 'Shaunak Cullers'),
(268, 'Nishit.Siochi@gmail.com', 'Nishit123', 'Nishit Siochi'),
(269, 'Taizo.Oxman@gmail.com', 'Taizo123', 'Taizo Oxman'),
(270, 'Bedir.Hartvigsen@gmail.com', 'Bedir123', 'Bedir Hartvigsen'),
(271, 'Sham.Eastman@gmail.com', 'Sham123', 'Sham Eastman'),
(272, 'Yishai.Cannane@gmail.com', 'Yishai123', 'Yishai Cannane'),
(273, 'Baocai.Lieblein@gmail.com', 'Baocai123', 'Baocai Lieblein'),
(274, 'Dmitri.Pearson@gmail.com', 'Dmitri123', 'Dmitri Pearson'),
(275, 'Marek.Luck@gmail.com', 'Marek123', 'Marek Luck'),
(276, 'Xuejun.Hempstead@gmail.com', 'Xuejun123', 'Xuejun Hempstead'),
(277, 'Isaac.Schwartzbauer@gmail.com', 'Isaac123', 'Isaac Schwartzbauer'),
(278, 'Lubomir.Nitsch@gmail.com', 'Lubomir123', 'Lubomir Nitsch'),
(279, 'Barton.Jumpertz@gmail.com', 'Barton123', 'Barton Jumpertz'),
(280, 'Stabislas.Delgrange@gmail.com', 'Stabislas123', 'Stabislas Delgrange'),
(281, 'Moty.Kusakari@gmail.com', 'Moty123', 'Moty Kusakari'),
(282, 'Hercules.Benzmuller@gmail.com', 'Hercules123', 'Hercules Benzmuller'),
(283, 'Kauko.Birjandi@gmail.com', 'Kauko123', 'Kauko Birjandi'),
(284, 'Masali.Murrill@gmail.com', 'Masali123', 'Masali Murrill'),
(285, 'Zhonghui.Preusig@gmail.com', 'Zhonghui123', 'Zhonghui Preusig'),
(286, 'Saddek.Gopalakrishnan@gmail.com', 'Saddek123', 'Saddek Gopalakrishnan'),
(287, 'Marie.Pietracaprina@gmail.com', 'Marie123', 'Marie Pietracaprina'),
(288, 'Selwyn.Perri@gmail.com', 'Selwyn123', 'Selwyn Perri'),
(289, 'Shay.Poulakidas@gmail.com', 'Shay123', 'Shay Poulakidas'),
(290, 'Yongmao.Pleszkun@gmail.com', 'Yongmao123', 'Yongmao Pleszkun'),
(291, 'Dipayan.Seghrouchni@gmail.com', 'Dipayan123', 'Dipayan Seghrouchni'),
(292, 'Yucel.Ghelli@gmail.com', 'Yucel123', 'Yucel Ghelli'),
(293, 'Mihalis.Avouris@gmail.com', 'Mihalis123', 'Mihalis Avouris'),
(294, 'Rutger.Miara@gmail.com', 'Rutger123', 'Rutger Miara'),
(295, 'Kristine.Velardi@gmail.com', 'Kristine123', 'Kristine Velardi'),
(296, 'Petter.Lorho@gmail.com', 'Petter123', 'Petter Lorho'),
(297, 'Narain.Oaver@gmail.com', 'Narain123', 'Narain Oaver'),
(298, 'Dietrich.DuCasse@gmail.com', 'Dietrich123', 'Dietrich DuCasse'),
(299, 'Ipke.Stentiford@gmail.com', 'Ipke123', 'Ipke Stentiford'),
(300, 'Tadahiko.Ulupinar@gmail.com', 'Tadahiko123', 'Tadahiko Ulupinar'),
(301, 'Lucien.Staudhammer@gmail.com', 'Lucien123', 'Lucien Staudhammer'),
(302, 'Faiza.Baer@gmail.com', 'Faiza123', 'Faiza Baer'),
(303, 'Marlo.Zschoche@gmail.com', 'Marlo123', 'Marlo Zschoche'),
(304, 'Bernt.Erie@gmail.com', 'Bernt123', 'Bernt Erie'),
(305, 'Hirochika.Piancastelli@gmail.com', 'Hirochika123', 'Hirochika Piancastelli'),
(306, 'Heng.Kilgour@gmail.com', 'Heng123', 'Heng Kilgour'),
(307, 'Nikolaos.Leaver@gmail.com', 'Nikolaos123', 'Nikolaos Leaver'),
(308, 'Dzung.Holburn@gmail.com', 'Dzung123', 'Dzung Holburn'),
(309, 'Prodip.Schusler@gmail.com', 'Prodip123', 'Prodip Schusler'),
(310, 'Aksel.Alencar@gmail.com', 'Aksel123', 'Aksel Alencar'),
(311, 'Hsiangchu.Molenkamp@gmail.com', 'Hsiangchu123', 'Hsiangchu Molenkamp'),
(312, 'Rasiah.Deyuan@gmail.com', 'Rasiah123', 'Rasiah Deyuan'),
(313, 'Subbu.Riexinger@gmail.com', 'Subbu123', 'Subbu Riexinger'),
(314, 'Christfried.Apsitis@gmail.com', 'Christfried123', 'Christfried Apsitis'),
(315, 'Maris.Angelopoulos@gmail.com', 'Maris123', 'Maris Angelopoulos'),
(316, 'Christoper.Schwaller@gmail.com', 'Christoper123', 'Christoper Schwaller'),
(317, 'Arie.Birge@gmail.com', 'Arie123', 'Arie Birge'),
(318, 'Mototsugu.Beilner@gmail.com', 'Mototsugu123', 'Mototsugu Beilner'),
(319, 'Mechthild.Miyakawa@gmail.com', 'Mechthild123', 'Mechthild Miyakawa'),
(320, 'Uinam.Stasinski@gmail.com', 'Uinam123', 'Uinam Stasinski'),
(321, 'Guenter.Ravishankar@gmail.com', 'Guenter123', 'Guenter Ravishankar'),
(322, 'Isamu.Dahlbom@gmail.com', 'Isamu123', 'Isamu Dahlbom'),
(323, 'Kankanahalli.Hinsberger@gmail.com', 'Kankanahalli123', 'Kankanahalli Hinsberger'),
(324, 'Bernardo.Rouquie@gmail.com', 'Bernardo123', 'Bernardo Rouquie'),
(325, 'Arunachalam.Badr@gmail.com', 'Arunachalam123', 'Arunachalam Badr'),
(326, 'Masali.Czap@gmail.com', 'Masali123', 'Masali Czap'),
(327, 'Roded.Facello@gmail.com', 'Roded123', 'Roded Facello'),
(328, 'Serenella.Kawashima@gmail.com', 'Serenella123', 'Serenella Kawashima'),
(329, 'Remko.Shigei@gmail.com', 'Remko123', 'Remko Shigei'),
(330, 'Kasturi.Bellmore@gmail.com', 'Kasturi123', 'Kasturi Bellmore'),
(331, 'Arto.Binkley@gmail.com', 'Arto123', 'Arto Binkley'),
(332, 'Masanao.Bain@gmail.com', 'Masanao123', 'Masanao Bain'),
(333, 'Snehasis.Dymetman@gmail.com', 'Snehasis123', 'Snehasis Dymetman'),
(334, 'Falguni.Erie@gmail.com', 'Falguni123', 'Falguni Erie'),
(335, 'Toshimori.Bahi@gmail.com', 'Toshimori123', 'Toshimori Bahi'),
(336, 'Goa.Rothe@gmail.com', 'Goa123', 'Goa Rothe'),
(337, 'Jeong.Sadowsky@gmail.com', 'Jeong123', 'Jeong Sadowsky'),
(338, 'Heon.Ranai@gmail.com', 'Heon123', 'Heon Ranai'),
(339, 'Teunis.Liedekerke@gmail.com', 'Teunis123', 'Teunis Liedekerke'),
(340, 'Djelloul.Laventhal@gmail.com', 'Djelloul123', 'Djelloul Laventhal'),
(341, 'Wilmer.Greenaway@gmail.com', 'Wilmer123', 'Wilmer Greenaway'),
(342, 'Stella.Hiroyama@gmail.com', 'Stella123', 'Stella Hiroyama'),
(343, 'Dinah.Syrzycki@gmail.com', 'Dinah123', 'Dinah Syrzycki'),
(344, 'Uwe.Garnier@gmail.com', 'Uwe123', 'Uwe Garnier'),
(345, 'Arra.Ratnakar@gmail.com', 'Arra123', 'Arra Ratnakar'),
(346, 'Aamod.Radwan@gmail.com', 'Aamod123', 'Aamod Radwan'),
(347, 'Pradeep.Kaminger@gmail.com', 'Pradeep123', 'Pradeep Kaminger'),
(348, 'Mahendra.Picco@gmail.com', 'Mahendra123', 'Mahendra Picco'),
(349, 'Oksana.Brodie@gmail.com', 'Oksana123', 'Oksana Brodie'),
(350, 'Kristen.Kavvadias@gmail.com', 'Kristen123', 'Kristen Kavvadias'),
(351, 'Tadahiko.Strehl@gmail.com', 'Tadahiko123', 'Tadahiko Strehl'),
(352, 'Erzsebet.Ohori@gmail.com', 'Erzsebet123', 'Erzsebet Ohori'),
(353, 'Phule.Hammerschmidt@gmail.com', 'Phule123', 'Phule Hammerschmidt'),
(354, 'Moto.Kusakari@gmail.com', 'Moto123', 'Moto Kusakari'),
(355, 'Satyanarayana.Cochrane@gmail.com', 'Satyanarayana123', 'Satyanarayana Cochrane'),
(356, 'Vasilis.Standera@gmail.com', 'Vasilis123', 'Vasilis Standera'),
(357, 'Hausi.Sidhu@gmail.com', 'Hausi123', 'Hausi Sidhu'),
(358, 'Qunsheng.Tagansky@gmail.com', 'Qunsheng123', 'Qunsheng Tagansky'),
(359, 'Heekeun.Sambasivam@gmail.com', 'Heekeun123', 'Heekeun Sambasivam'),
(360, 'Irene.Munck@gmail.com', 'Irene123', 'Irene Munck'),
(361, 'Seshu.Sidou@gmail.com', 'Seshu123', 'Seshu Sidou'),
(362, 'Shalesh.dAstous@gmail.com', 'Shalesh123', 'Shalesh dAstous'),
(363, 'Toshiki.Muniz@gmail.com', 'Toshiki123', 'Toshiki Muniz'),
(364, 'Nakhoon.Dengi@gmail.com', 'Nakhoon123', 'Nakhoon Dengi'),
(365, 'Rosine.Granlund@gmail.com', 'Rosine123', 'Rosine Granlund'),
(366, 'Morrie.Piazza@gmail.com', 'Morrie123', 'Morrie Piazza'),
(367, 'Hyuckchul.Gini@gmail.com', 'Hyuckchul123', 'Hyuckchul Gini'),
(368, 'Hatim.Koshiba@gmail.com', 'Hatim123', 'Hatim Koshiba'),
(369, 'Qunsheng.Toyoshima@gmail.com', 'Qunsheng123', 'Qunsheng Toyoshima'),
(370, 'Clyde.Fandrianto@gmail.com', 'Clyde123', 'Clyde Fandrianto'),
(371, 'Ioana.Kirkerud@gmail.com', 'Ioana123', 'Ioana Kirkerud'),
(372, 'Anneli.Frijda@gmail.com', 'Anneli123', 'Anneli Frijda'),
(373, 'Hongzue.Heijenga@gmail.com', 'Hongzue123', 'Hongzue Heijenga'),
(374, 'Willard.Rosin@gmail.com', 'Willard123', 'Willard Rosin'),
(375, 'Dante.Kalafatis@gmail.com', 'Dante123', 'Dante Kalafatis'),
(376, 'Fai.Bale@gmail.com', 'Fai123', 'Fai Bale'),
(377, 'Marl.Grospietsch@gmail.com', 'Marl123', 'Marl Grospietsch'),
(378, 'Takahira.Lichtner@gmail.com', 'Takahira123', 'Takahira Lichtner'),
(379, 'Mikhail.Rosis@gmail.com', 'Mikhail123', 'Mikhail Rosis'),
(380, 'Alejandro.Kamble@gmail.com', 'Alejandro123', 'Alejandro Kamble'),
(381, 'Jiong.Parfitt@gmail.com', 'Jiong123', 'Jiong Parfitt'),
(382, 'Shirish.Dredge@gmail.com', 'Shirish123', 'Shirish Dredge'),
(383, 'Leucio.Aumann@gmail.com', 'Leucio123', 'Leucio Aumann'),
(384, 'Feiyu.Luft@gmail.com', 'Feiyu123', 'Feiyu Luft'),
(385, 'Khatoun.Imataki@gmail.com', 'Khatoun123', 'Khatoun Imataki'),
(386, 'Eishiro.Miyakawa@gmail.com', 'Eishiro123', 'Eishiro Miyakawa'),
(387, 'Parto.Wrigley@gmail.com', 'Parto123', 'Parto Wrigley'),
(388, 'Hironoby.Kaiser@gmail.com', 'Hironoby123', 'Hironoby Kaiser'),
(389, 'Make.Peir@gmail.com', 'Make123', 'Make Peir'),
(390, 'Wanqing.Bratten@gmail.com', 'Wanqing123', 'Wanqing Bratten'),
(391, 'Hongzue.Akaboshi@gmail.com', 'Hongzue123', 'Hongzue Akaboshi'),
(392, 'Jiann.Hainaut@gmail.com', 'Jiann123', 'Jiann Hainaut'),
(393, 'Yagil.DasSarma@gmail.com', 'Yagil123', 'Yagil DasSarma'),
(394, 'Shawna.Meriste@gmail.com', 'Shawna123', 'Shawna Meriste'),
(395, 'Takahiro.Deverell@gmail.com', 'Takahiro123', 'Takahiro Deverell'),
(396, 'Sibyl.Rahier@gmail.com', 'Sibyl123', 'Sibyl Rahier'),
(397, 'Irena.Reutenauer@gmail.com', 'Irena123', 'Irena Reutenauer'),
(398, 'Shooichi.Escriba@gmail.com', 'Shooichi123', 'Shooichi Escriba'),
(399, 'Guenter.Marchegay@gmail.com', 'Guenter123', 'Guenter Marchegay'),
(400, 'Ortrud.Nitto@gmail.com', 'Ortrud123', 'Ortrud Nitto'),
(401, 'Eckart.Barriga@gmail.com', 'Eckart123', 'Eckart Barriga'),
(402, 'Volkmar.Ebeling@gmail.com', 'Volkmar123', 'Volkmar Ebeling'),
(403, 'Atreyi.Mungall@gmail.com', 'Atreyi123', 'Atreyi Mungall'),
(404, 'Prodip.Rosti@gmail.com', 'Prodip123', 'Prodip Rosti'),
(405, 'Hilary.Budinsky@gmail.com', 'Hilary123', 'Hilary Budinsky'),
(406, 'Sigeru.Wynblatt@gmail.com', 'Sigeru123', 'Sigeru Wynblatt'),
(407, 'Ulf.Siepmann@gmail.com', 'Ulf123', 'Ulf Siepmann'),
(408, 'Martijn.Kaiser@gmail.com', 'Martijn123', 'Martijn Kaiser'),
(409, 'Mario.Straney@gmail.com', 'Mario123', 'Mario Straney'),
(410, 'Takahito.Gecsei@gmail.com', 'Takahito123', 'Takahito Gecsei'),
(411, 'Lidong.Klerer@gmail.com', 'Lidong123', 'Lidong Klerer'),
(412, 'Masoud.Fabrizio@gmail.com', 'Masoud123', 'Masoud Fabrizio'),
(413, 'Danel.Impagliazzo@gmail.com', 'Danel123', 'Danel Impagliazzo'),
(414, 'Yinlin.Alpin@gmail.com', 'Yinlin123', 'Yinlin Alpin'),
(415, 'Mark.Coorg@gmail.com', 'Mark123', 'Mark Coorg'),
(416, 'Uli.Keustermans@gmail.com', 'Uli123', 'Uli Keustermans'),
(417, 'Bingning.Bakhtari@gmail.com', 'Bingning123', 'Bingning Bakhtari'),
(418, 'Candida.Porotnikoff@gmail.com', 'Candida123', 'Candida Porotnikoff'),
(419, 'Maria.Bauknecht@gmail.com', 'Maria123', 'Maria Bauknecht'),
(420, 'Kaijung.Riesenhuber@gmail.com', 'Kaijung123', 'Kaijung Riesenhuber'),
(421, 'Divine.Marzano@gmail.com', 'Divine123', 'Divine Marzano'),
(422, 'Greger.Rubsam@gmail.com', 'Greger123', 'Greger Rubsam'),
(423, 'Dante.Cronin@gmail.com', 'Dante123', 'Dante Cronin'),
(424, 'Babette.Straney@gmail.com', 'Babette123', 'Babette Straney'),
(425, 'Sashi.Osgood@gmail.com', 'Sashi123', 'Sashi Osgood'),
(426, 'Arunas.Luce@gmail.com', 'Arunas123', 'Arunas Luce'),
(427, 'Khosrow.Sudbeck@gmail.com', 'Khosrow123', 'Khosrow Sudbeck'),
(428, 'Cathie.Brlek@gmail.com', 'Cathie123', 'Cathie Brlek'),
(429, 'Martien.Improta@gmail.com', 'Martien123', 'Martien Improta'),
(430, 'Ferdinand.Chenney@gmail.com', 'Ferdinand123', 'Ferdinand Chenney'),
(431, 'Patricio.Bugrara@gmail.com', 'Patricio123', 'Patricio Bugrara'),
(432, 'Hisao.Tiemann@gmail.com', 'Hisao123', 'Hisao Tiemann'),
(433, 'Reuven.Dengi@gmail.com', 'Reuven123', 'Reuven Dengi'),
(434, 'Dzung.Peltason@gmail.com', 'Dzung123', 'Dzung Peltason'),
(435, 'Marsha.Tagansky@gmail.com', 'Marsha123', 'Marsha Tagansky'),
(436, 'Yahiko.Lammel@gmail.com', 'Yahiko123', 'Yahiko Lammel'),
(437, 'Narain.Reeker@gmail.com', 'Narain123', 'Narain Reeker'),
(438, 'Evgueni.Srimani@gmail.com', 'Evgueni123', 'Evgueni Srimani'),
(439, 'Jolita.Jarecki@gmail.com', 'Jolita123', 'Jolita Jarecki'),
(440, 'Akeel.Narahara@gmail.com', 'Akeel123', 'Akeel Narahara'),
(441, 'Adel.Perfilyeva@gmail.com', 'Adel123', 'Adel Perfilyeva'),
(442, 'Volkmar.Unno@gmail.com', 'Volkmar123', 'Volkmar Unno'),
(443, 'Shichao.Litvinov@gmail.com', 'Shichao123', 'Shichao Litvinov'),
(444, 'Kazuhira.Rosis@gmail.com', 'Kazuhira123', 'Kazuhira Rosis'),
(445, 'Junichi.Kavanagh@gmail.com', 'Junichi123', 'Junichi Kavanagh'),
(446, 'Ebru.Chepyzhov@gmail.com', 'Ebru123', 'Ebru Chepyzhov'),
(447, 'Ronghao.Yavatkar@gmail.com', 'Ronghao123', 'Ronghao Yavatkar'),
(448, 'Phule.Oxenboll@gmail.com', 'Phule123', 'Phule Oxenboll'),
(449, 'Aleksandar.Sudkamp@gmail.com', 'Aleksandar123', 'Aleksandar Sudkamp'),
(450, 'Khun.Harbusch@gmail.com', 'Khun123', 'Khun Harbusch'),
(451, 'Bodh.Ranta@gmail.com', 'Bodh123', 'Bodh Ranta'),
(452, 'Werner.Hasham@gmail.com', 'Werner123', 'Werner Hasham'),
(453, 'Tsvetan.Matzel@gmail.com', 'Tsvetan123', 'Tsvetan Matzel'),
(454, 'Wonhee.Badr@gmail.com', 'Wonhee123', 'Wonhee Badr'),
(455, 'Sverrir.Streng@gmail.com', 'Sverrir123', 'Sverrir Streng'),
(456, 'Stepehn.Hardjono@gmail.com', 'Stepehn123', 'Stepehn Hardjono'),
(457, 'Oddvar.Schlenzig@gmail.com', 'Oddvar123', 'Oddvar Schlenzig'),
(458, 'Gina.Engelmann@gmail.com', 'Gina123', 'Gina Engelmann'),
(459, 'Ennio.Trogemann@gmail.com', 'Ennio123', 'Ennio Trogemann'),
(460, 'Shushma.VanScheik@gmail.com', 'Shushma123', 'Shushma VanScheik'),
(461, 'Gal.Karcich@gmail.com', 'Gal123', 'Gal Karcich'),
(462, 'Sumali.Schlenzig@gmail.com', 'Sumali123', 'Sumali Schlenzig'),
(463, 'Ung.Zaiane@gmail.com', 'Ung123', 'Ung Zaiane'),
(464, 'Mang.Maginnis@gmail.com', 'Mang123', 'Mang Maginnis'),
(465, 'Claudi.Shackel@gmail.com', 'Claudi123', 'Claudi Shackel'),
(466, 'Jiakeng.Himler@gmail.com', 'Jiakeng123', 'Jiakeng Himler'),
(467, 'Dipayan.Suomi@gmail.com', 'Dipayan123', 'Dipayan Suomi'),
(468, 'Yoshimitsu.Shobatake@gmail.com', 'Yoshimitsu123', 'Yoshimitsu Shobatake'),
(469, 'Munehiko.Ananiadou@gmail.com', 'Munehiko123', 'Munehiko Ananiadou'),
(470, 'Peternela.Iwayama@gmail.com', 'Peternela123', 'Peternela Iwayama'),
(471, 'Jouko.Yamaashi@gmail.com', 'Jouko123', 'Jouko Yamaashi'),
(472, 'Salvador.Lodder@gmail.com', 'Salvador123', 'Salvador Lodder'),
(473, 'Przemyslawa.Oskamp@gmail.com', 'Przemyslawa123', 'Przemyslawa Oskamp'),
(474, 'Kenton.Garnham@gmail.com', 'Kenton123', 'Kenton Garnham'),
(475, 'Mario.Rodite@gmail.com', 'Mario123', 'Mario Rodite'),
(476, 'Kokou.Iisaka@gmail.com', 'Kokou123', 'Kokou Iisaka'),
(477, 'Guoxiang.Trogemann@gmail.com', 'Guoxiang123', 'Guoxiang Trogemann'),
(478, 'Maik.Ushiama@gmail.com', 'Maik123', 'Maik Ushiama'),
(479, 'Duro.Coney@gmail.com', 'Duro123', 'Duro Coney'),
(480, 'Make.Baba@gmail.com', 'Make123', 'Make Baba'),
(481, 'Yongmao.Pintelas@gmail.com', 'Yongmao123', 'Yongmao Pintelas'),
(482, 'Goa.Pleszkun@gmail.com', 'Goa123', 'Goa Pleszkun'),
(483, 'Zhiwei.Anick@gmail.com', 'Zhiwei123', 'Zhiwei Anick'),
(484, 'Nirmal.Varley@gmail.com', 'Nirmal123', 'Nirmal Varley'),
(485, 'Teruyuki.Sundgren@gmail.com', 'Teruyuki123', 'Teruyuki Sundgren'),
(486, 'Amstein.Kossowski@gmail.com', 'Amstein123', 'Amstein Kossowski'),
(487, 'Perla.Middleton@gmail.com', 'Perla123', 'Perla Middleton'),
(488, 'Mihalis.Heering@gmail.com', 'Mihalis123', 'Mihalis Heering'),
(489, 'Elvia.Homond@gmail.com', 'Elvia123', 'Elvia Homond'),
(490, 'Huiqun.Vuskovic@gmail.com', 'Huiqun123', 'Huiqun Vuskovic'),
(491, 'Garnik.Narahari@gmail.com', 'Garnik123', 'Garnik Narahari'),
(492, 'Lobel.Kumaresan@gmail.com', 'Lobel123', 'Lobel Kumaresan'),
(493, 'Maris.Haraldson@gmail.com', 'Maris123', 'Maris Haraldson'),
(494, 'Yakkov.Servieres@gmail.com', 'Yakkov123', 'Yakkov Servieres'),
(495, 'Anyuan.Zhiwei@gmail.com', 'Anyuan123', 'Anyuan Zhiwei'),
(496, 'Gretta.Baig@gmail.com', 'Gretta123', 'Gretta Baig'),
(497, 'Pramod.Rabehasaina@gmail.com', 'Pramod123', 'Pramod Rabehasaina'),
(498, 'Valter.Cappelletti@gmail.com', 'Valter123', 'Valter Cappelletti'),
(499, 'Maik.Luft@gmail.com', 'Maik123', 'Maik Luft'),
(500, 'Vojin.Narwekar@gmail.com', 'Vojin123', 'Vojin Narwekar'),
(501, 'Susuma.Larfeldt@gmail.com', 'Susuma123', 'Susuma Larfeldt'),
(502, 'Yonghoan.Marshall@gmail.com', 'Yonghoan123', 'Yonghoan Marshall'),
(503, 'Dannz.Pell@gmail.com', 'Dannz123', 'Dannz Pell'),
(504, 'Xiong.Varker@gmail.com', 'Xiong123', 'Xiong Varker'),
(505, 'Isamu.Auria@gmail.com', 'Isamu123', 'Isamu Auria'),
(506, 'Kazuhisa.Kroll@gmail.com', 'Kazuhisa123', 'Kazuhisa Kroll'),
(507, 'Kasidit.Belinskaya@gmail.com', 'Kasidit123', 'Kasidit Belinskaya'),
(508, 'Kotesh.Liedekerke@gmail.com', 'Kotesh123', 'Kotesh Liedekerke'),
(509, 'Abdelwaheb.Riesenhuber@gmail.com', 'Abdelwaheb123', 'Abdelwaheb Riesenhuber'),
(510, 'Keung.Slobodova@gmail.com', 'Keung123', 'Keung Slobodova'),
(511, 'Khoa.Marrevee@gmail.com', 'Khoa123', 'Khoa Marrevee'),
(512, 'Udi.Gihr@gmail.com', 'Udi123', 'Udi Gihr'),
(513, 'Yuichiro.Schicker@gmail.com', 'Yuichiro123', 'Yuichiro Schicker'),
(514, 'Tomofumi.McClure@gmail.com', 'Tomofumi123', 'Tomofumi McClure'),
(515, 'Raimond.Kirkerud@gmail.com', 'Raimond123', 'Raimond Kirkerud'),
(516, 'Xiadong.Luga@gmail.com', 'Xiadong123', 'Xiadong Luga'),
(517, 'Tiina.Speek@gmail.com', 'Tiina123', 'Tiina Speek'),
(518, 'Marin.Lanphier@gmail.com', 'Marin123', 'Marin Lanphier'),
(519, 'Yonghoan.Alencar@gmail.com', 'Yonghoan123', 'Yonghoan Alencar'),
(520, 'Jenwei.Ecklund@gmail.com', 'Jenwei123', 'Jenwei Ecklund'),
(521, 'Kwangsub.Setia@gmail.com', 'Kwangsub123', 'Kwangsub Setia'),
(522, 'Marke.Cesareni@gmail.com', 'Marke123', 'Marke Cesareni'),
(523, 'Malu.Skafidas@gmail.com', 'Malu123', 'Malu Skafidas'),
(524, 'Shigehiro.Cincotta@gmail.com', 'Shigehiro123', 'Shigehiro Cincotta'),
(525, 'Yuchang.Lunt@gmail.com', 'Yuchang123', 'Yuchang Lunt'),
(526, 'Kwangho.Theuretzbacher@gmail.com', 'Kwangho123', 'Kwangho Theuretzbacher'),
(527, 'Tetsushi.Barvinok@gmail.com', 'Tetsushi123', 'Tetsushi Barvinok'),
(528, 'Koichi.Lakshmanan@gmail.com', 'Koichi123', 'Koichi Lakshmanan'),
(529, 'Ymte.Yetto@gmail.com', 'Ymte123', 'Ymte Yetto'),
(530, 'Boriana.Coors@gmail.com', 'Boriana123', 'Boriana Coors'),
(531, 'Oguz.Gimbel@gmail.com', 'Oguz123', 'Oguz Gimbel'),
(532, 'Mary.Wossner@gmail.com', 'Mary123', 'Mary Wossner'),
(533, 'Mohamadou.Smailagic@gmail.com', 'Mohamadou123', 'Mohamadou Smailagic'),
(534, 'Dinah.Bahl@gmail.com', 'Dinah123', 'Dinah Bahl'),
(535, 'Shalesh.Stroustrup@gmail.com', 'Shalesh123', 'Shalesh Stroustrup'),
(536, 'Yechiam.Sambasivam@gmail.com', 'Yechiam123', 'Yechiam Sambasivam'),
(537, 'Stella.Benzmuller@gmail.com', 'Stella123', 'Stella Benzmuller'),
(538, 'Przemyslawa.Falby@gmail.com', 'Przemyslawa123', 'Przemyslawa Falby'),
(539, 'Yucel.Reinhard@gmail.com', 'Yucel123', 'Yucel Reinhard'),
(540, 'Martins.Barriga@gmail.com', 'Martins123', 'Martins Barriga'),
(541, 'Godehard.Eiter@gmail.com', 'Godehard123', 'Godehard Eiter'),
(542, 'Yannis.Couchot@gmail.com', 'Yannis123', 'Yannis Couchot'),
(543, 'Lein.Lichtman@gmail.com', 'Lein123', 'Lein Lichtman'),
(544, 'Ishfaq.Krzyzanowski@gmail.com', 'Ishfaq123', 'Ishfaq Krzyzanowski'),
(545, 'Hauke.dAstous@gmail.com', 'Hauke123', 'Hauke dAstous'),
(546, 'Nechama.Schapiro@gmail.com', 'Nechama123', 'Nechama Schapiro'),
(547, 'Snehasis.Brobst@gmail.com', 'Snehasis123', 'Snehasis Brobst'),
(548, 'Ramalingam.Gunderson@gmail.com', 'Ramalingam123', 'Ramalingam Gunderson'),
(549, 'Beshir.Kisuki@gmail.com', 'Beshir123', 'Beshir Kisuki'),
(550, 'Manton.Leuchs@gmail.com', 'Manton123', 'Manton Leuchs'),
(551, 'Jeong.Rijsenbrij@gmail.com', 'Jeong123', 'Jeong Rijsenbrij'),
(552, 'Kazuhito.Shiratori@gmail.com', 'Kazuhito123', 'Kazuhito Shiratori'),
(553, 'Rajmohan.Wallrath@gmail.com', 'Rajmohan123', 'Rajmohan Wallrath'),
(554, 'Dines.Gerlach@gmail.com', 'Dines123', 'Dines Gerlach'),
(555, 'Vitaly.Picci@gmail.com', 'Vitaly123', 'Vitaly Picci'),
(556, 'JoAnna.Taubman@gmail.com', 'JoAnna123', 'JoAnna Taubman'),
(557, 'Sashi.Karlin@gmail.com', 'Sashi123', 'Sashi Karlin'),
(558, 'Hisao.Famili@gmail.com', 'Hisao123', 'Hisao Famili'),
(559, 'Arumugam.Comellas@gmail.com', 'Arumugam123', 'Arumugam Comellas'),
(560, 'Yinlin.Esteva@gmail.com', 'Yinlin123', 'Yinlin Esteva'),
(561, 'Serge.Joslin@gmail.com', 'Serge123', 'Serge Joslin'),
(562, 'Shuky.Pearson@gmail.com', 'Shuky123', 'Shuky Pearson'),
(563, 'Mohit.Spelt@gmail.com', 'Mohit123', 'Mohit Spelt'),
(564, 'Jianhao.Thisen@gmail.com', 'Jianhao123', 'Jianhao Thisen'),
(565, 'Yishay.Harnett@gmail.com', 'Yishay123', 'Yishay Harnett'),
(566, 'Jianhui.Zuberek@gmail.com', 'Jianhui123', 'Jianhui Zuberek'),
(567, 'Dietrich.Journel@gmail.com', 'Dietrich123', 'Dietrich Journel'),
(568, 'Gao.Poulakidas@gmail.com', 'Gao123', 'Gao Poulakidas'),
(569, 'Sreenivas.Bashian@gmail.com', 'Sreenivas123', 'Sreenivas Bashian'),
(570, 'Alassane.Morrin@gmail.com', 'Alassane123', 'Alassane Morrin'),
(571, 'Fun.Varman@gmail.com', 'Fun123', 'Fun Varman'),
(572, 'Cordelia.Axelband@gmail.com', 'Cordelia123', 'Cordelia Axelband'),
(573, 'Tetsushi.Speel@gmail.com', 'Tetsushi123', 'Tetsushi Speel'),
(574, 'Salvador.Olano@gmail.com', 'Salvador123', 'Salvador Olano'),
(575, 'Theirry.Yeung@gmail.com', 'Theirry123', 'Theirry Yeung'),
(576, 'Xiaoqiu.Krychniak@gmail.com', 'Xiaoqiu123', 'Xiaoqiu Krychniak'),
(577, 'Ennio.Schmiedel@gmail.com', 'Ennio123', 'Ennio Schmiedel'),
(578, 'Shigeaki.Shanbhogue@gmail.com', 'Shigeaki123', 'Shigeaki Shanbhogue'),
(579, 'Aiman.Stentiford@gmail.com', 'Aiman123', 'Aiman Stentiford'),
(580, 'Christoper.Rehfuss@gmail.com', 'Christoper123', 'Christoper Rehfuss'),
(581, 'Odinaldo.Prochazka@gmail.com', 'Odinaldo123', 'Odinaldo Prochazka'),
(582, 'Shmuel.Juneja@gmail.com', 'Shmuel123', 'Shmuel Juneja'),
(583, 'Prasadram.Stille@gmail.com', 'Prasadram123', 'Prasadram Stille'),
(584, 'Mana.Papastamatiou@gmail.com', 'Mana123', 'Mana Papastamatiou'),
(585, 'Sajjad.Willoner@gmail.com', 'Sajjad123', 'Sajjad Willoner'),
(586, 'Kirk.Vuskovic@gmail.com', 'Kirk123', 'Kirk Vuskovic'),
(587, 'Behnaam.Srimani@gmail.com', 'Behnaam123', 'Behnaam Srimani'),
(588, 'Shigeo.Dulay@gmail.com', 'Shigeo123', 'Shigeo Dulay'),
(589, 'Subbu.Sanella@gmail.com', 'Subbu123', 'Subbu Sanella'),
(590, 'Yongqiao.Kalloufi@gmail.com', 'Yongqiao123', 'Yongqiao Kalloufi'),
(591, 'Hidde.Hettesheimer@gmail.com', 'Hidde123', 'Hidde Hettesheimer'),
(592, 'Almudena.Alvarado@gmail.com', 'Almudena123', 'Almudena Alvarado'),
(593, 'Falguni.Kenevan@gmail.com', 'Falguni123', 'Falguni Kenevan'),
(594, 'Kiyokazu.Whitcomb@gmail.com', 'Kiyokazu123', 'Kiyokazu Whitcomb'),
(595, 'Giri.Undy@gmail.com', 'Giri123', 'Giri Undy'),
(596, 'Sanjit.Coors@gmail.com', 'Sanjit123', 'Sanjit Coors'),
(597, 'Lucien.Schaad@gmail.com', 'Lucien123', 'Lucien Schaad'),
(598, 'Margo.Gronowski@gmail.com', 'Margo123', 'Margo Gronowski'),
(599, 'Seshu.Crelier@gmail.com', 'Seshu123', 'Seshu Crelier'),
(600, 'Emran.Rettelbach@gmail.com', 'Emran123', 'Emran Rettelbach'),
(601, 'Barton.Usdin@gmail.com', 'Barton123', 'Barton Usdin'),
(602, 'Douadi.Wossner@gmail.com', 'Douadi123', 'Douadi Wossner'),
(603, 'Wayne.Restivo@gmail.com', 'Wayne123', 'Wayne Restivo'),
(604, 'Susanna.Brizzi@gmail.com', 'Susanna123', 'Susanna Brizzi'),
(605, 'Moti.Wixon@gmail.com', 'Moti123', 'Moti Wixon'),
(606, 'Toshiki.Marakhovsky@gmail.com', 'Toshiki123', 'Toshiki Marakhovsky'),
(607, 'Rosalyn.Hambrick@gmail.com', 'Rosalyn123', 'Rosalyn Hambrick'),
(608, 'Adhemar.Talmor@gmail.com', 'Adhemar123', 'Adhemar Talmor'),
(609, 'Janche.Zhang@gmail.com', 'Janche123', 'Janche Zhang'),
(610, 'Irena.Roccetti@gmail.com', 'Irena123', 'Irena Roccetti'),
(611, 'Karsten.Blokdijk@gmail.com', 'Karsten123', 'Karsten Blokdijk'),
(612, 'Gil.Peroz@gmail.com', 'Gil123', 'Gil Peroz'),
(613, 'Inderjeet.Jansen@gmail.com', 'Inderjeet123', 'Inderjeet Jansen'),
(614, 'Gila.Ozeri@gmail.com', 'Gila123', 'Gila Ozeri'),
(615, 'Keung.Delgrande@gmail.com', 'Keung123', 'Keung Delgrande'),
(616, 'Tommaso.Marwedel@gmail.com', 'Tommaso123', 'Tommaso Marwedel'),
(617, 'Hidekazu.Angel@gmail.com', 'Hidekazu123', 'Hidekazu Angel'),
(618, 'Ranga.Yeung@gmail.com', 'Ranga123', 'Ranga Yeung'),
(619, 'Vivian.Kusakabe@gmail.com', 'Vivian123', 'Vivian Kusakabe'),
(620, 'Marit.Veeraraghavan@gmail.com', 'Marit123', 'Marit Veeraraghavan'),
(621, 'Hinrich.Siepmann@gmail.com', 'Hinrich123', 'Hinrich Siepmann'),
(622, 'Turgut.Narlikar@gmail.com', 'Turgut123', 'Turgut Narlikar'),
(623, 'Aleksander.Danlos@gmail.com', 'Aleksander123', 'Aleksander Danlos'),
(624, 'Sham.Gyorkos@gmail.com', 'Sham123', 'Sham Gyorkos'),
(625, 'Leszek.Petereit@gmail.com', 'Leszek123', 'Leszek Petereit'),
(626, 'Danil.Deverell@gmail.com', 'Danil123', 'Danil Deverell'),
(627, 'Shigeu.Itzfeldt@gmail.com', 'Shigeu123', 'Shigeu Itzfeldt'),
(628, 'Krisda.Krogh@gmail.com', 'Krisda123', 'Krisda Krogh'),
(629, 'Lalit.Francisci@gmail.com', 'Lalit123', 'Lalit Francisci'),
(630, 'Bezalel.Katzenelson@gmail.com', 'Bezalel123', 'Bezalel Katzenelson'),
(631, 'Inderjeet.Chaudhuri@gmail.com', 'Inderjeet123', 'Inderjeet Chaudhuri'),
(632, 'Yoshimitsu.Velardi@gmail.com', 'Yoshimitsu123', 'Yoshimitsu Velardi'),
(633, 'Sorina.Herber@gmail.com', 'Sorina123', 'Sorina Herber'),
(634, 'Nahid.Chepyzhov@gmail.com', 'Nahid123', 'Nahid Chepyzhov'),
(635, 'Toney.Angiulli@gmail.com', 'Toney123', 'Toney Angiulli'),
(636, 'Saeko.Porotnikoff@gmail.com', 'Saeko123', 'Saeko Porotnikoff'),
(637, 'Heejo.Frolund@gmail.com', 'Heejo123', 'Heejo Frolund'),
(638, 'Jenwei.Borovoy@gmail.com', 'Jenwei123', 'Jenwei Borovoy'),
(639, 'Pramod.Erol@gmail.com', 'Pramod123', 'Pramod Erol'),
(640, 'Anneke.Meszaros@gmail.com', 'Anneke123', 'Anneke Meszaros'),
(641, 'Guozhong.Zucker@gmail.com', 'Guozhong123', 'Guozhong Zucker'),
(642, 'Hirochika.Narlikar@gmail.com', 'Hirochika123', 'Hirochika Narlikar'),
(643, 'Slavian.Keirsey@gmail.com', 'Slavian123', 'Slavian Keirsey'),
(644, 'Pranas.Benaini@gmail.com', 'Pranas123', 'Pranas Benaini'),
(645, 'Fumiyo.Esposito@gmail.com', 'Fumiyo123', 'Fumiyo Esposito'),
(646, 'Uri.Chorvat@gmail.com', 'Uri123', 'Uri Chorvat'),
(647, 'Tesuro.Bahk@gmail.com', 'Tesuro123', 'Tesuro Bahk'),
(648, 'Marlo.Ratnaker@gmail.com', 'Marlo123', 'Marlo Ratnaker'),
(649, 'Vitali.Welham@gmail.com', 'Vitali123', 'Vitali Welham'),
(650, 'Hongzhu.Chepyzhov@gmail.com', 'Hongzhu123', 'Hongzhu Chepyzhov'),
(651, 'Zijian.Maginnis@gmail.com', 'Zijian123', 'Zijian Maginnis'),
(652, 'Danai.Chachaty@gmail.com', 'Danai123', 'Danai Chachaty'),
(653, 'Otmar.Feinberg@gmail.com', 'Otmar123', 'Otmar Feinberg'),
(654, 'Nahla.Castellani@gmail.com', 'Nahla123', 'Nahla Castellani'),
(655, 'Remko.Dalton@gmail.com', 'Remko123', 'Remko Dalton'),
(656, 'Sanjay.Litzkow@gmail.com', 'Sanjay123', 'Sanjay Litzkow'),
(657, 'Juichirou.Kitsuregawa@gmail.com', 'Juichirou123', 'Juichirou Kitsuregawa'),
(658, 'Junsik.Rijckaert@gmail.com', 'Junsik123', 'Junsik Rijckaert'),
(659, 'Dinah.Shackel@gmail.com', 'Dinah123', 'Dinah Shackel'),
(660, 'Jouko.Kolinko@gmail.com', 'Jouko123', 'Jouko Kolinko'),
(661, 'Ottavia.Giarratana@gmail.com', 'Ottavia123', 'Ottavia Giarratana'),
(662, 'Arto.Serra@gmail.com', 'Arto123', 'Arto Serra'),
(663, 'Teunis.Noriega@gmail.com', 'Teunis123', 'Teunis Noriega'),
(664, 'Xumin.Peck@gmail.com', 'Xumin123', 'Xumin Peck'),
(665, 'Qingxiang.Snyers@gmail.com', 'Qingxiang123', 'Qingxiang Snyers'),
(666, 'Zhonghua.Reeker@gmail.com', 'Zhonghua123', 'Zhonghua Reeker'),
(667, 'Makato.Cusworth@gmail.com', 'Makato123', 'Makato Cusworth'),
(668, 'Maren.Granlund@gmail.com', 'Maren123', 'Maren Granlund'),
(669, 'Yurij.Iisaka@gmail.com', 'Yurij123', 'Yurij Iisaka'),
(670, 'Shunichi.McAffer@gmail.com', 'Shunichi123', 'Shunichi McAffer'),
(671, 'Parviz.Rebaine@gmail.com', 'Parviz123', 'Parviz Rebaine'),
(672, 'Bluma.Zeilberger@gmail.com', 'Bluma123', 'Bluma Zeilberger'),
(673, 'Hyuckchul.Casperson@gmail.com', 'Hyuckchul123', 'Hyuckchul Casperson'),
(674, 'Abdelaziz.Bisiani@gmail.com', 'Abdelaziz123', 'Abdelaziz Bisiani'),
(675, 'Ymte.Waschkowski@gmail.com', 'Ymte123', 'Ymte Waschkowski'),
(676, 'Valeri.Danley@gmail.com', 'Valeri123', 'Valeri Danley'),
(677, 'Alejandra.Perng@gmail.com', 'Alejandra123', 'Alejandra Perng'),
(678, 'Chriss.Gide@gmail.com', 'Chriss123', 'Chriss Gide'),
(679, 'Neven.Brender@gmail.com', 'Neven123', 'Neven Brender'),
(680, 'Kish.Honglei@gmail.com', 'Kish123', 'Kish Honglei'),
(681, 'Florina.Garnier@gmail.com', 'Florina123', 'Florina Garnier'),
(682, 'Bedir.Haumacher@gmail.com', 'Bedir123', 'Bedir Haumacher'),
(683, 'Guiseppe.Stranks@gmail.com', 'Guiseppe123', 'Guiseppe Stranks'),
(684, 'Aimee.Tokunaga@gmail.com', 'Aimee123', 'Aimee Tokunaga'),
(685, 'Zongyan.Cusworth@gmail.com', 'Zongyan123', 'Zongyan Cusworth'),
(686, 'Avishai.Azadmanesh@gmail.com', 'Avishai123', 'Avishai Azadmanesh'),
(687, 'Leon.Kaiser@gmail.com', 'Leon123', 'Leon Kaiser'),
(688, 'Xiaopeng.Lanphier@gmail.com', 'Xiaopeng123', 'Xiaopeng Lanphier'),
(689, 'Satoru.Otillio@gmail.com', 'Satoru123', 'Satoru Otillio'),
(690, 'Matt.Jumpertz@gmail.com', 'Matt123', 'Matt Jumpertz'),
(691, 'Denny.Setia@gmail.com', 'Denny123', 'Denny Setia'),
(692, 'Larisa.Bage@gmail.com', 'Larisa123', 'Larisa Bage'),
(693, 'Berhard.Daescu@gmail.com', 'Berhard123', 'Berhard Daescu'),
(694, 'Rildo.Straney@gmail.com', 'Rildo123', 'Rildo Straney'),
(695, 'Zorica.Acton@gmail.com', 'Zorica123', 'Zorica Acton'),
(696, 'Unal.Fendler@gmail.com', 'Unal123', 'Unal Fendler'),
(697, 'Bluma.Hiltgen@gmail.com', 'Bluma123', 'Bluma Hiltgen'),
(698, 'Barton.Engberts@gmail.com', 'Barton123', 'Barton Engberts'),
(699, 'Hatim.Deverell@gmail.com', 'Hatim123', 'Hatim Deverell'),
(700, 'Angel.Mondadori@gmail.com', 'Angel123', 'Angel Mondadori'),
(701, 'Hyuncheol.Zolotykh@gmail.com', 'Hyuncheol123', 'Hyuncheol Zolotykh'),
(702, 'Bader.Szemeredi@gmail.com', 'Bader123', 'Bader Szemeredi'),
(703, 'Giri.Baumann@gmail.com', 'Giri123', 'Giri Baumann'),
(704, 'Yolla.Kropatsch@gmail.com', 'Yolla123', 'Yolla Kropatsch'),
(705, 'Hironobu.Wynblatt@gmail.com', 'Hironobu123', 'Hironobu Wynblatt'),
(706, 'Gonzalo.Eldridge@gmail.com', 'Gonzalo123', 'Gonzalo Eldridge'),
(707, 'Moty.Trystram@gmail.com', 'Moty123', 'Moty Trystram'),
(708, 'Aral.Erman@gmail.com', 'Aral123', 'Aral Erman'),
(709, 'Jiafu.Mateescu@gmail.com', 'Jiafu123', 'Jiafu Mateescu'),
(710, 'Sorina.Kermarrec@gmail.com', 'Sorina123', 'Sorina Kermarrec'),
(711, 'Arvind.DuBourdieux@gmail.com', 'Arvind123', 'Arvind DuBourdieux'),
(712, 'Uma.Koprowski@gmail.com', 'Uma123', 'Uma Koprowski'),
(713, 'Jagoda.Naumovich@gmail.com', 'Jagoda123', 'Jagoda Naumovich'),
(714, 'Aran.Sadowsky@gmail.com', 'Aran123', 'Aran Sadowsky'),
(715, 'Goa.Poehlman@gmail.com', 'Goa123', 'Goa Poehlman'),
(716, 'Aiman.Constantine@gmail.com', 'Aiman123', 'Aiman Constantine'),
(717, 'Serap.Tasistro@gmail.com', 'Serap123', 'Serap Tasistro'),
(718, 'Adib.Rullman@gmail.com', 'Adib123', 'Adib Rullman'),
(719, 'Guenter.Karunanithi@gmail.com', 'Guenter123', 'Guenter Karunanithi'),
(720, 'Odinaldo.Kruskal@gmail.com', 'Odinaldo123', 'Odinaldo Kruskal'),
(721, 'Bernd.Redmiles@gmail.com', 'Bernd123', 'Bernd Redmiles'),
(722, 'Dung.Gornas@gmail.com', 'Dung123', 'Dung Gornas'),
(723, 'Eckart.Harnett@gmail.com', 'Eckart123', 'Eckart Harnett'),
(724, 'Aluzio.Narlikar@gmail.com', 'Aluzio123', 'Aluzio Narlikar'),
(725, 'Garnet.Isard@gmail.com', 'Garnet123', 'Garnet Isard'),
(726, 'Zita.Minakawa@gmail.com', 'Zita123', 'Zita Minakawa'),
(727, 'Saeed.Kitai@gmail.com', 'Saeed123', 'Saeed Kitai'),
(728, 'Ugo.Maliniak@gmail.com', 'Ugo123', 'Ugo Maliniak'),
(729, 'Percy.Lorho@gmail.com', 'Percy123', 'Percy Lorho'),
(730, 'Mohit.Janetzko@gmail.com', 'Mohit123', 'Mohit Janetzko'),
(731, 'Fumitaka.Peak@gmail.com', 'Fumitaka123', 'Fumitaka Peak'),
(732, 'Morris.Andreotta@gmail.com', 'Morris123', 'Morris Andreotta'),
(733, 'Sangeeta.Rodham@gmail.com', 'Sangeeta123', 'Sangeeta Rodham'),
(734, 'Sachar.Erdi@gmail.com', 'Sachar123', 'Sachar Erdi'),
(735, 'Morrie.Gewali@gmail.com', 'Morrie123', 'Morrie Gewali'),
(736, 'Gurbir.Hellwagner@gmail.com', 'Gurbir123', 'Gurbir Hellwagner'),
(737, 'Vincent.Schwartzbauer@gmail.com', 'Vincent123', 'Vincent Schwartzbauer'),
(738, 'Rosita.Oppitz@gmail.com', 'Rosita123', 'Rosita Oppitz'),
(739, 'Gor.Iacovou@gmail.com', 'Gor123', 'Gor Iacovou'),
(740, 'Suzette.Sadowski@gmail.com', 'Suzette123', 'Suzette Sadowski'),
(741, 'Sven.Huttel@gmail.com', 'Sven123', 'Sven Huttel'),
(742, 'Shim.Wiegley@gmail.com', 'Shim123', 'Shim Wiegley'),
(743, 'Kiyomitsu.Peltason@gmail.com', 'Kiyomitsu123', 'Kiyomitsu Peltason'),
(744, 'Yaghout.Syang@gmail.com', 'Yaghout123', 'Yaghout Syang'),
(745, 'Poorav.Ranze@gmail.com', 'Poorav123', 'Poorav Ranze'),
(746, 'Kolar.Usery@gmail.com', 'Kolar123', 'Kolar Usery'),
(747, 'Falguni.Khalid@gmail.com', 'Falguni123', 'Falguni Khalid'),
(748, 'Yuchang.Francisci@gmail.com', 'Yuchang123', 'Yuchang Francisci'),
(749, 'King.Brendel@gmail.com', 'King123', 'King Brendel'),
(750, 'Roddy.Demeyer@gmail.com', 'Roddy123', 'Roddy Demeyer'),
(751, 'Jordanka.Ushiama@gmail.com', 'Jordanka123', 'Jordanka Ushiama'),
(752, 'Byong.Conde@gmail.com', 'Byong123', 'Byong Conde'),
(753, 'Pradeep.Harbusch@gmail.com', 'Pradeep123', 'Pradeep Harbusch'),
(754, 'Chenyi.Feinberg@gmail.com', 'Chenyi123', 'Chenyi Feinberg'),
(755, 'Odysseas.Ressouche@gmail.com', 'Odysseas123', 'Odysseas Ressouche'),
(756, 'Paddy.Brizzi@gmail.com', 'Paddy123', 'Paddy Brizzi'),
(757, 'Florina.Simkin@gmail.com', 'Florina123', 'Florina Simkin'),
(758, 'Fumiyo.Boyle@gmail.com', 'Fumiyo123', 'Fumiyo Boyle'),
(759, 'JiYoung.Chenney@gmail.com', 'JiYoung123', 'JiYoung Chenney'),
(760, 'Phillip.Dratva@gmail.com', 'Phillip123', 'Phillip Dratva'),
(761, 'Sumali.Liedekerke@gmail.com', 'Sumali123', 'Sumali Liedekerke'),
(762, 'Lech.Himler@gmail.com', 'Lech123', 'Lech Himler'),
(763, 'Giap.Bolsens@gmail.com', 'Giap123', 'Giap Bolsens'),
(764, 'Yunming.Beetstra@gmail.com', 'Yunming123', 'Yunming Beetstra'),
(765, 'Goetz.Norsworthy@gmail.com', 'Goetz123', 'Goetz Norsworthy'),
(766, 'Nathalie.Standera@gmail.com', 'Nathalie123', 'Nathalie Standera'),
(767, 'Monique.Doering@gmail.com', 'Monique123', 'Monique Doering'),
(768, 'Ishfaq.Candan@gmail.com', 'Ishfaq123', 'Ishfaq Candan'),
(769, 'Vishv.Bouloucos@gmail.com', 'Vishv123', 'Vishv Bouloucos'),
(770, 'Bedir.Perry@gmail.com', 'Bedir123', 'Bedir Perry'),
(771, 'Guiseppe.Kleiser@gmail.com', 'Guiseppe123', 'Guiseppe Kleiser'),
(772, 'Munehiro.Dayana@gmail.com', 'Munehiro123', 'Munehiro Dayana'),
(773, 'Avishai.Bahr@gmail.com', 'Avishai123', 'Avishai Bahr'),
(774, 'Jacqueline.Masand@gmail.com', 'Jacqueline123', 'Jacqueline Masand'),
(775, 'Xiaoheng.Sluis@gmail.com', 'Xiaoheng123', 'Xiaoheng Sluis'),
(776, 'Mahmut.Skafidas@gmail.com', 'Mahmut123', 'Mahmut Skafidas'),
(777, 'Mizuhito.Kemmerer@gmail.com', 'Mizuhito123', 'Mizuhito Kemmerer'),
(778, 'Selwyn.Merey@gmail.com', 'Selwyn123', 'Selwyn Merey'),
(779, 'Mori.Yavatkar@gmail.com', 'Mori123', 'Mori Yavatkar'),
(780, 'Goncalo.Staudhammer@gmail.com', 'Goncalo123', 'Goncalo Staudhammer'),
(781, 'Patricio.Leuchs@gmail.com', 'Patricio123', 'Patricio Leuchs'),
(782, 'Kish.Perna@gmail.com', 'Kish123', 'Kish Perna'),
(783, 'Moty.Kenevan@gmail.com', 'Moty123', 'Moty Kenevan'),
(784, 'Weijing.Bottner@gmail.com', 'Weijing123', 'Weijing Bottner'),
(785, 'Keiichiro.Marzano@gmail.com', 'Keiichiro123', 'Keiichiro Marzano'),
(786, 'Patricia.dAstous@gmail.com', 'Patricia123', 'Patricia dAstous'),
(787, 'Shiv.Neimat@gmail.com', 'Shiv123', 'Shiv Neimat'),
(788, 'Frazer.Ullian@gmail.com', 'Frazer123', 'Frazer Ullian'),
(789, 'Aruna.Journel@gmail.com', 'Aruna123', 'Aruna Journel'),
(790, 'Yurij.Schonegge@gmail.com', 'Yurij123', 'Yurij Schonegge'),
(791, 'Tadahiko.Sgarro@gmail.com', 'Tadahiko123', 'Tadahiko Sgarro'),
(792, 'Chinya.Birdsall@gmail.com', 'Chinya123', 'Chinya Birdsall'),
(793, 'Oksana.Roisin@gmail.com', 'Oksana123', 'Oksana Roisin'),
(794, 'Teunis.Berztiss@gmail.com', 'Teunis123', 'Teunis Berztiss'),
(795, 'Supot.Naudin@gmail.com', 'Supot123', 'Supot Naudin'),
(796, 'Khoa.Rousseau@gmail.com', 'Khoa123', 'Khoa Rousseau'),
(797, 'Goetz.Hiyoshi@gmail.com', 'Goetz123', 'Goetz Hiyoshi'),
(798, 'Elliott.Bednarek@gmail.com', 'Elliott123', 'Elliott Bednarek'),
(799, 'Gad.Griswold@gmail.com', 'Gad123', 'Gad Griswold'),
(800, 'Yuchang.Matzke@gmail.com', 'Yuchang123', 'Yuchang Matzke'),
(801, 'Uinam.Zschoche@gmail.com', 'Uinam123', 'Uinam Zschoche'),
(802, 'Masato.Setlzner@gmail.com', 'Masato123', 'Masato Setlzner'),
(803, 'Katsuyuki.Velasco@gmail.com', 'Katsuyuki123', 'Katsuyuki Velasco'),
(804, 'Terresa.Benantar@gmail.com', 'Terresa123', 'Terresa Benantar'),
(805, 'Kerhong.Bernick@gmail.com', 'Kerhong123', 'Kerhong Bernick'),
(806, 'Giap.Matzel@gmail.com', 'Giap123', 'Giap Matzel'),
(807, 'Munehiro.Zallocco@gmail.com', 'Munehiro123', 'Munehiro Zallocco'),
(808, 'Chenxi.Leijenhorst@gmail.com', 'Chenxi123', 'Chenxi Leijenhorst'),
(809, 'Shim.Feldhoffer@gmail.com', 'Shim123', 'Shim Feldhoffer'),
(810, 'Lijie.Lunn@gmail.com', 'Lijie123', 'Lijie Lunn'),
(811, 'Ashish.Fortenbacher@gmail.com', 'Ashish123', 'Ashish Fortenbacher'),
(812, 'Berthier.Menhoudj@gmail.com', 'Berthier123', 'Berthier Menhoudj'),
(813, 'Shalesh.Shumilov@gmail.com', 'Shalesh123', 'Shalesh Shumilov'),
(814, 'Nidapan.Dymetman@gmail.com', 'Nidapan123', 'Nidapan Dymetman'),
(815, 'Renny.Pramanik@gmail.com', 'Renny123', 'Renny Pramanik'),
(816, 'Morris.Caine@gmail.com', 'Morris123', 'Morris Caine'),
(817, 'Uri.Rullman@gmail.com', 'Uri123', 'Uri Rullman'),
(818, 'Huan.Monarch@gmail.com', 'Huan123', 'Huan Monarch'),
(819, 'Pascal.Sooriamurthi@gmail.com', 'Pascal123', 'Pascal Sooriamurthi'),
(820, 'Baocai.Pena@gmail.com', 'Baocai123', 'Baocai Pena'),
(821, 'Irena.Schurmann@gmail.com', 'Irena123', 'Irena Schurmann'),
(822, 'Masaru.Passino@gmail.com', 'Masaru123', 'Masaru Passino'),
(823, 'Arfst.Mikschl@gmail.com', 'Arfst123', 'Arfst Mikschl'),
(824, 'Kirk.Kalsbeek@gmail.com', 'Kirk123', 'Kirk Kalsbeek'),
(825, 'Fan.Fairtlough@gmail.com', 'Fan123', 'Fan Fairtlough'),
(826, 'Arnd.Anandan@gmail.com', 'Arnd123', 'Arnd Anandan'),
(827, 'Willard.Danley@gmail.com', 'Willard123', 'Willard Danley'),
(828, 'Godehard.Gammage@gmail.com', 'Godehard123', 'Godehard Gammage'),
(829, 'Alper.Narahara@gmail.com', 'Alper123', 'Alper Narahara'),
(830, 'Fen.Fiebach@gmail.com', 'Fen123', 'Fen Fiebach'),
(831, 'Toong.Driscoll@gmail.com', 'Toong123', 'Toong Driscoll'),
(832, 'Hidde.Bergere@gmail.com', 'Hidde123', 'Hidde Bergere'),
(833, 'Krisda.Gecseg@gmail.com', 'Krisda123', 'Krisda Gecseg'),
(834, 'Huiqun.Rajcani@gmail.com', 'Huiqun123', 'Huiqun Rajcani'),
(835, 'Tomoyuki.Kermarrec@gmail.com', 'Tomoyuki123', 'Tomoyuki Kermarrec'),
(836, 'Jianhua.Leivant@gmail.com', 'Jianhua123', 'Jianhua Leivant'),
(837, 'Chuanti.Karlin@gmail.com', 'Chuanti123', 'Chuanti Karlin'),
(838, 'Deniz.Ramras@gmail.com', 'Deniz123', 'Deniz Ramras'),
(839, 'Gurbir.Katiyar@gmail.com', 'Gurbir123', 'Gurbir Katiyar'),
(840, 'Mohammad.Koshino@gmail.com', 'Mohammad123', 'Mohammad Koshino'),
(841, 'Pranav.Lieberherr@gmail.com', 'Pranav123', 'Pranav Lieberherr'),
(842, 'Berni.Sanella@gmail.com', 'Berni123', 'Berni Sanella'),
(843, 'Honesty.Smeets@gmail.com', 'Honesty123', 'Honesty Smeets'),
(844, 'Dipayan.Koprowski@gmail.com', 'Dipayan123', 'Dipayan Koprowski'),
(845, 'Hidde.Tasistro@gmail.com', 'Hidde123', 'Hidde Tasistro'),
(846, 'Tokuyasu.Serre@gmail.com', 'Tokuyasu123', 'Tokuyasu Serre'),
(847, 'Theirry.Danley@gmail.com', 'Theirry123', 'Theirry Danley'),
(848, 'Fen.Bratsberg@gmail.com', 'Fen123', 'Fen Bratsberg'),
(849, 'Makato.Mayerwieser@gmail.com', 'Makato123', 'Makato Mayerwieser'),
(850, 'Florina.Schapire@gmail.com', 'Florina123', 'Florina Schapire'),
(851, 'Piyawadee.Copas@gmail.com', 'Piyawadee123', 'Piyawadee Copas'),
(852, 'Hercules.Munck@gmail.com', 'Hercules123', 'Hercules Munck'),
(853, 'Yoshinari.Kalloufi@gmail.com', 'Yoshinari123', 'Yoshinari Kalloufi'),
(854, 'Jagoda.Nannarelli@gmail.com', 'Jagoda123', 'Jagoda Nannarelli'),
(855, 'Kwangho.Reinhart@gmail.com', 'Kwangho123', 'Kwangho Reinhart'),
(856, 'Sreenivas.Peck@gmail.com', 'Sreenivas123', 'Sreenivas Peck'),
(857, 'Fusako.Stenning@gmail.com', 'Fusako123', 'Fusako Stenning'),
(858, 'Kenroku.Gonthier@gmail.com', 'Kenroku123', 'Kenroku Gonthier'),
(859, 'King.Bernini@gmail.com', 'King123', 'King Bernini'),
(860, 'Gino.Werthner@gmail.com', 'Gino123', 'Gino Werthner'),
(861, 'Howell.Baek@gmail.com', 'Howell123', 'Howell Baek'),
(862, 'Zhenbing.Kadhim@gmail.com', 'Zhenbing123', 'Zhenbing Kadhim'),
(863, 'Byong.Bhattacharjee@gmail.com', 'Byong123', 'Byong Bhattacharjee'),
(864, 'Elliott.Spieker@gmail.com', 'Elliott123', 'Elliott Spieker'),
(865, 'Danco.Etalle@gmail.com', 'Danco123', 'Danco Etalle'),
(866, 'Fayez.Yeung@gmail.com', 'Fayez123', 'Fayez Yeung'),
(867, 'Billur.Gyorkos@gmail.com', 'Billur123', 'Billur Gyorkos'),
(868, 'Houman.Unno@gmail.com', 'Houman123', 'Houman Unno'),
(869, 'Guangming.Jonsson@gmail.com', 'Guangming123', 'Guangming Jonsson'),
(870, 'Shahid.Leppanen@gmail.com', 'Shahid123', 'Shahid Leppanen'),
(871, 'Aram.Gilg@gmail.com', 'Aram123', 'Aram Gilg'),
(872, 'Karoline.Speel@gmail.com', 'Karoline123', 'Karoline Speel'),
(873, 'Sukumar.Wegerle@gmail.com', 'Sukumar123', 'Sukumar Wegerle'),
(874, 'Mahmut.Borstler@gmail.com', 'Mahmut123', 'Mahmut Borstler'),
(875, 'Filipp.Suri@gmail.com', 'Filipp123', 'Filipp Suri'),
(876, 'Vincent.Papastamatiou@gmail.com', 'Vincent123', 'Vincent Papastamatiou'),
(877, 'Subir.Biron@gmail.com', 'Subir123', 'Subir Biron'),
(878, 'Lakshmi.Deville@gmail.com', 'Lakshmi123', 'Lakshmi Deville'),
(879, 'Muzhong.Chleq@gmail.com', 'Muzhong123', 'Muzhong Chleq'),
(880, 'Weiye.Nitsche@gmail.com', 'Weiye123', 'Weiye Nitsche'),
(881, 'Katsuo.Miake@gmail.com', 'Katsuo123', 'Katsuo Miake'),
(882, 'Fun.Heuser@gmail.com', 'Fun123', 'Fun Heuser'),
(883, 'Shimshon.Champarnaud@gmail.com', 'Shimshon123', 'Shimshon Champarnaud'),
(884, 'Teunis.Kleiser@gmail.com', 'Teunis123', 'Teunis Kleiser'),
(885, 'Rayond.Cronau@gmail.com', 'Rayond123', 'Rayond Cronau'),
(886, 'Sushant.Begiun@gmail.com', 'Sushant123', 'Sushant Begiun'),
(887, 'Lunjin.DeMori@gmail.com', 'Lunjin123', 'Lunjin DeMori'),
(888, 'Kwangho.Dredge@gmail.com', 'Kwangho123', 'Kwangho Dredge'),
(889, 'Cheong.Coors@gmail.com', 'Cheong123', 'Cheong Coors'),
(890, 'Ramzi.Furudate@gmail.com', 'Ramzi123', 'Ramzi Furudate'),
(891, 'Susanne.Jiang@gmail.com', 'Susanne123', 'Susanne Jiang'),
(892, 'Kazunori.Vieth@gmail.com', 'Kazunori123', 'Kazunori Vieth'),
(893, 'Danil.Kropatsch@gmail.com', 'Danil123', 'Danil Kropatsch'),
(894, 'Suebskul.Srimani@gmail.com', 'Suebskul123', 'Suebskul Srimani'),
(895, 'Vishwani.Petersohn@gmail.com', 'Vishwani123', 'Vishwani Petersohn'),
(896, 'Adil.Taubenfeld@gmail.com', 'Adil123', 'Adil Taubenfeld'),
(897, 'Arno.Kumaresan@gmail.com', 'Arno123', 'Arno Kumaresan'),
(898, 'Munenori.Markovitch@gmail.com', 'Munenori123', 'Munenori Markovitch'),
(899, 'Valery.Rousseau@gmail.com', 'Valery123', 'Valery Rousseau'),
(900, 'Ferdinand.Prenel@gmail.com', 'Ferdinand123', 'Ferdinand Prenel'),
(901, 'Chrisa.Narahara@gmail.com', 'Chrisa123', 'Chrisa Narahara'),
(902, 'Inderjeet.Perly@gmail.com', 'Inderjeet123', 'Inderjeet Perly'),
(903, 'Visit.Nyanchama@gmail.com', 'Visit123', 'Visit Nyanchama'),
(904, 'Debatosh.Colorni@gmail.com', 'Debatosh123', 'Debatosh Colorni'),
(905, 'Jianhui.Aloia@gmail.com', 'Jianhui123', 'Jianhui Aloia'),
(906, 'Munehiro.Carrere@gmail.com', 'Munehiro123', 'Munehiro Carrere'),
(907, 'JiYoung.Luks@gmail.com', 'JiYoung123', 'JiYoung Luks'),
(908, 'Rajmohan.Koblick@gmail.com', 'Rajmohan123', 'Rajmohan Koblick'),
(909, 'Georgi.Atchley@gmail.com', 'Georgi123', 'Georgi Atchley'),
(910, 'Arco.Jervis@gmail.com', 'Arco123', 'Arco Jervis'),
(911, 'Shay.Casley@gmail.com', 'Shay123', 'Shay Casley'),
(912, 'Oscal.Fasbender@gmail.com', 'Oscal123', 'Oscal Fasbender'),
(913, 'Narain.Thummel@gmail.com', 'Narain123', 'Narain Thummel'),
(914, 'Mizuhito.Prochazka@gmail.com', 'Mizuhito123', 'Mizuhito Prochazka'),
(915, 'Valery.Skafidas@gmail.com', 'Valery123', 'Valery Skafidas'),
(916, 'Make.Spataro@gmail.com', 'Make123', 'Make Spataro'),
(917, 'Tesuya.Slaats@gmail.com', 'Tesuya123', 'Tesuya Slaats'),
(918, 'Susumu.Reghbati@gmail.com', 'Susumu123', 'Susumu Reghbati'),
(919, 'Reinhard.Lindenbaum@gmail.com', 'Reinhard123', 'Reinhard Lindenbaum'),
(920, 'Ronghao.Narahara@gmail.com', 'Ronghao123', 'Ronghao Narahara'),
(921, 'Mara.Bahi@gmail.com', 'Mara123', 'Mara Bahi'),
(922, 'Kyoichi.Wossner@gmail.com', 'Kyoichi123', 'Kyoichi Wossner'),
(923, 'Younwoo.Maquelin@gmail.com', 'Younwoo123', 'Younwoo Maquelin'),
(924, 'Hironoby.Atchley@gmail.com', 'Hironoby123', 'Hironoby Atchley'),
(925, 'Heng.Waterhouse@gmail.com', 'Heng123', 'Heng Waterhouse'),
(926, 'Leni.Eppinger@gmail.com', 'Leni123', 'Leni Eppinger'),
(927, 'Gal.Scallan@gmail.com', 'Gal123', 'Gal Scallan'),
(928, 'Udaiprakash.Schmezko@gmail.com', 'Udaiprakash123', 'Udaiprakash Schmezko'),
(929, 'Sumali.Arlazarov@gmail.com', 'Sumali123', 'Sumali Arlazarov'),
(930, 'Arch.Minakawa@gmail.com', 'Arch123', 'Arch Minakawa'),
(931, 'Abdulla.Beutelspacher@gmail.com', 'Abdulla123', 'Abdulla Beutelspacher'),
(932, 'Avishai.Picci@gmail.com', 'Avishai123', 'Avishai Picci'),
(933, 'Juyoung.Seghrouchni@gmail.com', 'Juyoung123', 'Juyoung Seghrouchni'),
(934, 'Bartek.Strooper@gmail.com', 'Bartek123', 'Bartek Strooper'),
(935, 'Morris.Famili@gmail.com', 'Morris123', 'Morris Famili'),
(936, 'Mountaz.Schicker@gmail.com', 'Mountaz123', 'Mountaz Schicker'),
(937, 'Anyuan.Nanard@gmail.com', 'Anyuan123', 'Anyuan Nanard'),
(938, 'Shaowei.Iisaku@gmail.com', 'Shaowei123', 'Shaowei Iisaku'),
(939, 'Matk.Akazan@gmail.com', 'Matk123', 'Matk Akazan'),
(940, 'Aleksander.Fioravanti@gmail.com', 'Aleksander123', 'Aleksander Fioravanti'),
(941, 'Katsuyuki.Norsworthy@gmail.com', 'Katsuyuki123', 'Katsuyuki Norsworthy'),
(942, 'Toshimitsu.Larfeldt@gmail.com', 'Toshimitsu123', 'Toshimitsu Larfeldt'),
(943, 'Berna.Skafidas@gmail.com', 'Berna123', 'Berna Skafidas'),
(944, 'Remko.Zyda@gmail.com', 'Remko123', 'Remko Zyda'),
(945, 'Kazuhiro.Kushnir@gmail.com', 'Kazuhiro123', 'Kazuhiro Kushnir'),
(946, 'Shaz.Kabayashi@gmail.com', 'Shaz123', 'Shaz Kabayashi'),
(947, 'Gor.Usery@gmail.com', 'Gor123', 'Gor Usery'),
(948, 'Shigehito.Brodie@gmail.com', 'Shigehito123', 'Shigehito Brodie'),
(949, 'Shigeichiro.Wroclawski@gmail.com', 'Shigeichiro123', 'Shigeichiro Wroclawski'),
(950, 'Sushant.Staylopatis@gmail.com', 'Sushant123', 'Sushant Staylopatis'),
(951, 'Marco.Iisaku@gmail.com', 'Marco123', 'Marco Iisaku'),
(952, 'Inderjeet.Bharadwaj@gmail.com', 'Inderjeet123', 'Inderjeet Bharadwaj'),
(953, 'Jahangir.Laventhal@gmail.com', 'Jahangir123', 'Jahangir Laventhal'),
(954, 'Ranga.Burnard@gmail.com', 'Ranga123', 'Ranga Burnard'),
(955, 'Urs.Danley@gmail.com', 'Urs123', 'Urs Danley'),
(956, 'Arno.Picel@gmail.com', 'Arno123', 'Arno Picel'),
(957, 'Duke.Schnabel@gmail.com', 'Duke123', 'Duke Schnabel'),
(958, 'Huican.Katalagarianos@gmail.com', 'Huican123', 'Huican Katalagarianos'),
(959, 'Kerryn.Vigier@gmail.com', 'Kerryn123', 'Kerryn Vigier'),
(960, 'Billur.Braunschweig@gmail.com', 'Billur123', 'Billur Braunschweig'),
(961, 'Weiwu.Choobineh@gmail.com', 'Weiwu123', 'Weiwu Choobineh'),
(962, 'Naraig.Kugler@gmail.com', 'Naraig123', 'Naraig Kugler'),
(963, 'Hatsukazu.Swist@gmail.com', 'Hatsukazu123', 'Hatsukazu Swist'),
(964, 'Takushi.Bolsens@gmail.com', 'Takushi123', 'Takushi Bolsens'),
(965, 'Eckart.Braunschweig@gmail.com', 'Eckart123', 'Eckart Braunschweig'),
(966, 'Danel.Pardalos@gmail.com', 'Danel123', 'Danel Pardalos'),
(967, 'Eran.Adachi@gmail.com', 'Eran123', 'Eran Adachi'),
(968, 'Lakshmi.Kolinko@gmail.com', 'Lakshmi123', 'Lakshmi Kolinko'),
(969, 'Premal.Noriega@gmail.com', 'Premal123', 'Premal Noriega'),
(970, 'Gen.Tiemann@gmail.com', 'Gen123', 'Gen Tiemann'),
(971, 'Isamu.Vadhan@gmail.com', 'Isamu123', 'Isamu Vadhan'),
(972, 'Fumiko.Asser@gmail.com', 'Fumiko123', 'Fumiko Asser'),
(973, 'Valdiodio.Raczkowsky@gmail.com', 'Valdiodio123', 'Valdiodio Raczkowsky'),
(974, 'Muneo.Papsdorf@gmail.com', 'Muneo123', 'Muneo Papsdorf'),
(975, 'Peternela.Birnbaum@gmail.com', 'Peternela123', 'Peternela Birnbaum'),
(976, 'Hitomi.Valette@gmail.com', 'Hitomi123', 'Hitomi Valette'),
(977, 'Toong.Murrill@gmail.com', 'Toong123', 'Toong Murrill'),
(978, 'Huiqun.Bellone@gmail.com', 'Huiqun123', 'Huiqun Bellone'),
(979, 'Elrique.Raney@gmail.com', 'Elrique123', 'Elrique Raney'),
(980, 'Filipp.Munawer@gmail.com', 'Filipp123', 'Filipp Munawer'),
(981, 'Sugwoo.Dulin@gmail.com', 'Sugwoo123', 'Sugwoo Dulin'),
(982, 'Yishay.Decleir@gmail.com', 'Yishay123', 'Yishay Decleir'),
(983, 'Somnath.Parascandalo@gmail.com', 'Somnath123', 'Somnath Parascandalo'),
(984, 'Pranjal.Billawala@gmail.com', 'Pranjal123', 'Pranjal Billawala'),
(985, 'Chiradeep.Furedi@gmail.com', 'Chiradeep123', 'Chiradeep Furedi'),
(986, 'Masako.Schiper@gmail.com', 'Masako123', 'Masako Schiper'),
(987, 'Flemming.Baezner@gmail.com', 'Flemming123', 'Flemming Baezner'),
(988, 'Chinya.Deyuan@gmail.com', 'Chinya123', 'Chinya Deyuan'),
(989, 'Sumali.Candan@gmail.com', 'Sumali123', 'Sumali Candan'),
(990, 'Shin.Foote@gmail.com', 'Shin123', 'Shin Foote'),
(991, 'Munehiro.Aingworth@gmail.com', 'Munehiro123', 'Munehiro Aingworth'),
(992, 'Zhensheng.Juneja@gmail.com', 'Zhensheng123', 'Zhensheng Juneja'),
(993, 'Arve.Erde@gmail.com', 'Arve123', 'Arve Erde'),
(994, 'Divine.Aingworth@gmail.com', 'Divine123', 'Divine Aingworth'),
(995, 'Chenye.Hertweck@gmail.com', 'Chenye123', 'Chenye Hertweck'),
(996, 'Matk.Rahimi@gmail.com', 'Matk123', 'Matk Rahimi'),
(997, 'Alselm.Parascandalo@gmail.com', 'Alselm123', 'Alselm Parascandalo'),
(998, 'Marlo.Kandlur@gmail.com', 'Marlo123', 'Marlo Kandlur'),
(999, 'Insup.Benveniste@gmail.com', 'Insup123', 'Insup Benveniste'),
(1000, 'Alain.Bonifati@gmail.com', 'Alain123', 'Alain Bonifati');

INSERT INTO posts(idpost, fechaPublicacion, descripcion, categoria, codigoEstudiante) VALUES
(1, '2021-06-08', 'Mi primer post!', 'Quejas', 478),
(2, '2021-03-01', 'Mi primer post!', 'Dudas', 924),
(3, '2021-01-22', 'Mi primer post!', 'Informacion', 545),
(4, '2021-09-03', 'Mi primer post!', 'Informacion', 116),
(5, '2021-05-29', 'Mi primer post!', 'Informacion', 576),
(6, '2021-12-03', 'Mi primer post!', 'Quejas', 40),
(7, '2022-04-02', 'Mi primer post!', 'Eventos', 529),
(8, '2022-03-01', 'Mi primer post!', 'Dudas', 749),
(9, '2021-10-01', 'Mi primer post!', 'Eventos', 171),
(10, '2021-01-02', 'Mi primer post!', 'Eventos', 374),
(11, '2022-04-11', 'Mi primer post!', 'Eventos', 264),
(12, '2021-07-01', 'Mi primer post!', 'Quejas', 223),
(13, '2021-01-03', 'Mi primer post!', 'Dudas', 846),
(14, '2021-03-03', 'Mi primer post!', 'Dudas', 321),
(15, '2022-04-06', 'Mi primer post!', 'Dudas', 369),
(16, '2021-08-03', 'Mi primer post!', 'Informacion', 537),
(17, '2021-09-25', 'Mi primer post!', 'Quejas', 708),
(18, '2021-05-08', 'Mi primer post!', 'Quejas', 490),
(19, '2021-03-30', 'Mi primer post!', 'Eventos', 480),
(20, '2022-03-06', 'Mi primer post!', 'Quejas', 101),
(21, '2022-05-27', 'Mi primer post!', 'Eventos', 15),
(22, '2022-03-22', 'Mi primer post!', 'Quejas', 4),
(23, '2021-06-19', 'Mi primer post!', 'Informacion', 700),
(24, '2021-11-10', 'Mi primer post!', 'Dudas', 459),
(25, '2022-05-25', 'Mi primer post!', 'Eventos', 564),
(26, '2021-11-03', 'Mi primer post!', 'Dudas', 183),
(27, '2021-09-30', 'Mi primer post!', 'Informacion', 230),
(28, '2021-05-18', 'Mi primer post!', 'Dudas', 614),
(29, '2021-05-08', 'Mi primer post!', 'Informacion', 896),
(30, '2021-10-08', 'Mi primer post!', 'Informacion', 55),
(31, '2021-02-26', 'Mi primer post!', 'Quejas', 708),
(32, '2021-08-16', 'Mi primer post!', 'Informacion', 470),
(33, '2021-11-24', 'Mi primer post!', 'Informacion', 648),
(34, '2021-08-04', 'Mi primer post!', 'Quejas', 164),
(35, '2021-02-14', 'Mi primer post!', 'Quejas', 316),
(36, '2022-02-28', 'Mi primer post!', 'Quejas', 309),
(37, '2021-09-22', 'Mi primer post!', 'Informacion', 465),
(38, '2022-03-26', 'Mi primer post!', 'Quejas', 233),
(39, '2021-11-13', 'Mi primer post!', 'Dudas', 686),
(40, '2021-10-19', 'Mi primer post!', 'Eventos', 338),
(41, '2021-01-11', 'Mi primer post!', 'Informacion', 959),
(42, '2022-01-27', 'Mi primer post!', 'Quejas', 588),
(43, '2021-05-23', 'Mi primer post!', 'Eventos', 991),
(44, '2022-05-20', 'Mi primer post!', 'Quejas', 79),
(45, '2021-02-12', 'Mi primer post!', 'Quejas', 109),
(46, '2021-07-08', 'Mi primer post!', 'Quejas', 653),
(47, '2021-06-07', 'Mi primer post!', 'Dudas', 388),
(48, '2021-09-16', 'Mi primer post!', 'Eventos', 765),
(49, '2021-05-30', 'Mi primer post!', 'Informacion', 385),
(50, '2021-04-05', 'Mi primer post!', 'Eventos', 461),
(51, '2021-06-21', 'Mi primer post!', 'Eventos', 146),
(52, '2021-05-14', 'Mi primer post!', 'Dudas', 991),
(53, '2022-05-26', 'Mi primer post!', 'Dudas', 594),
(54, '2021-10-29', 'Mi primer post!', 'Eventos', 868),
(55, '2021-08-08', 'Mi primer post!', 'Quejas', 386),
(56, '2022-03-07', 'Mi primer post!', 'Eventos', 560),
(57, '2022-05-25', 'Mi primer post!', 'Informacion', 129),
(58, '2021-09-22', 'Mi primer post!', 'Quejas', 101),
(59, '2021-10-11', 'Mi primer post!', 'Informacion', 329),
(60, '2021-07-25', 'Mi primer post!', 'Informacion', 852),
(61, '2021-06-17', 'Mi primer post!', 'Informacion', 878),
(62, '2021-07-27', 'Mi primer post!', 'Dudas', 325),
(63, '2021-06-28', 'Mi primer post!', 'Quejas', 380),
(64, '2021-05-25', 'Mi primer post!', 'Informacion', 61),
(65, '2021-08-21', 'Mi primer post!', 'Eventos', 492),
(66, '2021-11-29', 'Mi primer post!', 'Informacion', 146),
(67, '2021-09-29', 'Mi primer post!', 'Informacion', 129),
(68, '2021-10-28', 'Mi primer post!', 'Dudas', 347),
(69, '2022-04-19', 'Mi primer post!', 'Quejas', 125),
(70, '2021-05-21', 'Mi primer post!', 'Quejas', 375),
(71, '2021-11-10', 'Mi primer post!', 'Dudas', 609),
(72, '2022-03-09', 'Mi primer post!', 'Dudas', 262),
(73, '2021-10-12', 'Mi primer post!', 'Eventos', 20),
(74, '2021-01-18', 'Mi primer post!', 'Informacion', 899),
(75, '2021-01-02', 'Mi primer post!', 'Eventos', 725),
(76, '2021-11-09', 'Mi primer post!', 'Informacion', 838),
(77, '2021-10-23', 'Mi primer post!', 'Dudas', 531),
(78, '2021-11-12', 'Mi primer post!', 'Eventos', 212),
(79, '2022-01-21', 'Mi primer post!', 'Informacion', 806),
(80, '2021-08-16', 'Mi primer post!', 'Dudas', 356),
(81, '2021-12-20', 'Mi primer post!', 'Informacion', 234),
(82, '2021-10-29', 'Mi primer post!', 'Dudas', 26),
(83, '2021-02-05', 'Mi primer post!', 'Quejas', 666),
(84, '2021-01-04', 'Mi primer post!', 'Dudas', 139),
(85, '2021-12-16', 'Mi primer post!', 'Quejas', 834),
(86, '2021-12-19', 'Mi primer post!', 'Informacion', 385),
(87, '2021-07-20', 'Mi primer post!', 'Quejas', 370),
(88, '2022-04-19', 'Mi primer post!', 'Dudas', 654),
(89, '2021-07-01', 'Mi primer post!', 'Eventos', 439),
(90, '2022-04-30', 'Mi primer post!', 'Eventos', 863),
(91, '2022-02-05', 'Mi primer post!', 'Informacion', 166),
(92, '2021-09-28', 'Mi primer post!', 'Dudas', 873),
(93, '2022-03-24', 'Mi primer post!', 'Dudas', 614),
(94, '2021-12-02', 'Mi primer post!', 'Dudas', 788),
(95, '2021-05-02', 'Mi primer post!', 'Quejas', 673),
(96, '2021-02-05', 'Mi primer post!', 'Eventos', 74),
(97, '2022-01-27', 'Mi primer post!', 'Eventos', 358),
(98, '2021-09-15', 'Mi primer post!', 'Quejas', 867),
(99, '2021-09-14', 'Mi primer post!', 'Dudas', 470),
(100, '2021-08-06', 'Mi primer post!', 'Informacion', 223),
(101, '2022-05-17', 'Mi primer post!', 'Informacion', 748),
(102, '2021-12-13', 'Mi primer post!', 'Quejas', 268),
(103, '2022-04-23', 'Mi primer post!', 'Dudas', 693),
(104, '2021-05-06', 'Mi primer post!', 'Quejas', 676),
(105, '2021-03-31', 'Mi primer post!', 'Dudas', 565),
(106, '2021-12-04', 'Mi primer post!', 'Eventos', 980),
(107, '2021-10-18', 'Mi primer post!', 'Informacion', 103),
(108, '2021-10-30', 'Mi primer post!', 'Informacion', 163),
(109, '2021-10-17', 'Mi primer post!', 'Quejas', 634),
(110, '2021-04-08', 'Mi primer post!', 'Quejas', 239),
(111, '2022-03-26', 'Mi primer post!', 'Informacion', 378),
(112, '2021-12-25', 'Mi primer post!', 'Informacion', 935),
(113, '2021-02-06', 'Mi primer post!', 'Quejas', 966),
(114, '2022-05-18', 'Mi primer post!', 'Informacion', 908),
(115, '2022-05-10', 'Mi primer post!', 'Informacion', 28),
(116, '2021-07-26', 'Mi primer post!', 'Quejas', 515),
(117, '2022-01-08', 'Mi primer post!', 'Eventos', 51),
(118, '2022-02-27', 'Mi primer post!', 'Eventos', 956),
(119, '2021-10-31', 'Mi primer post!', 'Informacion', 441),
(120, '2021-10-15', 'Mi primer post!', 'Dudas', 710),
(121, '2021-05-08', 'Mi primer post!', 'Quejas', 808),
(122, '2021-08-13', 'Mi primer post!', 'Eventos', 612),
(123, '2021-03-18', 'Mi primer post!', 'Quejas', 47),
(124, '2022-02-10', 'Mi primer post!', 'Informacion', 393),
(125, '2022-04-08', 'Mi primer post!', 'Quejas', 757),
(126, '2021-08-20', 'Mi primer post!', 'Informacion', 339),
(127, '2021-03-06', 'Mi primer post!', 'Informacion', 486),
(128, '2021-06-26', 'Mi primer post!', 'Eventos', 131),
(129, '2021-08-10', 'Mi primer post!', 'Quejas', 966),
(130, '2022-04-19', 'Mi primer post!', 'Informacion', 501),
(131, '2021-07-07', 'Mi primer post!', 'Eventos', 960),
(132, '2022-04-30', 'Mi primer post!', 'Quejas', 880),
(133, '2022-05-04', 'Mi primer post!', 'Dudas', 202),
(134, '2021-09-23', 'Mi primer post!', 'Informacion', 491),
(135, '2021-10-04', 'Mi primer post!', 'Dudas', 664),
(136, '2021-03-26', 'Mi primer post!', 'Informacion', 837),
(137, '2021-02-28', 'Mi primer post!', 'Informacion', 484),
(138, '2021-08-30', 'Mi primer post!', 'Informacion', 124),
(139, '2022-02-18', 'Mi primer post!', 'Dudas', 313),
(140, '2021-12-10', 'Mi primer post!', 'Quejas', 18),
(141, '2022-01-31', 'Mi primer post!', 'Dudas', 962),
(142, '2021-09-07', 'Mi primer post!', 'Dudas', 308),
(143, '2021-10-20', 'Mi primer post!', 'Eventos', 272),
(144, '2021-03-22', 'Mi primer post!', 'Eventos', 297),
(145, '2021-11-17', 'Mi primer post!', 'Dudas', 611),
(146, '2021-04-02', 'Mi primer post!', 'Informacion', 357),
(147, '2021-12-13', 'Mi primer post!', 'Eventos', 770),
(148, '2021-06-15', 'Mi primer post!', 'Informacion', 440),
(149, '2021-02-04', 'Mi primer post!', 'Dudas', 754),
(150, '2021-02-01', 'Mi primer post!', 'Eventos', 820),
(151, '2021-01-17', 'Mi primer post!', 'Quejas', 967),
(152, '2022-02-14', 'Mi primer post!', 'Informacion', 149),
(153, '2021-10-24', 'Mi primer post!', 'Dudas', 832),
(154, '2021-11-03', 'Mi primer post!', 'Informacion', 376),
(155, '2021-01-20', 'Mi primer post!', 'Informacion', 409),
(156, '2022-01-17', 'Mi primer post!', 'Eventos', 226),
(157, '2021-04-21', 'Mi primer post!', 'Eventos', 157),
(158, '2021-12-25', 'Mi primer post!', 'Eventos', 165),
(159, '2021-09-01', 'Mi primer post!', 'Eventos', 539),
(160, '2021-01-29', 'Mi primer post!', 'Dudas', 782),
(161, '2021-07-05', 'Mi primer post!', 'Eventos', 613),
(162, '2021-01-06', 'Mi primer post!', 'Eventos', 911),
(163, '2022-02-20', 'Mi primer post!', 'Informacion', 499),
(164, '2022-01-01', 'Mi primer post!', 'Quejas', 818),
(165, '2021-04-12', 'Mi primer post!', 'Dudas', 386),
(166, '2021-05-08', 'Mi primer post!', 'Eventos', 328),
(167, '2021-02-07', 'Mi primer post!', 'Quejas', 394),
(168, '2021-12-22', 'Mi primer post!', 'Quejas', 608),
(169, '2021-04-23', 'Mi primer post!', 'Dudas', 862),
(170, '2021-03-15', 'Mi primer post!', 'Eventos', 581),
(171, '2021-07-02', 'Mi primer post!', 'Informacion', 563),
(172, '2022-03-05', 'Mi primer post!', 'Eventos', 76),
(173, '2021-03-07', 'Mi primer post!', 'Informacion', 747),
(174, '2021-02-18', 'Mi primer post!', 'Quejas', 61),
(175, '2021-01-15', 'Mi primer post!', 'Quejas', 197),
(176, '2022-05-02', 'Mi primer post!', 'Dudas', 729),
(177, '2021-01-21', 'Mi primer post!', 'Informacion', 343),
(178, '2022-04-16', 'Mi primer post!', 'Quejas', 295),
(179, '2022-01-09', 'Mi primer post!', 'Eventos', 761),
(180, '2022-03-21', 'Mi primer post!', 'Informacion', 802),
(181, '2022-03-25', 'Mi primer post!', 'Informacion', 633),
(182, '2022-04-10', 'Mi primer post!', 'Informacion', 603),
(183, '2022-01-16', 'Mi primer post!', 'Dudas', 334),
(184, '2021-10-18', 'Mi primer post!', 'Informacion', 964),
(185, '2021-01-21', 'Mi primer post!', 'Informacion', 527),
(186, '2021-07-28', 'Mi primer post!', 'Quejas', 23),
(187, '2021-05-15', 'Mi primer post!', 'Dudas', 908),
(188, '2022-03-07', 'Mi primer post!', 'Eventos', 318),
(189, '2021-11-22', 'Mi primer post!', 'Eventos', 161),
(190, '2022-02-23', 'Mi primer post!', 'Informacion', 111),
(191, '2021-09-27', 'Mi primer post!', 'Dudas', 121),
(192, '2022-05-16', 'Mi primer post!', 'Quejas', 443),
(193, '2022-03-08', 'Mi primer post!', 'Informacion', 617),
(194, '2021-06-03', 'Mi primer post!', 'Quejas', 427),
(195, '2021-03-18', 'Mi primer post!', 'Dudas', 680),
(196, '2021-10-22', 'Mi primer post!', 'Quejas', 935),
(197, '2022-01-05', 'Mi primer post!', 'Quejas', 835),
(198, '2022-05-03', 'Mi primer post!', 'Quejas', 946),
(199, '2022-03-08', 'Mi primer post!', 'Quejas', 950),
(200, '2022-02-20', 'Mi primer post!', 'Quejas', 213),
(201, '2021-11-28', 'Mi primer post!', 'Informacion', 741),
(202, '2021-03-29', 'Mi primer post!', 'Informacion', 141),
(203, '2021-06-01', 'Mi primer post!', 'Quejas', 794),
(204, '2021-08-02', 'Mi primer post!', 'Informacion', 381),
(205, '2021-12-21', 'Mi primer post!', 'Quejas', 833),
(206, '2021-05-30', 'Mi primer post!', 'Dudas', 201),
(207, '2021-01-25', 'Mi primer post!', 'Eventos', 772),
(208, '2021-07-04', 'Mi primer post!', 'Quejas', 575),
(209, '2021-11-12', 'Mi primer post!', 'Eventos', 553),
(210, '2021-11-03', 'Mi primer post!', 'Quejas', 712),
(211, '2021-08-03', 'Mi primer post!', 'Dudas', 226),
(212, '2021-05-05', 'Mi primer post!', 'Eventos', 534),
(213, '2021-11-28', 'Mi primer post!', 'Informacion', 784),
(214, '2021-08-18', 'Mi primer post!', 'Dudas', 118),
(215, '2021-06-21', 'Mi primer post!', 'Informacion', 623),
(216, '2021-09-26', 'Mi primer post!', 'Informacion', 110),
(217, '2021-09-13', 'Mi primer post!', 'Quejas', 716),
(218, '2022-04-24', 'Mi primer post!', 'Eventos', 472),
(219, '2021-07-07', 'Mi primer post!', 'Eventos', 761),
(220, '2021-03-04', 'Mi primer post!', 'Dudas', 39),
(221, '2021-08-09', 'Mi primer post!', 'Informacion', 150),
(222, '2022-02-22', 'Mi primer post!', 'Quejas', 296),
(223, '2021-05-11', 'Mi primer post!', 'Eventos', 89),
(224, '2021-05-17', 'Mi primer post!', 'Quejas', 590),
(225, '2021-04-07', 'Mi primer post!', 'Quejas', 23),
(226, '2021-03-09', 'Mi primer post!', 'Dudas', 859),
(227, '2022-05-20', 'Mi primer post!', 'Informacion', 434),
(228, '2021-03-28', 'Mi primer post!', 'Eventos', 630),
(229, '2022-04-15', 'Mi primer post!', 'Dudas', 579),
(230, '2021-03-14', 'Mi primer post!', 'Eventos', 821),
(231, '2021-01-10', 'Mi primer post!', 'Informacion', 914),
(232, '2022-03-17', 'Mi primer post!', 'Quejas', 239),
(233, '2022-02-27', 'Mi primer post!', 'Eventos', 135),
(234, '2021-03-11', 'Mi primer post!', 'Dudas', 964),
(235, '2021-01-14', 'Mi primer post!', 'Dudas', 645),
(236, '2021-08-16', 'Mi primer post!', 'Dudas', 257),
(237, '2021-12-08', 'Mi primer post!', 'Informacion', 840),
(238, '2021-12-04', 'Mi primer post!', 'Informacion', 727),
(239, '2021-10-28', 'Mi primer post!', 'Eventos', 151),
(240, '2021-04-08', 'Mi primer post!', 'Eventos', 52),
(241, '2021-08-12', 'Mi primer post!', 'Dudas', 175),
(242, '2021-08-22', 'Mi primer post!', 'Dudas', 310),
(243, '2021-01-29', 'Mi primer post!', 'Eventos', 28),
(244, '2022-05-18', 'Mi primer post!', 'Quejas', 337),
(245, '2021-12-30', 'Mi primer post!', 'Eventos', 195),
(246, '2022-05-08', 'Mi primer post!', 'Dudas', 422),
(247, '2022-05-14', 'Mi primer post!', 'Informacion', 551),
(248, '2021-02-25', 'Mi primer post!', 'Dudas', 124),
(249, '2021-09-15', 'Mi primer post!', 'Informacion', 665),
(250, '2021-03-22', 'Mi primer post!', 'Dudas', 148),
(251, '2021-03-18', 'Mi primer post!', 'Dudas', 336),
(252, '2021-05-09', 'Mi primer post!', 'Dudas', 711),
(253, '2021-02-25', 'Mi primer post!', 'Eventos', 337),
(254, '2021-10-31', 'Mi primer post!', 'Dudas', 975),
(255, '2021-10-13', 'Mi primer post!', 'Dudas', 109),
(256, '2021-08-20', 'Mi primer post!', 'Informacion', 199),
(257, '2021-12-14', 'Mi primer post!', 'Quejas', 549),
(258, '2021-08-15', 'Mi primer post!', 'Eventos', 777),
(259, '2022-05-04', 'Mi primer post!', 'Eventos', 935),
(260, '2022-01-12', 'Mi primer post!', 'Eventos', 149),
(261, '2021-12-06', 'Mi primer post!', 'Informacion', 247),
(262, '2022-05-27', 'Mi primer post!', 'Quejas', 414),
(263, '2021-04-30', 'Mi primer post!', 'Quejas', 935),
(264, '2021-04-15', 'Mi primer post!', 'Quejas', 896),
(265, '2021-11-26', 'Mi primer post!', 'Quejas', 288),
(266, '2021-05-09', 'Mi primer post!', 'Informacion', 669),
(267, '2021-08-21', 'Mi primer post!', 'Dudas', 673),
(268, '2021-04-27', 'Mi primer post!', 'Eventos', 476),
(269, '2022-03-07', 'Mi primer post!', 'Informacion', 585),
(270, '2021-01-15', 'Mi primer post!', 'Dudas', 430),
(271, '2021-10-15', 'Mi primer post!', 'Dudas', 890),
(272, '2021-04-06', 'Mi primer post!', 'Quejas', 321),
(273, '2022-05-07', 'Mi primer post!', 'Quejas', 262),
(274, '2022-03-12', 'Mi primer post!', 'Eventos', 402),
(275, '2021-08-12', 'Mi primer post!', 'Eventos', 194),
(276, '2021-05-14', 'Mi primer post!', 'Quejas', 654),
(277, '2022-03-03', 'Mi primer post!', 'Quejas', 475),
(278, '2021-10-09', 'Mi primer post!', 'Quejas', 114),
(279, '2021-07-18', 'Mi primer post!', 'Quejas', 656),
(280, '2022-03-28', 'Mi primer post!', 'Quejas', 12),
(281, '2021-03-16', 'Mi primer post!', 'Dudas', 975),
(282, '2021-04-16', 'Mi primer post!', 'Eventos', 691),
(283, '2021-08-27', 'Mi primer post!', 'Informacion', 992),
(284, '2021-12-10', 'Mi primer post!', 'Quejas', 403),
(285, '2021-07-15', 'Mi primer post!', 'Informacion', 811),
(286, '2021-09-07', 'Mi primer post!', 'Eventos', 654),
(287, '2021-12-06', 'Mi primer post!', 'Dudas', 161),
(288, '2021-08-22', 'Mi primer post!', 'Eventos', 442),
(289, '2021-11-11', 'Mi primer post!', 'Quejas', 788),
(290, '2021-12-04', 'Mi primer post!', 'Quejas', 22),
(291, '2022-04-09', 'Mi primer post!', 'Eventos', 758),
(292, '2021-02-21', 'Mi primer post!', 'Informacion', 186),
(293, '2021-11-11', 'Mi primer post!', 'Eventos', 424),
(294, '2021-10-28', 'Mi primer post!', 'Quejas', 100),
(295, '2021-04-28', 'Mi primer post!', 'Informacion', 544),
(296, '2021-04-22', 'Mi primer post!', 'Quejas', 519),
(297, '2022-04-24', 'Mi primer post!', 'Quejas', 188),
(298, '2021-02-24', 'Mi primer post!', 'Informacion', 658),
(299, '2021-07-06', 'Mi primer post!', 'Informacion', 813),
(300, '2021-04-26', 'Mi primer post!', 'Quejas', 660),
(301, '2021-03-09', 'Mi primer post!', 'Dudas', 750),
(302, '2021-12-28', 'Mi primer post!', 'Informacion', 623),
(303, '2022-04-30', 'Mi primer post!', 'Eventos', 76),
(304, '2022-02-26', 'Mi primer post!', 'Dudas', 800),
(305, '2022-01-01', 'Mi primer post!', 'Eventos', 810),
(306, '2022-03-09', 'Mi primer post!', 'Informacion', 53),
(307, '2021-09-27', 'Mi primer post!', 'Eventos', 694),
(308, '2021-12-10', 'Mi primer post!', 'Dudas', 892),
(309, '2021-03-22', 'Mi primer post!', 'Eventos', 838),
(310, '2021-04-14', 'Mi primer post!', 'Informacion', 888),
(311, '2021-06-29', 'Mi primer post!', 'Quejas', 725),
(312, '2021-01-14', 'Mi primer post!', 'Quejas', 376),
(313, '2021-03-17', 'Mi primer post!', 'Informacion', 716),
(314, '2021-12-12', 'Mi primer post!', 'Informacion', 917),
(315, '2021-04-19', 'Mi primer post!', 'Quejas', 173),
(316, '2021-02-22', 'Mi primer post!', 'Eventos', 959),
(317, '2021-07-08', 'Mi primer post!', 'Dudas', 829),
(318, '2021-02-07', 'Mi primer post!', 'Dudas', 456),
(319, '2022-03-08', 'Mi primer post!', 'Informacion', 280),
(320, '2021-01-19', 'Mi primer post!', 'Eventos', 628),
(321, '2022-02-02', 'Mi primer post!', 'Quejas', 659),
(322, '2022-05-01', 'Mi primer post!', 'Eventos', 482),
(323, '2021-04-06', 'Mi primer post!', 'Quejas', 276),
(324, '2021-01-23', 'Mi primer post!', 'Informacion', 731),
(325, '2022-01-02', 'Mi primer post!', 'Quejas', 259),
(326, '2021-11-06', 'Mi primer post!', 'Quejas', 343),
(327, '2022-04-16', 'Mi primer post!', 'Quejas', 209),
(328, '2021-08-06', 'Mi primer post!', 'Dudas', 321),
(329, '2021-02-25', 'Mi primer post!', 'Dudas', 335),
(330, '2022-01-06', 'Mi primer post!', 'Quejas', 709),
(331, '2021-02-19', 'Mi primer post!', 'Quejas', 100),
(332, '2021-03-08', 'Mi primer post!', 'Eventos', 948),
(333, '2021-09-19', 'Mi primer post!', 'Dudas', 805),
(334, '2022-02-17', 'Mi primer post!', 'Dudas', 139),
(335, '2021-01-14', 'Mi primer post!', 'Dudas', 692),
(336, '2021-05-27', 'Mi primer post!', 'Eventos', 736),
(337, '2021-07-06', 'Mi primer post!', 'Quejas', 835),
(338, '2021-01-27', 'Mi primer post!', 'Eventos', 478),
(339, '2021-08-24', 'Mi primer post!', 'Informacion', 470),
(340, '2021-01-14', 'Mi primer post!', 'Eventos', 897),
(341, '2021-07-26', 'Mi primer post!', 'Informacion', 332),
(342, '2021-01-04', 'Mi primer post!', 'Quejas', 333),
(343, '2021-04-25', 'Mi primer post!', 'Dudas', 485),
(344, '2021-05-22', 'Mi primer post!', 'Quejas', 794),
(345, '2021-03-20', 'Mi primer post!', 'Dudas', 815),
(346, '2021-05-24', 'Mi primer post!', 'Dudas', 21),
(347, '2021-11-30', 'Mi primer post!', 'Informacion', 743),
(348, '2021-06-04', 'Mi primer post!', 'Eventos', 289),
(349, '2021-02-24', 'Mi primer post!', 'Dudas', 363),
(350, '2021-04-27', 'Mi primer post!', 'Eventos', 731),
(351, '2021-06-12', 'Mi primer post!', 'Quejas', 554),
(352, '2021-07-31', 'Mi primer post!', 'Quejas', 394),
(353, '2021-01-05', 'Mi primer post!', 'Eventos', 106),
(354, '2021-11-29', 'Mi primer post!', 'Informacion', 112),
(355, '2021-05-22', 'Mi primer post!', 'Eventos', 318),
(356, '2022-01-30', 'Mi primer post!', 'Dudas', 166),
(357, '2021-01-07', 'Mi primer post!', 'Dudas', 320),
(358, '2021-03-17', 'Mi primer post!', 'Eventos', 120),
(359, '2021-10-26', 'Mi primer post!', 'Eventos', 649),
(360, '2022-05-11', 'Mi primer post!', 'Informacion', 403),
(361, '2021-04-12', 'Mi primer post!', 'Dudas', 746),
(362, '2022-02-02', 'Mi primer post!', 'Quejas', 800),
(363, '2021-08-22', 'Mi primer post!', 'Dudas', 631),
(364, '2021-04-22', 'Mi primer post!', 'Informacion', 906),
(365, '2021-01-10', 'Mi primer post!', 'Quejas', 171),
(366, '2021-01-01', 'Mi primer post!', 'Quejas', 565),
(367, '2021-01-18', 'Mi primer post!', 'Informacion', 246),
(368, '2022-02-05', 'Mi primer post!', 'Quejas', 18),
(369, '2022-05-05', 'Mi primer post!', 'Quejas', 695),
(370, '2022-01-19', 'Mi primer post!', 'Dudas', 689),
(371, '2022-01-19', 'Mi primer post!', 'Informacion', 712),
(372, '2021-11-14', 'Mi primer post!', 'Eventos', 676),
(373, '2021-04-21', 'Mi primer post!', 'Eventos', 322),
(374, '2021-11-24', 'Mi primer post!', 'Eventos', 987),
(375, '2022-03-21', 'Mi primer post!', 'Informacion', 536),
(376, '2022-03-27', 'Mi primer post!', 'Quejas', 451),
(377, '2021-06-16', 'Mi primer post!', 'Eventos', 698),
(378, '2022-02-23', 'Mi primer post!', 'Informacion', 37),
(379, '2022-04-05', 'Mi primer post!', 'Quejas', 585),
(380, '2022-05-20', 'Mi primer post!', 'Quejas', 906),
(381, '2021-05-27', 'Mi primer post!', 'Dudas', 889),
(382, '2021-07-29', 'Mi primer post!', 'Informacion', 926),
(383, '2021-09-08', 'Mi primer post!', 'Quejas', 375),
(384, '2021-02-26', 'Mi primer post!', 'Quejas', 150),
(385, '2021-03-31', 'Mi primer post!', 'Informacion', 46),
(386, '2022-06-02', 'Mi primer post!', 'Dudas', 202),
(387, '2021-10-27', 'Mi primer post!', 'Informacion', 68),
(388, '2021-12-22', 'Mi primer post!', 'Informacion', 619),
(389, '2022-01-06', 'Mi primer post!', 'Eventos', 700),
(390, '2022-04-08', 'Mi primer post!', 'Eventos', 606),
(391, '2021-08-05', 'Mi primer post!', 'Eventos', 389),
(392, '2021-05-24', 'Mi primer post!', 'Eventos', 4),
(393, '2022-05-12', 'Mi primer post!', 'Quejas', 222),
(394, '2021-03-18', 'Mi primer post!', 'Eventos', 200),
(395, '2022-03-02', 'Mi primer post!', 'Informacion', 779),
(396, '2022-05-09', 'Mi primer post!', 'Quejas', 687),
(397, '2021-04-21', 'Mi primer post!', 'Dudas', 641),
(398, '2021-08-21', 'Mi primer post!', 'Eventos', 732),
(399, '2022-03-31', 'Mi primer post!', 'Eventos', 636),
(400, '2022-05-12', 'Mi primer post!', 'Dudas', 247),
(401, '2021-07-21', 'Mi primer post!', 'Quejas', 669),
(402, '2021-02-28', 'Mi primer post!', 'Quejas', 388),
(403, '2022-01-08', 'Mi primer post!', 'Informacion', 389),
(404, '2021-10-02', 'Mi primer post!', 'Eventos', 373),
(405, '2022-04-14', 'Mi primer post!', 'Quejas', 218),
(406, '2021-02-07', 'Mi primer post!', 'Eventos', 640),
(407, '2022-01-09', 'Mi primer post!', 'Eventos', 532),
(408, '2022-05-06', 'Mi primer post!', 'Eventos', 17),
(409, '2021-03-20', 'Mi primer post!', 'Informacion', 170),
(410, '2021-04-18', 'Mi primer post!', 'Eventos', 549),
(411, '2022-01-04', 'Mi primer post!', 'Dudas', 434),
(412, '2021-01-26', 'Mi primer post!', 'Eventos', 708),
(413, '2021-04-15', 'Mi primer post!', 'Quejas', 437),
(414, '2021-04-22', 'Mi primer post!', 'Quejas', 693),
(415, '2021-06-11', 'Mi primer post!', 'Eventos', 933),
(416, '2021-03-11', 'Mi primer post!', 'Eventos', 767),
(417, '2021-04-20', 'Mi primer post!', 'Informacion', 574),
(418, '2021-02-20', 'Mi primer post!', 'Dudas', 902),
(419, '2021-10-13', 'Mi primer post!', 'Quejas', 225),
(420, '2021-09-26', 'Mi primer post!', 'Dudas', 555),
(421, '2021-08-21', 'Mi primer post!', 'Informacion', 376),
(422, '2021-08-04', 'Mi primer post!', 'Dudas', 91),
(423, '2021-05-18', 'Mi primer post!', 'Dudas', 573),
(424, '2021-02-14', 'Mi primer post!', 'Quejas', 7),
(425, '2021-07-23', 'Mi primer post!', 'Eventos', 860),
(426, '2022-01-08', 'Mi primer post!', 'Eventos', 796),
(427, '2021-11-14', 'Mi primer post!', 'Informacion', 666),
(428, '2022-03-09', 'Mi primer post!', 'Eventos', 444),
(429, '2022-01-06', 'Mi primer post!', 'Dudas', 53),
(430, '2022-04-21', 'Mi primer post!', 'Informacion', 458),
(431, '2021-05-09', 'Mi primer post!', 'Eventos', 278),
(432, '2022-01-28', 'Mi primer post!', 'Informacion', 54),
(433, '2021-05-18', 'Mi primer post!', 'Quejas', 780),
(434, '2022-04-29', 'Mi primer post!', 'Informacion', 111),
(435, '2021-05-31', 'Mi primer post!', 'Informacion', 27),
(436, '2021-07-24', 'Mi primer post!', 'Informacion', 493),
(437, '2021-06-18', 'Mi primer post!', 'Informacion', 463),
(438, '2021-12-01', 'Mi primer post!', 'Informacion', 879),
(439, '2021-05-14', 'Mi primer post!', 'Dudas', 621),
(440, '2021-02-09', 'Mi primer post!', 'Informacion', 778),
(441, '2021-10-16', 'Mi primer post!', 'Eventos', 561),
(442, '2021-01-01', 'Mi primer post!', 'Eventos', 643),
(443, '2021-10-21', 'Mi primer post!', 'Eventos', 973),
(444, '2021-03-06', 'Mi primer post!', 'Informacion', 15),
(445, '2021-01-10', 'Mi primer post!', 'Dudas', 879),
(446, '2021-04-21', 'Mi primer post!', 'Eventos', 259),
(447, '2021-01-18', 'Mi primer post!', 'Quejas', 960),
(448, '2021-06-16', 'Mi primer post!', 'Eventos', 526),
(449, '2021-10-27', 'Mi primer post!', 'Dudas', 411),
(450, '2021-02-11', 'Mi primer post!', 'Eventos', 987),
(451, '2021-01-13', 'Mi primer post!', 'Dudas', 398),
(452, '2021-09-23', 'Mi primer post!', 'Eventos', 634),
(453, '2022-03-08', 'Mi primer post!', 'Eventos', 811),
(454, '2022-03-05', 'Mi primer post!', 'Quejas', 163),
(455, '2021-10-29', 'Mi primer post!', 'Dudas', 23),
(456, '2021-09-29', 'Mi primer post!', 'Eventos', 697),
(457, '2021-07-31', 'Mi primer post!', 'Eventos', 818),
(458, '2021-06-21', 'Mi primer post!', 'Informacion', 677),
(459, '2022-04-07', 'Mi primer post!', 'Informacion', 871),
(460, '2021-09-13', 'Mi primer post!', 'Dudas', 989),
(461, '2021-02-14', 'Mi primer post!', 'Dudas', 203),
(462, '2021-05-11', 'Mi primer post!', 'Dudas', 532),
(463, '2022-04-20', 'Mi primer post!', 'Quejas', 474),
(464, '2021-06-22', 'Mi primer post!', 'Dudas', 665),
(465, '2022-03-01', 'Mi primer post!', 'Dudas', 871),
(466, '2021-06-27', 'Mi primer post!', 'Dudas', 628),
(467, '2022-03-28', 'Mi primer post!', 'Informacion', 735),
(468, '2021-05-02', 'Mi primer post!', 'Quejas', 371),
(469, '2021-01-28', 'Mi primer post!', 'Informacion', 757),
(470, '2021-04-25', 'Mi primer post!', 'Eventos', 899),
(471, '2021-09-23', 'Mi primer post!', 'Dudas', 126),
(472, '2021-02-13', 'Mi primer post!', 'Eventos', 17),
(473, '2021-04-07', 'Mi primer post!', 'Quejas', 106),
(474, '2022-05-01', 'Mi primer post!', 'Informacion', 123),
(475, '2022-03-23', 'Mi primer post!', 'Dudas', 170),
(476, '2021-04-13', 'Mi primer post!', 'Informacion', 859),
(477, '2021-04-29', 'Mi primer post!', 'Quejas', 477),
(478, '2022-05-09', 'Mi primer post!', 'Informacion', 36),
(479, '2021-02-19', 'Mi primer post!', 'Informacion', 734),
(480, '2022-05-22', 'Mi primer post!', 'Dudas', 304),
(481, '2022-03-26', 'Mi primer post!', 'Quejas', 602),
(482, '2021-11-11', 'Mi primer post!', 'Quejas', 881),
(483, '2022-02-22', 'Mi primer post!', 'Dudas', 766),
(484, '2021-01-08', 'Mi primer post!', 'Informacion', 800),
(485, '2021-05-16', 'Mi primer post!', 'Informacion', 815),
(486, '2021-11-23', 'Mi primer post!', 'Informacion', 135),
(487, '2022-01-07', 'Mi primer post!', 'Dudas', 548),
(488, '2021-11-17', 'Mi primer post!', 'Quejas', 761),
(489, '2022-02-12', 'Mi primer post!', 'Informacion', 320),
(490, '2021-02-22', 'Mi primer post!', 'Quejas', 971),
(491, '2021-05-30', 'Mi primer post!', 'Quejas', 400),
(492, '2021-01-21', 'Mi primer post!', 'Quejas', 705),
(493, '2022-04-29', 'Mi primer post!', 'Quejas', 17),
(494, '2021-01-21', 'Mi primer post!', 'Informacion', 955),
(495, '2021-06-01', 'Mi primer post!', 'Quejas', 38),
(496, '2021-07-04', 'Mi primer post!', 'Quejas', 719),
(497, '2021-04-24', 'Mi primer post!', 'Informacion', 928),
(498, '2022-05-03', 'Mi primer post!', 'Eventos', 586),
(499, '2021-11-16', 'Mi primer post!', 'Informacion', 484),
(500, '2021-12-05', 'Mi primer post!', 'Quejas', 900);

INSERT INTO comentarios VALUES
(1, 'Mi primer comentario!', '2021-10-10', 162, 244),
(2, 'Mi primer comentario!', '2021-10-11', 333, 309),
(3, 'Mi primer comentario!', '2021-09-06', 553, 412),
(4, 'Mi primer comentario!', '2021-11-29', 386, 466),
(5, 'Mi primer comentario!', '2021-11-02', 534, 488),
(6, 'Mi primer comentario!', '2022-05-12', 284, 22),
(7, 'Mi primer comentario!', '2022-03-28', 281, 48),
(8, 'Mi primer comentario!', '2021-09-25', 638, 293),
(9, 'Mi primer comentario!', '2021-12-17', 903, 133),
(10, 'Mi primer comentario!', '2021-09-10', 773, 192),
(11, 'Mi primer comentario!', '2021-06-16', 369, 499),
(12, 'Mi primer comentario!', '2021-01-10', 44, 154),
(13, 'Mi primer comentario!', '2021-09-01', 286, 312),
(14, 'Mi primer comentario!', '2022-04-26', 767, 463),
(15, 'Mi primer comentario!', '2022-05-21', 645, 83),
(16, 'Mi primer comentario!', '2021-11-27', 38, 150),
(17, 'Mi primer comentario!', '2021-12-03', 684, 260),
(18, 'Mi primer comentario!', '2022-01-06', 132, 348),
(19, 'Mi primer comentario!', '2021-09-17', 261, 404),
(20, 'Mi primer comentario!', '2021-10-11', 785, 6),
(21, 'Mi primer comentario!', '2022-04-27', 463, 16),
(22, 'Mi primer comentario!', '2022-04-23', 787, 484),
(23, 'Mi primer comentario!', '2022-04-12', 132, 389),
(24, 'Mi primer comentario!', '2022-01-02', 277, 151),
(25, 'Mi primer comentario!', '2022-05-18', 429, 442),
(26, 'Mi primer comentario!', '2021-08-11', 351, 388),
(27, 'Mi primer comentario!', '2021-03-26', 415, 266),
(28, 'Mi primer comentario!', '2021-06-24', 86, 173),
(29, 'Mi primer comentario!', '2021-12-07', 609, 439),
(30, 'Mi primer comentario!', '2021-07-29', 364, 485),
(31, 'Mi primer comentario!', '2021-11-28', 991, 319),
(32, 'Mi primer comentario!', '2021-09-19', 696, 150),
(33, 'Mi primer comentario!', '2022-01-22', 555, 233),
(34, 'Mi primer comentario!', '2021-11-23', 253, 455),
(35, 'Mi primer comentario!', '2021-08-02', 66, 232),
(36, 'Mi primer comentario!', '2021-02-04', 825, 130),
(37, 'Mi primer comentario!', '2021-04-28', 655, 134),
(38, 'Mi primer comentario!', '2021-01-03', 394, 342),
(39, 'Mi primer comentario!', '2021-12-01', 507, 472),
(40, 'Mi primer comentario!', '2021-06-02', 331, 93),
(41, 'Mi primer comentario!', '2021-03-19', 561, 80),
(42, 'Mi primer comentario!', '2021-05-06', 963, 263),
(43, 'Mi primer comentario!', '2021-02-08', 465, 14),
(44, 'Mi primer comentario!', '2021-06-17', 59, 191),
(45, 'Mi primer comentario!', '2022-02-25', 332, 177),
(46, 'Mi primer comentario!', '2022-04-16', 819, 140),
(47, 'Mi primer comentario!', '2021-06-07', 162, 275),
(48, 'Mi primer comentario!', '2022-05-17', 501, 270),
(49, 'Mi primer comentario!', '2021-07-18', 295, 312),
(50, 'Mi primer comentario!', '2022-05-05', 292, 404),
(51, 'Mi primer comentario!', '2021-11-05', 467, 382),
(52, 'Mi primer comentario!', '2021-10-22', 224, 286),
(53, 'Mi primer comentario!', '2021-01-28', 973, 185),
(54, 'Mi primer comentario!', '2021-04-30', 602, 378),
(55, 'Mi primer comentario!', '2021-03-08', 28, 351),
(56, 'Mi primer comentario!', '2021-05-14', 821, 109),
(57, 'Mi primer comentario!', '2022-01-26', 621, 383),
(58, 'Mi primer comentario!', '2021-02-24', 603, 231),
(59, 'Mi primer comentario!', '2021-10-11', 275, 446),
(60, 'Mi primer comentario!', '2021-08-16', 573, 465),
(61, 'Mi primer comentario!', '2021-06-12', 55, 307),
(62, 'Mi primer comentario!', '2021-08-07', 678, 279),
(63, 'Mi primer comentario!', '2022-01-16', 573, 323),
(64, 'Mi primer comentario!', '2021-07-07', 89, 297),
(65, 'Mi primer comentario!', '2022-01-14', 498, 439),
(66, 'Mi primer comentario!', '2021-08-28', 932, 290),
(67, 'Mi primer comentario!', '2021-07-18', 161, 173),
(68, 'Mi primer comentario!', '2021-06-25', 947, 246),
(69, 'Mi primer comentario!', '2022-02-24', 108, 32),
(70, 'Mi primer comentario!', '2022-05-07', 244, 469),
(71, 'Mi primer comentario!', '2022-03-25', 299, 321),
(72, 'Mi primer comentario!', '2021-10-23', 769, 152),
(73, 'Mi primer comentario!', '2021-02-16', 689, 381),
(74, 'Mi primer comentario!', '2021-08-27', 373, 339),
(75, 'Mi primer comentario!', '2021-07-16', 195, 238),
(76, 'Mi primer comentario!', '2021-10-10', 200, 20),
(77, 'Mi primer comentario!', '2021-07-04', 858, 338),
(78, 'Mi primer comentario!', '2022-02-28', 63, 403),
(79, 'Mi primer comentario!', '2021-01-25', 899, 102),
(80, 'Mi primer comentario!', '2021-12-26', 9, 284),
(81, 'Mi primer comentario!', '2021-09-17', 600, 238),
(82, 'Mi primer comentario!', '2021-07-07', 13, 184),
(83, 'Mi primer comentario!', '2022-05-11', 307, 415),
(84, 'Mi primer comentario!', '2021-05-13', 868, 381),
(85, 'Mi primer comentario!', '2022-01-03', 693, 269),
(86, 'Mi primer comentario!', '2021-11-23', 655, 55),
(87, 'Mi primer comentario!', '2021-12-11', 847, 300),
(88, 'Mi primer comentario!', '2021-08-04', 418, 206),
(89, 'Mi primer comentario!', '2021-04-12', 982, 273),
(90, 'Mi primer comentario!', '2021-10-14', 917, 134),
(91, 'Mi primer comentario!', '2022-02-01', 199, 354),
(92, 'Mi primer comentario!', '2021-06-09', 909, 345),
(93, 'Mi primer comentario!', '2022-02-03', 845, 211),
(94, 'Mi primer comentario!', '2021-05-29', 525, 4),
(95, 'Mi primer comentario!', '2021-09-17', 601, 466),
(96, 'Mi primer comentario!', '2022-03-31', 39, 195),
(97, 'Mi primer comentario!', '2021-10-17', 486, 390),
(98, 'Mi primer comentario!', '2021-12-12', 954, 28),
(99, 'Mi primer comentario!', '2021-05-16', 946, 193),
(100, 'Mi primer comentario!', '2021-09-30', 603, 79),
(101, 'Mi primer comentario!', '2021-02-14', 883, 221),
(102, 'Mi primer comentario!', '2021-10-02', 833, 170),
(103, 'Mi primer comentario!', '2021-01-30', 847, 160),
(104, 'Mi primer comentario!', '2021-02-07', 252, 314),
(105, 'Mi primer comentario!', '2022-01-24', 311, 10),
(106, 'Mi primer comentario!', '2021-08-18', 464, 406),
(107, 'Mi primer comentario!', '2021-12-06', 307, 114),
(108, 'Mi primer comentario!', '2022-04-02', 928, 353),
(109, 'Mi primer comentario!', '2021-08-22', 382, 407),
(110, 'Mi primer comentario!', '2022-03-29', 132, 96),
(111, 'Mi primer comentario!', '2021-04-09', 459, 7),
(112, 'Mi primer comentario!', '2022-04-13', 536, 134),
(113, 'Mi primer comentario!', '2022-01-27', 426, 235),
(114, 'Mi primer comentario!', '2021-08-16', 47, 27),
(115, 'Mi primer comentario!', '2021-08-15', 60, 33),
(116, 'Mi primer comentario!', '2022-05-15', 22, 73),
(117, 'Mi primer comentario!', '2021-10-06', 889, 482),
(118, 'Mi primer comentario!', '2022-01-08', 85, 276),
(119, 'Mi primer comentario!', '2022-03-31', 99, 244),
(120, 'Mi primer comentario!', '2022-05-16', 317, 325),
(121, 'Mi primer comentario!', '2021-08-13', 118, 226),
(122, 'Mi primer comentario!', '2021-01-11', 989, 41),
(123, 'Mi primer comentario!', '2022-04-07', 910, 280),
(124, 'Mi primer comentario!', '2021-08-03', 528, 379),
(125, 'Mi primer comentario!', '2022-03-13', 547, 230),
(126, 'Mi primer comentario!', '2021-11-15', 298, 168),
(127, 'Mi primer comentario!', '2021-03-16', 634, 392),
(128, 'Mi primer comentario!', '2021-07-31', 350, 411),
(129, 'Mi primer comentario!', '2021-08-25', 839, 350),
(130, 'Mi primer comentario!', '2021-04-30', 103, 284),
(131, 'Mi primer comentario!', '2021-05-22', 772, 217),
(132, 'Mi primer comentario!', '2021-06-22', 936, 407),
(133, 'Mi primer comentario!', '2021-07-27', 973, 254),
(134, 'Mi primer comentario!', '2022-05-24', 660, 155),
(135, 'Mi primer comentario!', '2021-09-09', 793, 347),
(136, 'Mi primer comentario!', '2021-08-06', 342, 94),
(137, 'Mi primer comentario!', '2021-05-10', 601, 280),
(138, 'Mi primer comentario!', '2021-09-16', 984, 247),
(139, 'Mi primer comentario!', '2021-11-06', 477, 398),
(140, 'Mi primer comentario!', '2022-03-11', 235, 442),
(141, 'Mi primer comentario!', '2021-01-14', 292, 6),
(142, 'Mi primer comentario!', '2022-02-21', 847, 326),
(143, 'Mi primer comentario!', '2021-06-03', 746, 281),
(144, 'Mi primer comentario!', '2021-04-20', 780, 200),
(145, 'Mi primer comentario!', '2021-05-26', 400, 357),
(146, 'Mi primer comentario!', '2021-05-12', 976, 432),
(147, 'Mi primer comentario!', '2021-04-01', 201, 466),
(148, 'Mi primer comentario!', '2021-04-28', 460, 315),
(149, 'Mi primer comentario!', '2021-02-01', 391, 213),
(150, 'Mi primer comentario!', '2021-01-28', 871, 108),
(151, 'Mi primer comentario!', '2021-03-13', 526, 380),
(152, 'Mi primer comentario!', '2021-10-18', 159, 404),
(153, 'Mi primer comentario!', '2021-06-15', 415, 142),
(154, 'Mi primer comentario!', '2022-04-16', 344, 404),
(155, 'Mi primer comentario!', '2021-07-07', 170, 144),
(156, 'Mi primer comentario!', '2021-09-03', 972, 37),
(157, 'Mi primer comentario!', '2022-03-28', 804, 442),
(158, 'Mi primer comentario!', '2022-03-26', 822, 361),
(159, 'Mi primer comentario!', '2022-03-30', 469, 66),
(160, 'Mi primer comentario!', '2021-05-02', 84, 33),
(161, 'Mi primer comentario!', '2021-10-12', 964, 214),
(162, 'Mi primer comentario!', '2022-02-22', 439, 5),
(163, 'Mi primer comentario!', '2021-03-29', 448, 266),
(164, 'Mi primer comentario!', '2021-01-01', 548, 241),
(165, 'Mi primer comentario!', '2021-10-31', 803, 179),
(166, 'Mi primer comentario!', '2022-01-27', 208, 212),
(167, 'Mi primer comentario!', '2022-06-02', 102, 488),
(168, 'Mi primer comentario!', '2022-04-16', 929, 349),
(169, 'Mi primer comentario!', '2021-11-10', 458, 395),
(170, 'Mi primer comentario!', '2021-02-02', 865, 274),
(171, 'Mi primer comentario!', '2021-12-15', 841, 444),
(172, 'Mi primer comentario!', '2022-04-24', 615, 205),
(173, 'Mi primer comentario!', '2022-02-13', 580, 407),
(174, 'Mi primer comentario!', '2021-07-01', 522, 3),
(175, 'Mi primer comentario!', '2021-12-13', 151, 172),
(176, 'Mi primer comentario!', '2021-07-13', 41, 379),
(177, 'Mi primer comentario!', '2022-05-02', 837, 223),
(178, 'Mi primer comentario!', '2021-08-05', 925, 307),
(179, 'Mi primer comentario!', '2021-07-27', 240, 82),
(180, 'Mi primer comentario!', '2021-05-17', 210, 264),
(181, 'Mi primer comentario!', '2021-04-15', 632, 316),
(182, 'Mi primer comentario!', '2021-08-31', 938, 376),
(183, 'Mi primer comentario!', '2021-06-02', 596, 363),
(184, 'Mi primer comentario!', '2021-03-17', 663, 423),
(185, 'Mi primer comentario!', '2021-02-26', 239, 76),
(186, 'Mi primer comentario!', '2021-09-28', 856, 338),
(187, 'Mi primer comentario!', '2021-03-02', 933, 85),
(188, 'Mi primer comentario!', '2022-02-06', 492, 125),
(189, 'Mi primer comentario!', '2021-10-09', 701, 374),
(190, 'Mi primer comentario!', '2021-09-23', 286, 105),
(191, 'Mi primer comentario!', '2021-12-25', 949, 199),
(192, 'Mi primer comentario!', '2022-02-13', 63, 66),
(193, 'Mi primer comentario!', '2022-03-14', 869, 32),
(194, 'Mi primer comentario!', '2021-05-14', 636, 26),
(195, 'Mi primer comentario!', '2021-12-16', 707, 199),
(196, 'Mi primer comentario!', '2021-08-03', 902, 171),
(197, 'Mi primer comentario!', '2021-02-17', 890, 134),
(198, 'Mi primer comentario!', '2021-09-02', 689, 467),
(199, 'Mi primer comentario!', '2021-03-03', 185, 7),
(200, 'Mi primer comentario!', '2021-10-11', 549, 82),
(201, 'Mi primer comentario!', '2021-01-16', 328, 132),
(202, 'Mi primer comentario!', '2021-01-26', 366, 496),
(203, 'Mi primer comentario!', '2022-03-29', 769, 104),
(204, 'Mi primer comentario!', '2021-11-04', 289, 482),
(205, 'Mi primer comentario!', '2021-12-14', 822, 282),
(206, 'Mi primer comentario!', '2021-01-26', 514, 7),
(207, 'Mi primer comentario!', '2022-01-24', 987, 115),
(208, 'Mi primer comentario!', '2021-03-02', 354, 288),
(209, 'Mi primer comentario!', '2022-05-03', 879, 352),
(210, 'Mi primer comentario!', '2021-05-12', 512, 337),
(211, 'Mi primer comentario!', '2021-09-17', 811, 451),
(212, 'Mi primer comentario!', '2022-01-13', 590, 435),
(213, 'Mi primer comentario!', '2021-01-21', 947, 21),
(214, 'Mi primer comentario!', '2021-12-12', 529, 230),
(215, 'Mi primer comentario!', '2021-07-15', 254, 191),
(216, 'Mi primer comentario!', '2021-11-14', 574, 11),
(217, 'Mi primer comentario!', '2021-07-08', 387, 224),
(218, 'Mi primer comentario!', '2021-01-25', 519, 391),
(219, 'Mi primer comentario!', '2022-05-09', 744, 177),
(220, 'Mi primer comentario!', '2022-01-17', 897, 359),
(221, 'Mi primer comentario!', '2022-05-13', 363, 63),
(222, 'Mi primer comentario!', '2021-08-01', 418, 335),
(223, 'Mi primer comentario!', '2021-07-25', 27, 290),
(224, 'Mi primer comentario!', '2021-03-03', 628, 450),
(225, 'Mi primer comentario!', '2021-08-28', 924, 158),
(226, 'Mi primer comentario!', '2021-09-01', 563, 256),
(227, 'Mi primer comentario!', '2021-03-27', 920, 88),
(228, 'Mi primer comentario!', '2021-09-16', 992, 338),
(229, 'Mi primer comentario!', '2021-07-19', 770, 75),
(230, 'Mi primer comentario!', '2021-03-08', 29, 272),
(231, 'Mi primer comentario!', '2021-07-16', 269, 356),
(232, 'Mi primer comentario!', '2021-06-27', 951, 361),
(233, 'Mi primer comentario!', '2021-09-06', 283, 138),
(234, 'Mi primer comentario!', '2021-09-07', 470, 102),
(235, 'Mi primer comentario!', '2022-01-05', 897, 264),
(236, 'Mi primer comentario!', '2021-08-17', 677, 409),
(237, 'Mi primer comentario!', '2021-10-03', 409, 85),
(238, 'Mi primer comentario!', '2021-05-10', 26, 480),
(239, 'Mi primer comentario!', '2022-02-07', 171, 91),
(240, 'Mi primer comentario!', '2021-05-08', 867, 100),
(241, 'Mi primer comentario!', '2021-12-21', 881, 120),
(242, 'Mi primer comentario!', '2021-04-23', 64, 480),
(243, 'Mi primer comentario!', '2021-06-17', 18, 24),
(244, 'Mi primer comentario!', '2022-01-11', 495, 495),
(245, 'Mi primer comentario!', '2022-03-08', 112, 470),
(246, 'Mi primer comentario!', '2021-01-29', 815, 348),
(247, 'Mi primer comentario!', '2021-10-23', 916, 221),
(248, 'Mi primer comentario!', '2022-01-07', 849, 189),
(249, 'Mi primer comentario!', '2021-03-09', 786, 43),
(250, 'Mi primer comentario!', '2022-02-20', 467, 450),
(251, 'Mi primer comentario!', '2021-03-22', 396, 276),
(252, 'Mi primer comentario!', '2022-01-16', 652, 49),
(253, 'Mi primer comentario!', '2022-05-23', 816, 258),
(254, 'Mi primer comentario!', '2021-08-30', 909, 5),
(255, 'Mi primer comentario!', '2022-04-04', 70, 301),
(256, 'Mi primer comentario!', '2021-11-22', 640, 201),
(257, 'Mi primer comentario!', '2021-02-28', 877, 14),
(258, 'Mi primer comentario!', '2021-07-25', 117, 480),
(259, 'Mi primer comentario!', '2021-11-09', 68, 220),
(260, 'Mi primer comentario!', '2022-03-15', 248, 31),
(261, 'Mi primer comentario!', '2021-10-26', 161, 122),
(262, 'Mi primer comentario!', '2021-10-16', 109, 211),
(263, 'Mi primer comentario!', '2022-04-21', 20, 333),
(264, 'Mi primer comentario!', '2022-03-09', 916, 373),
(265, 'Mi primer comentario!', '2021-08-18', 344, 362),
(266, 'Mi primer comentario!', '2021-06-28', 531, 181),
(267, 'Mi primer comentario!', '2021-08-31', 401, 490),
(268, 'Mi primer comentario!', '2021-11-27', 125, 425),
(269, 'Mi primer comentario!', '2021-02-28', 28, 62),
(270, 'Mi primer comentario!', '2021-07-17', 159, 242),
(271, 'Mi primer comentario!', '2021-12-23', 161, 113),
(272, 'Mi primer comentario!', '2022-05-31', 469, 493),
(273, 'Mi primer comentario!', '2022-03-31', 46, 351),
(274, 'Mi primer comentario!', '2021-10-31', 71, 82),
(275, 'Mi primer comentario!', '2022-01-19', 19, 452),
(276, 'Mi primer comentario!', '2021-01-26', 932, 159),
(277, 'Mi primer comentario!', '2021-05-20', 142, 384),
(278, 'Mi primer comentario!', '2022-03-02', 760, 258),
(279, 'Mi primer comentario!', '2021-08-10', 719, 309),
(280, 'Mi primer comentario!', '2021-05-02', 108, 228),
(281, 'Mi primer comentario!', '2021-07-01', 445, 489),
(282, 'Mi primer comentario!', '2022-01-08', 246, 263),
(283, 'Mi primer comentario!', '2021-07-09', 833, 483),
(284, 'Mi primer comentario!', '2021-03-26', 226, 414),
(285, 'Mi primer comentario!', '2022-02-05', 93, 234),
(286, 'Mi primer comentario!', '2021-09-25', 94, 312),
(287, 'Mi primer comentario!', '2021-12-14', 421, 445),
(288, 'Mi primer comentario!', '2021-01-16', 739, 182),
(289, 'Mi primer comentario!', '2022-03-10', 114, 497),
(290, 'Mi primer comentario!', '2021-07-07', 308, 295),
(291, 'Mi primer comentario!', '2022-01-09', 951, 216),
(292, 'Mi primer comentario!', '2021-11-02', 702, 406),
(293, 'Mi primer comentario!', '2021-06-11', 384, 42),
(294, 'Mi primer comentario!', '2021-03-11', 255, 240),
(295, 'Mi primer comentario!', '2021-06-15', 418, 40),
(296, 'Mi primer comentario!', '2022-04-04', 321, 95),
(297, 'Mi primer comentario!', '2022-05-27', 57, 109),
(298, 'Mi primer comentario!', '2021-12-29', 166, 55),
(299, 'Mi primer comentario!', '2021-12-17', 530, 317),
(300, 'Mi primer comentario!', '2021-11-22', 876, 391),
(301, 'Mi primer comentario!', '2021-04-29', 394, 378),
(302, 'Mi primer comentario!', '2021-09-07', 213, 333),
(303, 'Mi primer comentario!', '2021-05-17', 140, 328),
(304, 'Mi primer comentario!', '2021-11-19', 673, 235),
(305, 'Mi primer comentario!', '2022-04-04', 321, 17),
(306, 'Mi primer comentario!', '2021-07-11', 893, 129),
(307, 'Mi primer comentario!', '2021-08-25', 872, 16),
(308, 'Mi primer comentario!', '2021-12-31', 808, 236),
(309, 'Mi primer comentario!', '2022-05-27', 334, 346),
(310, 'Mi primer comentario!', '2021-05-19', 234, 281),
(311, 'Mi primer comentario!', '2021-06-24', 13, 72),
(312, 'Mi primer comentario!', '2021-07-11', 318, 137),
(313, 'Mi primer comentario!', '2021-10-07', 653, 383),
(314, 'Mi primer comentario!', '2021-02-13', 332, 94),
(315, 'Mi primer comentario!', '2022-01-03', 303, 240),
(316, 'Mi primer comentario!', '2022-01-26', 691, 26),
(317, 'Mi primer comentario!', '2021-12-09', 587, 236),
(318, 'Mi primer comentario!', '2021-09-10', 877, 54),
(319, 'Mi primer comentario!', '2021-12-09', 212, 114),
(320, 'Mi primer comentario!', '2021-10-31', 843, 493),
(321, 'Mi primer comentario!', '2022-05-21', 172, 494),
(322, 'Mi primer comentario!', '2021-11-14', 587, 164),
(323, 'Mi primer comentario!', '2021-08-28', 656, 285),
(324, 'Mi primer comentario!', '2021-10-06', 394, 333),
(325, 'Mi primer comentario!', '2022-04-18', 35, 338),
(326, 'Mi primer comentario!', '2022-01-17', 974, 444),
(327, 'Mi primer comentario!', '2021-12-31', 875, 456),
(328, 'Mi primer comentario!', '2022-01-05', 461, 97),
(329, 'Mi primer comentario!', '2021-01-28', 316, 217),
(330, 'Mi primer comentario!', '2021-01-29', 404, 247),
(331, 'Mi primer comentario!', '2022-04-07', 382, 146),
(332, 'Mi primer comentario!', '2021-02-07', 294, 353),
(333, 'Mi primer comentario!', '2021-04-26', 235, 377),
(334, 'Mi primer comentario!', '2022-05-12', 238, 178),
(335, 'Mi primer comentario!', '2021-10-10', 451, 257),
(336, 'Mi primer comentario!', '2021-05-15', 745, 389),
(337, 'Mi primer comentario!', '2021-06-25', 525, 81),
(338, 'Mi primer comentario!', '2021-09-17', 722, 110),
(339, 'Mi primer comentario!', '2021-02-07', 624, 192),
(340, 'Mi primer comentario!', '2021-12-03', 965, 277),
(341, 'Mi primer comentario!', '2021-06-24', 559, 215),
(342, 'Mi primer comentario!', '2021-07-26', 380, 111),
(343, 'Mi primer comentario!', '2021-05-01', 114, 277),
(344, 'Mi primer comentario!', '2021-08-08', 741, 274),
(345, 'Mi primer comentario!', '2021-12-28', 429, 404),
(346, 'Mi primer comentario!', '2021-09-30', 905, 493),
(347, 'Mi primer comentario!', '2021-03-26', 761, 42),
(348, 'Mi primer comentario!', '2021-03-15', 570, 371),
(349, 'Mi primer comentario!', '2021-04-08', 663, 51),
(350, 'Mi primer comentario!', '2022-02-06', 904, 109),
(351, 'Mi primer comentario!', '2021-04-10', 418, 419),
(352, 'Mi primer comentario!', '2021-10-25', 910, 491),
(353, 'Mi primer comentario!', '2021-08-04', 503, 31),
(354, 'Mi primer comentario!', '2021-03-04', 437, 104),
(355, 'Mi primer comentario!', '2021-12-07', 273, 90),
(356, 'Mi primer comentario!', '2021-10-14', 37, 369),
(357, 'Mi primer comentario!', '2022-01-30', 897, 486),
(358, 'Mi primer comentario!', '2022-05-07', 948, 420),
(359, 'Mi primer comentario!', '2021-02-04', 608, 142),
(360, 'Mi primer comentario!', '2021-04-03', 612, 460),
(361, 'Mi primer comentario!', '2022-05-31', 442, 358),
(362, 'Mi primer comentario!', '2022-05-21', 80, 63),
(363, 'Mi primer comentario!', '2021-12-11', 933, 279),
(364, 'Mi primer comentario!', '2021-01-21', 337, 411),
(365, 'Mi primer comentario!', '2021-12-13', 515, 460),
(366, 'Mi primer comentario!', '2021-11-14', 838, 384),
(367, 'Mi primer comentario!', '2021-09-07', 279, 146),
(368, 'Mi primer comentario!', '2021-01-06', 83, 142),
(369, 'Mi primer comentario!', '2022-05-30', 744, 453),
(370, 'Mi primer comentario!', '2021-05-13', 785, 15),
(371, 'Mi primer comentario!', '2021-07-18', 650, 335),
(372, 'Mi primer comentario!', '2022-02-25', 463, 366),
(373, 'Mi primer comentario!', '2021-07-23', 807, 167),
(374, 'Mi primer comentario!', '2022-01-24', 228, 6),
(375, 'Mi primer comentario!', '2021-10-23', 298, 359),
(376, 'Mi primer comentario!', '2021-12-31', 123, 85),
(377, 'Mi primer comentario!', '2021-09-09', 227, 203),
(378, 'Mi primer comentario!', '2021-05-17', 866, 204),
(379, 'Mi primer comentario!', '2021-04-01', 522, 287),
(380, 'Mi primer comentario!', '2021-12-21', 940, 40),
(381, 'Mi primer comentario!', '2021-08-17', 511, 196),
(382, 'Mi primer comentario!', '2022-04-14', 998, 37),
(383, 'Mi primer comentario!', '2021-06-04', 169, 365),
(384, 'Mi primer comentario!', '2021-01-07', 937, 433),
(385, 'Mi primer comentario!', '2021-01-28', 484, 47),
(386, 'Mi primer comentario!', '2021-11-25', 197, 483),
(387, 'Mi primer comentario!', '2022-05-14', 864, 254),
(388, 'Mi primer comentario!', '2021-04-06', 928, 353),
(389, 'Mi primer comentario!', '2022-05-01', 116, 274),
(390, 'Mi primer comentario!', '2021-10-03', 270, 296),
(391, 'Mi primer comentario!', '2022-03-28', 262, 65),
(392, 'Mi primer comentario!', '2021-06-17', 851, 332),
(393, 'Mi primer comentario!', '2021-07-15', 507, 470),
(394, 'Mi primer comentario!', '2022-05-07', 478, 313),
(395, 'Mi primer comentario!', '2022-02-27', 312, 73),
(396, 'Mi primer comentario!', '2021-08-18', 282, 227),
(397, 'Mi primer comentario!', '2021-06-15', 924, 93),
(398, 'Mi primer comentario!', '2022-04-19', 220, 146),
(399, 'Mi primer comentario!', '2022-03-05', 589, 454),
(400, 'Mi primer comentario!', '2021-06-05', 848, 263),
(401, 'Mi primer comentario!', '2022-03-05', 965, 72),
(402, 'Mi primer comentario!', '2022-04-27', 808, 455),
(403, 'Mi primer comentario!', '2022-05-08', 250, 489),
(404, 'Mi primer comentario!', '2021-06-20', 124, 27),
(405, 'Mi primer comentario!', '2021-04-20', 983, 351),
(406, 'Mi primer comentario!', '2021-09-01', 557, 116),
(407, 'Mi primer comentario!', '2021-10-05', 48, 54),
(408, 'Mi primer comentario!', '2021-12-20', 138, 462),
(409, 'Mi primer comentario!', '2021-11-25', 879, 142),
(410, 'Mi primer comentario!', '2021-10-30', 108, 186),
(411, 'Mi primer comentario!', '2021-10-09', 164, 234),
(412, 'Mi primer comentario!', '2021-10-03', 772, 45),
(413, 'Mi primer comentario!', '2021-11-26', 252, 245),
(414, 'Mi primer comentario!', '2021-08-05', 828, 308),
(415, 'Mi primer comentario!', '2021-05-07', 311, 140),
(416, 'Mi primer comentario!', '2021-11-23', 217, 242),
(417, 'Mi primer comentario!', '2021-10-10', 683, 287),
(418, 'Mi primer comentario!', '2022-05-23', 152, 464),
(419, 'Mi primer comentario!', '2021-01-23', 674, 479),
(420, 'Mi primer comentario!', '2021-10-09', 105, 124),
(421, 'Mi primer comentario!', '2021-02-24', 616, 287),
(422, 'Mi primer comentario!', '2021-02-26', 933, 355),
(423, 'Mi primer comentario!', '2022-04-09', 783, 49),
(424, 'Mi primer comentario!', '2021-03-20', 123, 100),
(425, 'Mi primer comentario!', '2021-01-13', 906, 308),
(426, 'Mi primer comentario!', '2021-09-16', 232, 143),
(427, 'Mi primer comentario!', '2022-04-13', 335, 218),
(428, 'Mi primer comentario!', '2022-01-20', 699, 147),
(429, 'Mi primer comentario!', '2021-06-06', 605, 440),
(430, 'Mi primer comentario!', '2021-09-24', 497, 300),
(431, 'Mi primer comentario!', '2021-06-07', 309, 459),
(432, 'Mi primer comentario!', '2021-09-01', 842, 179),
(433, 'Mi primer comentario!', '2021-08-02', 963, 122),
(434, 'Mi primer comentario!', '2022-02-01', 718, 405),
(435, 'Mi primer comentario!', '2022-04-15', 482, 325),
(436, 'Mi primer comentario!', '2021-02-04', 309, 254),
(437, 'Mi primer comentario!', '2021-07-03', 947, 183),
(438, 'Mi primer comentario!', '2021-12-08', 9, 427),
(439, 'Mi primer comentario!', '2021-09-22', 551, 171),
(440, 'Mi primer comentario!', '2021-07-29', 80, 235),
(441, 'Mi primer comentario!', '2021-11-21', 801, 165),
(442, 'Mi primer comentario!', '2021-10-31', 40, 264),
(443, 'Mi primer comentario!', '2021-10-06', 684, 104),
(444, 'Mi primer comentario!', '2022-05-02', 538, 259),
(445, 'Mi primer comentario!', '2022-04-28', 296, 264),
(446, 'Mi primer comentario!', '2021-01-12', 841, 162),
(447, 'Mi primer comentario!', '2021-06-10', 212, 44),
(448, 'Mi primer comentario!', '2021-02-21', 845, 405),
(449, 'Mi primer comentario!', '2021-05-23', 370, 329),
(450, 'Mi primer comentario!', '2021-11-13', 863, 53),
(451, 'Mi primer comentario!', '2021-01-08', 597, 295),
(452, 'Mi primer comentario!', '2021-08-13', 764, 374),
(453, 'Mi primer comentario!', '2021-12-08', 768, 499),
(454, 'Mi primer comentario!', '2021-03-19', 571, 304),
(455, 'Mi primer comentario!', '2021-06-06', 538, 356),
(456, 'Mi primer comentario!', '2021-12-14', 557, 187),
(457, 'Mi primer comentario!', '2021-06-04', 186, 125),
(458, 'Mi primer comentario!', '2021-10-13', 468, 1),
(459, 'Mi primer comentario!', '2022-05-28', 279, 141),
(460, 'Mi primer comentario!', '2022-04-02', 673, 460),
(461, 'Mi primer comentario!', '2021-10-26', 137, 115),
(462, 'Mi primer comentario!', '2021-01-12', 243, 481),
(463, 'Mi primer comentario!', '2021-01-01', 765, 489),
(464, 'Mi primer comentario!', '2021-11-26', 641, 188),
(465, 'Mi primer comentario!', '2021-09-19', 444, 360),
(466, 'Mi primer comentario!', '2021-03-10', 604, 74),
(467, 'Mi primer comentario!', '2021-01-08', 256, 204),
(468, 'Mi primer comentario!', '2021-07-10', 962, 175),
(469, 'Mi primer comentario!', '2021-11-28', 813, 254),
(470, 'Mi primer comentario!', '2022-05-07', 458, 337),
(471, 'Mi primer comentario!', '2022-02-15', 447, 472),
(472, 'Mi primer comentario!', '2021-03-25', 807, 279),
(473, 'Mi primer comentario!', '2021-11-07', 439, 280),
(474, 'Mi primer comentario!', '2021-03-30', 353, 407),
(475, 'Mi primer comentario!', '2021-05-15', 897, 291),
(476, 'Mi primer comentario!', '2022-03-09', 55, 479),
(477, 'Mi primer comentario!', '2021-09-22', 948, 387),
(478, 'Mi primer comentario!', '2022-05-25', 433, 81),
(479, 'Mi primer comentario!', '2022-02-23', 825, 26),
(480, 'Mi primer comentario!', '2021-09-16', 472, 484),
(481, 'Mi primer comentario!', '2021-11-02', 279, 224),
(482, 'Mi primer comentario!', '2021-08-04', 751, 284),
(483, 'Mi primer comentario!', '2021-02-28', 896, 437),
(484, 'Mi primer comentario!', '2022-01-18', 916, 112),
(485, 'Mi primer comentario!', '2021-02-22', 311, 4),
(486, 'Mi primer comentario!', '2021-03-22', 448, 155),
(487, 'Mi primer comentario!', '2021-01-06', 687, 382),
(488, 'Mi primer comentario!', '2021-04-02', 35, 480),
(489, 'Mi primer comentario!', '2021-12-10', 120, 468),
(490, 'Mi primer comentario!', '2021-01-21', 197, 228),
(491, 'Mi primer comentario!', '2021-11-24', 914, 39),
(492, 'Mi primer comentario!', '2021-09-06', 278, 270),
(493, 'Mi primer comentario!', '2021-11-22', 766, 69),
(494, 'Mi primer comentario!', '2021-01-13', 289, 419),
(495, 'Mi primer comentario!', '2021-01-14', 364, 284),
(496, 'Mi primer comentario!', '2022-02-07', 973, 280),
(497, 'Mi primer comentario!', '2022-04-20', 425, 77),
(498, 'Mi primer comentario!', '2022-05-07', 925, 399),
(499, 'Mi primer comentario!', '2022-05-21', 679, 356),
(500, 'Mi primer comentario!', '2021-01-30', 889, 333);

UPDATE comentarios
	SET descripcion = "DUDA: donde son los pispos"
    WHERE codigoEstudiante >= 300
		AND codigoEstudiante <= 350;
        
UPDATE comentarios
	SET descripcion = "INFORMACION: hay buenos dias a las 11 hoy"
    WHERE codigoEstudiante >= 500
		AND codigoEstudiante <= 550;

UPDATE comentarios
	SET descripcion = "Mi cuarto comentario :P"
    WHERE descripcion LIKE "%primer%";
    
UPDATE comentarios
	SET descripcion = "DUDA: ¿Donde queda la unidad de 11?"
	WHERE codigoEstudiante = 868;

UPDATE comentarios
	SET descripcion = "AYUDA estoy perdido :c"
    WHERE idComentario >= 13
    AND idComentario <= 20;
    
/*UPDATE CATEGORIA*/
SELECT * FROM inemaps.posts;

UPDATE posts
	SET idCategoria = 1
		WHERE categoria LIKE "%Informacion%";
UPDATE posts
	SET idCategoria = 2
		WHERE categoria LIKE "%Anuncio%";
UPDATE posts
	SET idCategoria = 3
		WHERE categoria LIKE "%Quejas%";
UPDATE posts
	SET idCategoria = 4
		WHERE categoria LIKE "%Dudas%";
    

/*UPDATE ESTUDIANTE*/
UPDATE estudiantes
	SET nombreEstudiante = "Daniel Jara"
    WHERE nombreEstudiante LIKE "%dan%";
        
UPDATE estudiantes
	SET contraseña = "daniel123"
    WHERE nombreEstudiante = "Daniel Jara";

UPDATE estudiantes
	SET contraseña = "admin123"
    WHERE codigoEstudiante % 2 = 0;
    
UPDATE estudiantes
	SET correo = "LOCALUSER@jemail.com"
	WHERE codigoEstudiante = "1";
    
UPDATE estudiantes
	SET nombreEstudiante = "Roger Rabbit"
    WHERE codigoEstudiante >= 900
		AND codigoEstudiante <= 1000;
    
/*UPDATE POST*/
update posts
	SET descripcion = "AYUDA estoy en un baño y no hay papel :c"
    WHERE codigoEstudiante % 7 = 0;
    
UPDATE posts
	SET categoria = "Dudas"
    WHERE idpost >= 430
    AND idpost <= 480;
    
update posts
	SET descripcion = "DUDA: donde queda el bloque de artes?"
    WHERE idpost = 440;
    
update posts 
	SET categoria = "Anuncio"
    WHERE codigoEstudiante >=100
    AND codigoEstudiante <= 300;
    
update posts
	SET descripcion = "ANUNCIO: Hoy no hay clase :DDD"
	where categoria LIKE "%nuncio%";

/*DELETE COMENTARIOS*/
Delete from comentarios Where codigoEstudiante = 1000;
Delete from posts Where codigoEstudiante = 1000;

Delete from posts Where codigoEstudiante = 123;
Delete from comentarios Where codigoEstudiante = 123;

DELETE FROM estudiantes WHERE codigoEstudiante = "123";
DELETE FROM estudiantes WHERE codigoEstudiante = "1000";

/*INSERTS*/
insert estudiantes VALUES (1000, 'danisanmez@gmail.com', 'nacional37', 'Tazana');
insert posts(idpost, fechaPublicacion, descripcion, categoria, codigoEstudiante) VALUES (510, '2022-06-04', 'Civica estudiantil >:c', 'AYUDA', 1000);
insert comentarios VALUES (510, 'No hay civica estudiantil >:c', '2022-06-04', 1000, 510);

insert estudiantes VALUES (123, 'juandorko123@gmail.com', 'nacional36', 'Garcia');
insert posts(idpost, fechaPublicacion, descripcion, categoria, codigoEstudiante) VALUES (511, '2022-06-04', 'Civica estudiantil >:c', 'AYUDA', 123);
insert comentarios VALUES (511, 'No hay civica estudiantil >:c', '2022-06-04', 123, 511);

#ESTUDIANTES

SELECT * FROM estudiantes;
SELECT COUNT(codigoEstudiante) FROM estudiantes;
SELECT * FROM estudiantes WHERE contraseña = "nacional37";
SELECT * FROM estudiantes WHERE nombreEstudiante LIKE "n%";
SELECT codigoEstudiante AS id_alumno FROM estudiantes;
SELECT * FROM estudiantes WHERE correo LIKE "c%" and codigoEstudiante >= 500;
SELECT * FROM estudiantes WHERE contraseña LIKE "%min%";
SELECT COUNT(codigoEstudiante) FROM estudiantes WHERE contraseña LIKE "%min%";
SELECT nombreEstudiante, contraseña AS passwordar FROM estudiantes;
SELECT CONCAT(correo, " ", contraseña), codigoEstudiante FROM estudiantes;

#POSTS
SELECT * FROM posts;
SELECT COUNT(idpost) FROM posts;
SELECT * FROM posts WHERE descripcion = "Mi primer post!";
SELECT * FROM posts WHERE descripcion LIKE "AYU%";
SELECT idpost AS codigo_posts FROM posts;
SELECT * FROM posts WHERE categoria LIKE "q%" and codigoEstudiante >= 500;
SELECT * FROM posts WHERE categoria LIKE "%o%";
SELECT COUNT(idpost) FROM posts WHERE descripcion LIKE "_NU%";
SELECT descripcion, fechaPublicacion AS datePublicacion FROM posts;
SELECT CONCAT(categoria, " || ", descripcion), idpost FROM posts;

#COMENTARIOS
SELECT * FROM comentarios;
SELECT COUNT(idComentario) FROM comentarios;
SELECT * FROM comentarios WHERE descripcion = "Mi cuarto comentario :P";
SELECT * FROM comentarios WHERE descripcion LIKE "AYU%";
SELECT idComentario AS code_coment FROM comentarios;
SELECT * FROM comentarios WHERE descripcion LIKE "%:c" and codigoEstudiante >= 500;
SELECT * FROM comentarios WHERE fechaPublicacion LIKE "%24%";
SELECT COUNT(idComentario) FROM comentarios WHERE descripcion LIKE "AYU%";
SELECT descripcion, fechaPublicacion AS datePublicacion FROM comentarios;
SELECT CONCAT(idpost, " || ", idComentario), fechaPublicacion FROM comentarios;

# JOIN SEPARADOS CON ,
SELECT cum.codigoEstudiante, es.correo, es.nombreEstudiante, cum.descripcion
	FROM estudiantes es, comentarios cum
		WHERE cum.codigoEstudiante = es.codigoEstudiante;
        
SELECT cum.codigoEstudiante, p.descripcion, cum.descripcion AS respuestaComentario
	FROM comentarios cum, posts p
		WHERE cum.codigoEstudiante = p.codigoEstudiante;
        
SELECT p.codigoEstudiante, es.nombreEstudiante, p.descripcion AS post
	FROM estudiantes es, posts p
		WHERE p.codigoEstudiante = es.codigoEstudiante;

SELECT p.codigoEstudiante, es.nombreEstudiante, p.descripcion AS post, cum.descripcion AS respuestaPost
	FROM estudiantes es, posts p, comentarios cum
		WHERE p.codigoEstudiante = es.codigoEstudiante
			AND es.codigoEstudiante = cum.codigoEstudiante;
            
SELECT es.nombreEstudiante, p.categoria, p.descripcion post
	FROM estudiantes es, posts p
		WHERE es.codigoEstudiante = p.codigoEstudiante
			AND categoria = 'Informacion';

#CROSS JOIN
SELECT cum.codigoEstudiante, es.correo, es.nombreEstudiante, cum.descripcion
	FROM estudiantes es CROSS JOIN comentarios cum ON cum.codigoEstudiante = es.codigoEstudiante;
        
SELECT cum.codigoEstudiante, p.descripcion, cum.descripcion AS respuestaComentario
	FROM comentarios cum CROSS JOIN posts p ON cum.codigoEstudiante = p.codigoEstudiante;
        
SELECT p.codigoEstudiante, es.nombreEstudiante, p.descripcion AS post
	FROM estudiantes es CROSS JOIN posts p ON p.codigoEstudiante = es.codigoEstudiante;

SELECT p.codigoEstudiante, es.nombreEstudiante, p.descripcion AS post, cum.descripcion AS respuestaPost
	FROM estudiantes es CROSS JOIN posts p CROSS JOIN comentarios cum
		ON p.codigoEstudiante = es.codigoEstudiante
			WHERE es.codigoEstudiante = cum.codigoEstudiante;
            

SELECT es.nombreEstudiante, p.categoria, p.descripcion post
	FROM estudiantes es CROSS JOIN posts p ON es.codigoEstudiante = p.codigoEstudiante
			WHERE categoria = 'Dudas';

#Operaciones separadas por comas

SELECT p.fechaPublicacion AS PublicacionPost, c.fechaPublicacion AS PublicacionComentario, p.codigoEstudiante
FROM posts p, comentarios c
WHERE p.fechaPublicacion = c.fechaPublicacion;
   
SELECT p.categoria, c.descripcion AS DescripcionComentario, e.nombreEstudiante
FROM posts p, comentarios c, estudiantes e
WHERE p.categoria LIKE "%UDA";

SELECT e.codigoEstudiante, e.nombreEstudiante, p.descripcion, p.categoria
		FROM estudiantes e, posts p
	WHERE e.codigoEstudiante = p.codigoEstudiante AND e.codigoEstudiante LIKE "%12%";
SELECT c.descripcion, e.nombreEstudiante, c.codigoEstudiante
		FROM comentarios c,  estudiantes e
	WHERE c.codigoEstudiante = e.codigoEstudiante AND c.codigoEstudiante > 50 AND c.codigoEstudiante < 300;

select concat(e.nombreEstudiante, " hizo una publicación el día: " ,p.fechaPublicacion) 
	from estudiantes e, posts p
		where e.codigoEstudiante = p.codigoEstudiante;

select e.nombreEstudiante nombre, p.descripcion post, c.descripcion comentarios
	from estudiantes e, posts p, comentarios c
		where e.codigoEstudiante = p.codigoEstudiante
			and p.codigoEstudiante = c.codigoEstudiante;

SELECT idComentario, descripcion AS Contenido_Comentario
FROM comentarios;

SELECT nombreEstudiante AS Estudiante, correo AS Correo, contraseña AS Contraseña
FROM estudiantes
    WHERE correo LIKE "%gmail%";

SELECT posts.idpost, posts.fechaPublicacion, comentarios.idComentario, comentarios.fechaPublicacion
FROM posts, comentarios
WHERE posts.idpost = comentarios.idpost;
SELECT estudiantes.codigoEstudiante, estudiantes.correo, comentarios.fechaPublicacion, comentarios.idpost
FROM estudiantes, comentarios
WHERE estudiantes.codigoEstudiante = comentarios.codigoEstudiante;
#---------------------------------------------------------------------------------
#Cross Join

SELECT c.codigoEstudiante AS AutorComentario, p.codigoEstudiante AS AutorPost, e.nombreEstudiante
FROM comentarios c
CROSS JOIN posts p ON c.idpost = p.idpost
CROSS JOIN estudiantes e ON e.codigoEstudiante = p.codigoEstudiante
WHERE p.codigoEstudiante BETWEEN "400" AND "600" AND c.codigoEstudiante BETWEEN "200" AND "300";
   
SELECT p.descripcion AS descripcionPost, e.correo
FROM posts p
CROSS JOIN estudiantes e;

SELECT e.nombreEstudiante AS Nombre, p.fechaPublicacion AS Fecha_Publicacion_Primer_Post
	FROM estudiantes e
			CROSS JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
		WHERE p.fechaPublicacion BETWEEN "2021-03-01" AND "2021-05-01";
SELECT p.descripcion AS Publicacion, c.descripcion AS Comentarios_de_la_publicacion
	FROM posts p
			CROSS JOIN comentarios c ON c.idpost = p.idpost;
SELECT COUNT(e.correo), p.categoria
	FROM estudiantes e 
		CROSS JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
			GROUP BY p.categoria
				HAVING COUNT(e.correo);

select count(c.idComentario) ComentariosConPost7 
	from comentarios c
		cross join posts p on c.idpost = p.idpost
			where p.idpost like "7%";
    
select distinct e.nombreEstudiante nombre, c.descripcion comentario
	from estudiantes e
		cross join comentarios c on c.codigoEstudiante = e.codigoEstudiante
			where e.nombreEstudiante like "%ja%"
				and c.fechaPublicacion >= "2021-09-07";
                
SELECT p.idpost, p.fechaPublicacion AS Fecha_Creacion_Post, c.fechaPublicacion AS Fecha_Comentario
FROM posts p
    CROSS JOIN comentarios c ON p.idpost = c.idpost;
   
 SELECT c.codigoEstudiante, e.correo, c.descripcion AS comentarrio
FROM comentarios c
    CROSS JOIN estudiantes e ON c.codigoEstudiante = e.codigoEstudiante
    WHERE c.codigoEstudiante LIKE "%6%"
    AND c.descripcion LIKE "%:%";
   
SELECT p.codigoEstudiante, c.descripcion, c.idpost
FROM posts p
    CROSS JOIN comentarios c ON c.codigoEstudiante = p.codigoEstudiante
    WHERE c.idpost LIKE "%12%";

SELECT e.codigoEstudiante, e.nombreEstudiante, c.idComentario, c.descripcion
FROM estudiantes e CROSS JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante;
SELECT e.codigoEstudiante, e.correo,p.categoria, p.descripcion
FROM estudiantes e CROSS JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
WHERE e.codigoEstudiante % 2 = 0;    
#---------------------------------------------------------------------------------
#Natural Join 

SELECT e.nombreEstudiante, c.codigoEstudiante
FROM comentarios c
        NATURAL JOIN estudiantes e
WHERE e.nombreEstudiante LIKE "%ma";
   
SELECT c.fechaPublicacion as FechaComentario, p.fechaPublicacion as fechaPost
FROM posts p
        NATURAL JOIN comentarios c
        WHERE c.fechaPublicacion = p.fechaPublicacion;

SELECT  e.codigoEstudiante AS Id, e.correo AS Correo_Estudiante, p.categoria AS Categoria_Post
	FROM estudiantes e 
			NATURAL JOIN posts p
		ORDER BY p.categoria DESC;
SELECT e.correo AS Primer_Correo_Categoria, p.categoria AS Categoria
	FROM estudiantes e
			NATURAL JOIN posts p
		GROUP BY categoria ASC;

select e.correo, p.descripcion post, p.categoria, p.fechaPublicacion fecha
	from estudiantes e
		natural join posts p
			where p.categoria = "Quejas"
				and p.fechaPublicacion like "2021-01%";
                
select e.nombreEstudiante nombre, c.descripcion comentarios
	from comentarios c
		natural join estudiantes e
			where c.descripcion like "%ORMACI%"
				or e.nombreEstudiante = "Daniel Jara";

SELECT e.nombreEstudiante AS creador, p.descripcion AS comentario, p.categoria
FROM estudiantes e
    NATURAL JOIN posts p;
   
SELECT e.nombreEstudiante, c.idComentario, p.descripcion AS Post, p.fechaPublicacion AS Fecha_Publicacion_Post
FROM estudiantes e
    NATURAL JOIN comentarios c
    CROSS JOIN posts p ON p.codigoEstudiante = e.codigoEstudiante
    ORDER BY e.nombreEstudiante;

SELECT e.codigoEstudiante, e.correo, e.contraseña, p.idpost, p.categoria, p.descripcion
FROM estudiantes e NATURAL JOIN posts p
ORDER BY e.codigoEstudiante DESC;
SELECT e.codigoEstudiante, e.correo, e.contraseña, c.idComentario, c.descripcion
FROM estudiantes e NATURAL JOIN comentarios c
WHERE c.idpost between 120 and 500;
#---------------------------------------------------------------------------------
#Join de Columna Nombrada

SELECT CONCAT (e.correo, " ", e.contraseña) AS Datos_ingreso, c.idcomentario
FROM estudiantes e
        JOIN comentarios c USING (codigoestudiante)
ORDER BY c.idcomentario DESC;
   
SELECT p.idpost, p.categoria, e.nombreEstudiante
FROM estudiantes e
        JOIN posts p USING (codigoEstudiante)
WHERE p.idpost % 10 = 0;

SELECT e.nombreEstudiante, p.descripcion
	FROM estudiantes e
		JOIN posts p USING (codigoEstudiante)
	WHERE e.contraseña LIKE "admin%";
SELECT e.correo, c.descripcion
	FROM estudiantes e
		JOIN comentarios c USING (codigoEstudiante)
	WHERE codigoEstudiante % 6 = 0;

SELECT c.idComentario, c.descripcion, p.idpost, p.categoria, p.codigoEstudiante
FROM comentarios c JOIN posts p USING (idpost);
SELECT CONCAT(e.codigoEstudiante, " ", e.nombreEstudiante) AS Usuario, c.idComentario, c.descripcion
FROM estudiantes e JOIN comentarios c USING (codigoEstudiante)
ORDER BY c.idComentario DESC;

select concat(p.idpost, " // ", p.fechaPublicacion) post, concat(c.idComentario, " // ", c.fechaPublicacion)
	from posts p
		join comentarios c using(idpost)
			where p.fechaPublicacion between "2021-01-01" and "2021-02-01"
            order by p.idpost asc;

select concat(e.correo, " // " ,p.fechaPublicacion) posteador, e.contraseña 
	from posts p
		join estudiantes e using(codigoEstudiante)
			where e.contraseña = "admin123"
            and p.descripcion like "AN%D"
            order by p.fechaPublicacion desc;

SELECT CONCAT(e.correo, " // ", e.contraseña) AS AccesoEstudiantes, p.fechaPublicacion AS FechaUltimoPost
FROM estudiantes e JOIN posts p USING (codigoEstudiante)
    WHERE p.fechaPublicacion BETWEEN "2021-02-01" AND "2021-02-28";
   
SELECT e.nombreEstudiante, CONCAT(e.correo, " // ", e.contraseña) AS AccesoEstudiantes, c.descripcion AS Publicación
FROM estudiantes e JOIN comentarios c USING (codigoEstudiante)
    ORDER BY e.nombreEstudiante ASC;
#---------------------------------------------------------------------------------
#Inner Join

SELECT p.descripcion AS ContenidoPost, c.descripcion AS ContenidoComentario
FROM comentarios c
        INNER JOIN posts p ON p.codigoEstudiante = c.codigoEstudiante
GROUP BY p.descripcion;

SELECT c.idComentario, p.idpost
FROM posts p
        INNER JOIN comentarios c ON p.idPost = c.idPost
WHERE p.idpost LIKE "%7" ORDER BY c.idComentario DESC;

SELECT p.fechaPublicacion AS FechaPublicacion_Post, c.fechaPublicacion AS FechaPublicacion_Comentario
	FROM posts p
		INNER JOIN comentarios C ON p.idpost = c.idpost
	WHERE p.idpost LIKE "%24%" ORDER BY p.categoria ASC;
SELECT e.nombreEstudiante AS Autor, p.fechaPublicacion AS FechaPublicacion_Primer_Post, c.codigoEstudiante AS Codigo_Respuesta
	FROM estudiantes e
			INNER JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
		INNER JOIN comentarios c ON p.codigoEstudiante = c.codigoEstudiante
	WHERE p.fechaPublicacion BETWEEN "2022-01-01" AND "2022-03-27";

SELECT e.codigoEstudiante, e.correo, c.idComentario, c.fechaPublicacion, c.descripcion, p.idpost, p.categoria, p.descripcion
FROM estudiantes e INNER JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
INNER JOIN posts p ON c.idpost = p.idpost;
SELECT c.idComentario, c.descripcion, c.fechaPublicacion AS fechaComentario, p.idpost, p.fechaPublicacion AS fechaPost, p.codigoEstudiante
FROM comentarios c INNER JOIN posts p ON c.idpost = p.idpost
WHERE c.codigoEstudiante LIKE "%1";

select count(e.codigoEstudiante) Personas, concat("Han publicado comentarios") cantidad
	from estudiantes e
		inner join comentarios c
			on e.codigoEstudiante = c.codigoEstudiante;

select p.descripcion post, c.descripcion comentario, p.codigoEstudiante
	from posts p
		inner join comentarios c
			on p.idpost = c.idpost
            where p.codigoEstudiante = c.codigoEstudiante;

SELECT c.idComentario, e.correo AS Fuente, p.fechaPublicacion
FROM comentarios c
    INNER JOIN estudiantes e ON c.codigoEstudiante = e.codigoEstudiante
    INNER JOIN posts p ON c.codigoEstudiante = p.codigoEstudiante
    WHERE c.idComentario LIKE "%2%";

SELECT c.codigoEstudiante, p.categoria
FROM comentarios c
    INNER JOIN posts p ON c.codigoEstudiante = p.codigoEstudiante
    WHERE p.categoria = "Quejas";
#---------------------------------------------------------------------------------
#Outer Join (Left Join)

SELECT e.contraseña, c.fechaPublicacion
FROM estudiantes e
        LEFT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
ORDER BY e.contraseña DESC;
   
SELECT e.codigoEstudiante, c.idComentario
FROM estudiantes e
        LEFT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
GROUP BY e.codigoEstudiante;

SELECT CONCAT(e.nombreEstudiante, " ID: ", e.codigoEstudiante) AS Datos_Estudiantes, p.idpost
	FROM estudiantes e
		LEFT JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
	ORDER BY p.categoria DESC;
SELECT CONCAT(p.categoria, " | ", p.codigoEstudiante) AS CodigoEstudiante_Categoria, c.idComentario
	FROM posts p
		LEFT JOIN comentarios c ON p.idpost = c.idpost
	WHERE c.idComentario LIKE "_4%";
SELECT CONCAT(e.correo, " | ", e.codigoEstudiante) AS Contacto_Autor, c.fechaPublicacion AS Fecha_PublicacionComentario_SiExiste
	FROM estudiantes e
		LEFT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante 
	ORDER BY e.codigoEstudiante DESC;

SELECT e.codigoEstudiante, CONCAT(e.correo, " ", e.contraseña) AS correoYcontraseña, p.idpost, CONCAT(p.categoria, " ", p.descripcion) AS categoriaYdescripcion
FROM estudiantes AS e LEFT JOIN posts AS p ON e.codigoEstudiante = p.codigoEstudiante
ORDER BY e.codigoEstudiante DESC;
SELECT c.idComentario, c.codigoEstudiante, c.idpost, e.nombreEstudiante
FROM comentarios c LEFT JOIN estudiantes e ON c.codigoEstudiante = e.codigoEstudiante
WHERE e.codigoEstudiante BETWEEN 200 AND 300;

SELECT CONCAT(e.contraseña, " // ",e.correo) AS ingresoEstudiante, p.descripcion AS publicacion, p.categoria
FROM estudiantes e LEFT JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante;

SELECT e.codigoEstudiante, CONCAT(c.fechaPublicacion, " // ",c.descripcion) AS InteracciónEstudiante
FROM estudiantes e LEFT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante;

select e.codigoEstudiante codigo, e.correo, c.idComentario
	from comentarios c
		left join estudiantes e
			on c.codigoEstudiante = e.codigoEstudiante
            where e.correo like "j%.co_"
            order by e.codigoEstudiante asc;

select concat("(", p.fechaPublicacion, ") ", p.categoria) post, e.nombreEstudiante
	from estudiantes e
		left join posts p
			on e.codigoEstudiante = p.codigoEstudiante
            where p.categoria = "Quejas" 
            or p.categoria = "Informacion"
            order by p.categoria desc;


#---------------------------------------------------------------------------------
#Outer Join (Right Join)

SELECT e.contraseña AS PIN, c.fechaPublicacion AS PublicacionComentario
FROM estudiantes e
        RIGHT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
WHERE c.fechaPublicacion LIKE "2021-11-27" ORDER BY e.contraseña ASC;

SELECT e.codigoEstudiante AS IdEstudiante, c.idComentario AS CodigoComentario
FROM estudiantes e
        RIGHT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
WHERE c.idComentario % 2 = 0;

SELECT e.contraseña, c.fechaPublicacion
	FROM estudiantes e
		RIGHT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
	WHERE c.fechaPublicacion BETWEEN "2022-03-27" AND "2022-04-06";
SELECT p.idpost AS Id_Post, e.nombreEstudiante, p.fechaPublicacion
	FROM posts p
		RIGHT JOIN estudiantes e ON p.codigoEstudiante = e.codigoEstudiante
	WHERE p.idpost % 78 = 0;

SELECT c.idComentario, c.descripcion, p.idpost, p.codigoEstudiante, p.descripcion
FROM comentarios c RIGHT JOIN posts p ON c.idpost = p.idpost
WHERE c.idComentario < 500 AND c.idComentario > 200;
SELECT e.codigoEstudiante, e.correo, e.nombreEstudiante, c.idComentario, c.idpost, c.codigoEstudiante
FROM estudiantes e RIGHT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
WHERE c.codigoEstudiante BETWEEN 20 AND 50
ORDER BY c.codigoEstudiante DESC;

SELECT e.contraseña, p.fechaPublicacion, c.idpost
FROM estudiantes e RIGHT JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
    JOIN comentarios c ON p.codigoEstudiante = c.codigoEstudiante;

SELECT e.codigoEstudiante, e.nombreEstudiante, CONCAT(p.descripcion, "//",p.categoria) AS Descripcion__Categoria
FROM estudiantes e RIGHT JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante;
   
SELECT c.idpost, e.correo, e.nombreEstudiante
FROM comentarios c RIGHT JOIN estudiantes e ON c.codigoEstudiante = e.codigoEstudiante;

select p.descripcion post, p.categoria, p.fechaPublicacion, c.idComentario
	from posts p
		left join comentarios c
			on p.idpost = c.idpost
            where p.fechaPublicacion > "2022-05-18"
            or c.fechaPublicacion > "2022-05-18";
            
select c.codigoEstudiante, c.descripcion comentario, p.categoria
	from comentarios c
		left join posts p
			on c.idpost = p.idpost
            where p.codigoEstudiante = c.codigoEstudiante
            or c.descripcion like "M%P"
            order by c.descripcion desc;

#---------------------------------------------------------------------------------
#Unión

SELECT c.idComentario, c.descripcion, c.fechaPublicacion, c.codigoEstudiante, c.idpost
FROM comentarios c
UNION
SELECT p.idpost, p.fechaPublicacion, p.descripcion, p.categoria, p.codigoEstudiante
FROM posts p;
       
SELECT e.nombreEstudiante, c.codigoEstudiante, p.descripcion
FROM comentarios c, posts p
        NATURAL JOIN estudiantes e
WHERE e.nombreEstudiante LIKE "%ma"
UNION
SELECT p.categoria, c.descripcion AS DescripcionComentario, e.nombreEstudiante
FROM posts p, comentarios c, estudiantes e
WHERE p.categoria LIKE "%UDA";

SELECT COUNT(e.contraseña), p.categoria
	FROM estudiantes e 
		CROSS JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
			GROUP BY p.categoria
				HAVING COUNT(e.contraseña);
                
SELECT e.nombreEstudiante AS Autor, p.fechaPublicacion AS FechaPublicacion_Primer_Post, c.codigoEstudiante AS Codigo_Respuesta
	FROM estudiantes e
			INNER JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
		INNER JOIN comentarios c ON p.codigoEstudiante = c.codigoEstudiante
	WHERE p.fechaPublicacion BETWEEN "2022-01-01" AND "2022-03-27"
UNION
SELECT e.contraseña, c.fechaPublicacion, c.idComentario
	FROM estudiantes e
		RIGHT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
	WHERE c.fechaPublicacion BETWEEN "2022-03-27" AND "2022-04-06";

SELECT * FROM estudiantes
UNION
SELECT posts.idpost, posts.fechaPublicacion, comentarios.idComentario, comentarios.fechaPublicacion
FROM posts, comentarios
WHERE posts.idpost = comentarios.idpost
AND posts.idpost > 55;
SELECT c.idComentario, c.descripcion
FROM comentarios c
UNION
SELECT e.codigoEstudiante, e.nombreEstudiante
FROM estudiantes e;

select e.correo, e.contraseña 
from estudiantes e 
where e.correo like "%an%"
union
select c.descripcion, c.idpost
from comentarios c 
where c.descripcion like "%an%";

select count(p.idpost), concat(p.fechaPublicacion, " // ", p.codigoEstudiante)
from posts p 
where p.fechaPublicacion <= "2021-03-01"
union
select count(e.codigoEstudiante), concat(e.contraseña, " // ", e.nombreEstudiante)
from estudiantes e
where e.codigoEstudiante > 24;

SELECT c.descripcion, p.categoria
FROM comentarios c
    CROSS JOIN posts p ON c.codigoEstudiante = p.codigoEstudiante
UNION
SELECT nombreEstudiante, correo
FROM estudiantes;

SELECT e.codigoEstudiante, p.idpost, p.descripcion
FROM estudiantes e JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
UNION
SELECT descripcion, fechaPublicacion, categoria
FROM posts;

#---------------------------------------------------------------------------------
#Sobrante

SELECT p.categoria AS TIPO, e.contraseña
FROM posts p
        JOIN estudiantes e
ORDER BY e.contraseña ASC;

SELECT p.idpost, e.correo, c.idComentario
FROM posts p, estudiantes e, comentarios c
WHERE p.idpost < 100;

SELECT COUNT(p.idpost), e.codigoEstudiante
FROM posts p CROSS JOIN estudiantes e ON e.codigoEstudiante = p.codigoEstudiante
GROUP BY p.descripcion
HAVING COUNT(p.idpost);
SELECT e.codigoEstudiante, e.nombreEstudiante, c.idComentario, c.fechaPublicacion
FROM estudiantes e JOIN comentarios c
ORDER BY c.descripcion DESC;

select avg(e.codigoEstudiante) media, concat(" Es la media de comentarios del blog de ") es, count(c.idComentario) total
	from comentarios c, estudiantes e
		where c.codigoEstudiante = e.codigoEstudiante;
        
select p.descripcion post, p.categoria, c.fechaPublicacion fecha
	from comentarios c
		cross join posts p on c.idpost = p.idpost
			where c.codigoEstudiante < 40
            and p.categoria = "Quejas";

#---------------------------------------------------------------------------------
#Alias

SELECT p.idpost AS IdentificadorPost, c.idComentario AS IdentificadorComentario, e.codigoEstudiante AS IdentificadorEstudiante
FROM estudiantes e, posts p, comentarios c
WHERE p.idpost LIKE "%65" and c.idComentario LIKE "%65" and e.codigoEstudiante LIKE "%65";
   
SELECT p.descripcion AS ContenidoPost, c.descripcion AS ContenidoComentario, e.correo AS Correo_Electronico
FROM estudiantes e, posts p, comentarios c
WHERE e.correo LIKE "%.com";

SELECT e.codigoEstudiante AS Id_Estudiante, e.nombreEstudiante AS Nombre_Estudiante, CONCAT(p.descripcion, " | ", p.categoria) AS Contenido_Post
		FROM estudiantes e, posts p
	WHERE e.codigoEstudiante = p.codigoEstudiante;
SELECT c.descripcion AS Contenido_Comentario, e.nombreEstudiante AS Autor, c.codigoEstudiante AS Id_estudiante
		FROM comentarios c,  estudiantes e
	WHERE c.codigoEstudiante = e.codigoEstudiante;

SELECT e.nombreEstudiante, e.contraseña, c.idComentario, c.descripcion
FROM estudiantes AS e, comentarios AS c
WHERE e.codigoEstudiante = c.codigoEstudiante;
SELECT c.idComentario, c.descripcion, p.idpost, p.categoria
FROM comentarios AS c, posts AS p
WHERE c.idpost = p.idpost
AND c.idpost >= 162
AND c.idpost <= 260;

Select e.nombreEstudiante, e.correo
	from estudiantes as e
		where e.nombreEstudiante like "%ni%";
        
select p.fechaPublicacion, p.descripcion
	from posts as p
		where p.idpost < 40;

SELECT c.idComentario, c.descripcion
FROM comentarios AS c
    ORDER BY c.idComentario DESC;
   
SELECT p.idPost, p.descripcion
FROM posts AS p
    ORDER BY p.idPost DESC;
    
        
#VIEWS

#VIEW ESTUDIANTES - COMENTARIOS
CREATE VIEW estudiantesComentario AS
SELECT e.codigoEstudiante, e.nombreEstudiante, e.contraseña, c.idComentario, c.descripcion
FROM estudiantes AS e, comentarios AS c
WHERE e.codigoEstudiante = c.codigoEstudiante;

# CREATE VIEW COMENTARIO - POST
CREATE VIEW comentariosPosts AS
SELECT c.idComentario, c.descripcion, p.idpost, p.categoria
FROM comentarios AS c, posts AS p
WHERE c.idpost = p.idpost
AND c.idpost >= 162
AND c.idpost <= 260;

#CREATE VIEW POST - CATEGORIAS
CREATE VIEW postsCategoria AS
select p.descripcion post, p.categoria, c.fechaPublicacion fecha
	from comentarios c
		cross join posts p on c.idpost = p.idpost;
            
# VIEW estudiantesComentarios 
CREATE VIEW estudiantesComentarios AS
SELECT e.nombreEstudiante, c.codigoEstudiante, p.descripcion
FROM comentarios c, posts p
        NATURAL JOIN estudiantes e
WHERE e.codigoEstudiante = p.codigoEstudiante
	AND c.descripcion LIKE "%ma"
UNION
SELECT p.categoria, c.descripcion AS DescripcionComentario, e.nombreEstudiante
FROM posts p, comentarios c, estudiantes e
WHERE p.idpost = c.idpost
AND p.categoria LIKE "%UDA";


/*Views Larrea*/
#VIEW IdE IdC
CREATE VIEW IdE0IdC as
SELECT e.codigoEstudiante, c.idComentario
FROM estudiantes e
        LEFT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
GROUP BY e.codigoEstudiante;

# Views De Jara

CREATE VIEW EstudiantesPosts as
SELECT e.contraseña, c.fechaPublicacion
	FROM estudiantes e
		RIGHT JOIN comentarios c ON e.codigoEstudiante = c.codigoEstudiante
	WHERE c.fechaPublicacion BETWEEN "2022-03-27" AND "2022-04-06";

CREATE VIEW idpostEstudiantes as
SELECT p.idpost AS Id_Post, e.nombreEstudiante, p.fechaPublicacion
	FROM posts p
		RIGHT JOIN estudiantes e ON p.codigoEstudiante = e.codigoEstudiante
	WHERE p.idpost >= 5;

CREATE VIEW descripcionNombre as
select e.nombreEstudiante nombre, c.descripcion comentarios
	from comentarios c
		natural join estudiantes e
			where c.descripcion like "%ORMACI%"
				and e.nombreEstudiante like "%Daniel Jara%";

CREATE VIEW numeroComentarios as
select count(c.idComentario) ComentariosConPost7 
	from comentarios c
		cross join posts p on c.idpost = p.idpost
			where p.idpost = 10;

#VIEW IdE CategoriaP
CREATE VIEW  IdE0CategoriaP AS
SELECT c.codigoEstudiante, p.categoria
FROM comentarios c
    INNER JOIN posts p ON c.codigoEstudiante = p.codigoEstudiante
    WHERE p.categoria = "Quejas";

#VIEW IdE DescripcionC CategoriaP
CREATE VIEW IdE0DescripcionC0CategoriaP as
select c.codigoEstudiante, c.descripcion comentario, p.categoria
	from comentarios c
		left join posts p
			on c.idpost = p.idpost
            where p.codigoEstudiante = c.codigoEstudiante
            or c.descripcion like "M%P"
            order by c.descripcion desc;
            
#VIEW DescripcionP correoE
CREATE VIEW DescripcionP0correoE AS
SELECT p.descripcion AS descripcionPost, e.correo
FROM posts p
CROSS JOIN estudiantes e;

/*Views Daniel Santana*/
CREATE VIEW FechaPrimerPost AS
SELECT e.nombreEstudiante AS Nombre, p.fechaPublicacion AS Fecha_Publicacion_Primer_Post
	FROM estudiantes e
			CROSS JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
		WHERE p.fechaPublicacion BETWEEN "2021-03-01" AND "2021-05-01";
        
CREATE VIEW NumeroPostsxCategoria AS
SELECT COUNT(e.correo) AS Cantidad, p.categoria AS Categoria
	FROM estudiantes e 
		CROSS JOIN posts p ON e.codigoEstudiante = p.codigoEstudiante
			GROUP BY p.categoria
				HAVING COUNT(e.correo);
                
CREATE VIEW InformacionComentarios_Posts_con_Doce AS
SELECT p.codigoEstudiante AS Id_Estudiante, c.descripcion AS Contenido_Comentario, c.idpost AS Id_Post_Comentado
	FROM posts p
			CROSS JOIN comentarios c ON c.codigoEstudiante = p.codigoEstudiante
		WHERE c.idpost LIKE "%12%";
    
CREATE VIEW Post_sobre_Quejas AS 
SELECT e.correo, p.descripcion post, p.categoria, p.fechaPublicacion fecha
	FROM estudiantes e
		NATURAL JOIN posts p
			WHERE p.categoria = "Quejas"
				AND p.fechaPublicacion LIKE "2021-01%";
                


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
