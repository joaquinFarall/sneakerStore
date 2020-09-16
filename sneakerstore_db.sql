-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2020 a las 17:02:52
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sneakerstore_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `marcaId` int(11) NOT NULL,
  `marcaNombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`marcaId`, `marcaNombre`) VALUES
(1, 'Nike'),
(2, 'Jordan'),
(3, 'Adidas'),
(4, 'Reebok'),
(6, 'Fallen'),
(7, 'NewBalance'),
(8, 'Puma'),
(9, 'hym');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `productoId` int(11) NOT NULL,
  `marcaId` int(11) NOT NULL,
  `productoNombre` varchar(300) NOT NULL,
  `descripcion` varchar(750) DEFAULT NULL,
  `tipoId` int(11) NOT NULL,
  `foto1` varchar(500) DEFAULT NULL,
  `foto2` varchar(500) DEFAULT NULL,
  `foto3` varchar(500) DEFAULT NULL,
  `precio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`productoId`, `marcaId`, `productoNombre`, `descripcion`, `tipoId`, `foto1`, `foto2`, `foto3`, `precio`) VALUES
(1, 1, 'Air Force 1', 'El zapato deportivo Air Force 1, lanzado al mercado en 1982, es un producto', 1, 'https://www.digitalsport.com.ar/files/products/5d08e8bf1279d-364613-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5d08e74c82523-364613-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5d08e74a9a9e4-364613-500x500.jpg', 23000),
(2, 3, 'Adidas Duramo 9', 'Estas versátiles zapatillas de running para hombre son ideales para la máqu', 1, '', '', '', 23000),
(3, 3, 'Adidas Lite Racer', 'Deportivas y versátiles. Ponéte estas zapatillas de running para enfrentart', 1, '', '', '', 23000),
(4, 3, 'Adidas Nova Flow', 'Ofrecen agarre sobre terrenos irregulares e imprescindibles para que puedas', 1, '', '', '', 23000),
(5, 3, 'Adidas Sense Bounce', '', 1, '', '', '', 23000),
(6, 3, 'Adidas Ultra Boost', 'Estas zapatillas de alto rendimiento traen un exterior tejido que abraza el', 1, '', '', '', 23000),
(7, 1, 'Air Max 90 LTR GS', 'Nike Air Max 90, el primer modelo de la nueva generación', 1, 'https://www.digitalsport.com.ar/files/products/5ee3b2afde423-496857-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5ee3b2b4ac6f3-496857-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5ee3b2b37c450-496857-500x500.jpg', 23000),
(8, 1, 'Air Max 90 365', 'Nike Air Max 90, el primer modelo de la nueva generación', 1, 'https://www.digitalsport.com.ar/files/products/5f11adcae06d9-496537-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f11adcf69307-496537-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f11adce32504-496537-500x500.jpg', 23000),
(9, 1, 'Air Max 97', 'Esta legendaria zapatilla fue un diseño de Christian Tresser, con el uso de', 1, 'https://www.digitalsport.com.ar/files/products/5dcdcc7e6a72c-483951-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5dcdcc8247319-483951-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5dcdcc814ce02-483951-500x500.jpg', 23000),
(10, 1, 'Air Max 200', 'Este calzado hecho por NIKE tiene una construcción superior de materiales s', 1, 'https://www.digitalsport.com.ar/files/products/5f4c3c26afc67-496450-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f4c3c292b282-496450-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f4c3c2b7bb5f-496450-500x500.jpg', 23000),
(11, 1, 'Air Max 720 OBJ', 'Con su diseño inspirado en el ala abierta y el ícono de la moda, Odell Beck', 1, 'https://www.digitalsport.com.ar/files/products/5f233336998c7-531262-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f23333a89bcf-531262-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f233339a0bef-531262-500x500.jpg', 23000),
(12, 1, 'Air Max 2090', 'Traé el pasado al futuro con las Nike Air Max 2090, un look audaz inspirado', 1, 'https://www.digitalsport.com.ar/files/products/5f36c146e9288-531892-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f36c14b368f9-531892-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f36c14a35752-531892-500x500.jpg', 23000),
(13, 3, 'Pantalon Adidas Azul', 'Joggin/Pantalon deportivo Adidas', 4, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/dbdac77cd4ff47b39130a922010476da_9366/Pantalon_Conico_Puno_Ajustado_Essentials_3_Tiras_Azul_DU0478_01_laydown.jpg', 'https://assets.adidas.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/8962233d10ca487b9671a92201048414_9366/Pantalon_Conico_Puno_Ajustado_Essentials_3_Tiras_Azul_DU0478_02_laydown_hover.jpg', '', 4499),
(14, 3, 'Pantalon Adidas Negro', 'Joggin/Pantalon deportivo Adidas', 4, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/7bcdf7b473284e6ebb0fa93600ed47e9_9366/Pantalon_Conico_Puno_Ajustado_Essentials_3_Tiras_Negro_DU0468_01_laydown.jpg', 'https://assets.adidas.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/c24a1b4bf0b74bcfbc34a93600ed5470_9366/Pantalon_Conico_Puno_Ajustado_Essentials_3_Tiras_Negro_DU0468_02_laydown_hover.jpg', '', 4499),
(17, 3, 'Short Adidas negro', 'Short deportivo Adidas', 5, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/ba050e329501474d84a2a92201000dce_9366/Shorts_7_Pulgadas_Essentials_3_Tiras_Chelsea_Negro_DQ3073_01_laydown.jpg', 'https://assets.adidas.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/a916dbfd305c4c67a093a92201001f73_9366/Shorts_7_Pulgadas_Essentials_3_Tiras_Chelsea_Negro_DQ3073_02_laydown_hover.jpg', '', 2999),
(19, 2, 'Pantalon Jordan PSG negro', 'Joggin/Pantalon deportivo Jordan', 4, 'https://www.digitalsport.com.ar/files/products/5f56243a32657-497643-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f56243fcbb66-497643-500x500.jpg', '', 7999),
(20, 4, 'Pantalon Reebok Negro', 'Joggin/Pantalon deportivo Reebok', 4, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/e4809083deed40d6b0b5aac0014644ca_9366/Pantalon_Training_Essentials_Negro_FK6024_13_standard.jpg', 'https://assets.reebok.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/8b2cf791ecb343f88b25aac0014272a0_9366/Pantalon_Training_Essentials_Negro_FK6024_15_standard.jpg', '', 4099),
(22, 7, 'Pantalon New Balance Negro', 'Joggin/Pantalon deportivo New Balance', 4, 'https://nb.scene7.com/is/image/NB/mp03501bk_nb_70_i?$pdpflexf2$&fmt=webp', 'https://nb.scene7.com/is/image/NB/mp03501bk_nb_72_i?$pdpflexf2$&fmt=webp', '', 5899),
(23, 7, 'Short New Balance negro', 'Short deportivo New Balance', 5, 'https://nb.scene7.com/is/image/NB/ms93189bk_nb_40_i?$pdpflexf2$&fmt=webp', 'https://nb.scene7.com/is/image/NB/ms93189bk_nb_41_i?$pdpflexf2$&fmt=webp', '', 2499),
(26, 1, 'Pantalon Nike Gris', 'Joggin/Pantalon deportivo Nike', 4, 'https://www.digitalsport.com.ar/files/products/5f47e5598661b-497756-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f47e55a9dafc-497756-500x500.jpg', '', 3799),
(27, 1, 'Pantalon Nike negro', 'Joggin/Pantalon deportivo Nike', 4, 'https://www.digitalsport.com.ar/files/products/5ef0e1cd4906c-497175-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5ef0e1cf8232f-497175-500x500.jpg', '', 5199),
(30, 4, 'Pantalon Reebok Gris', 'Joggin/Pantalon deportivo Reebok', 4, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/5452a6fffb3e4a68bd19aac00019c461_9366/Pantalon_Training_Essentials_Gris_FJ4682_13_standard.jpg', 'https://assets.reebok.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/9b449d27f6e7480da8e1aac0002250a8_9366/Pantalon_Training_Essentials_Gris_FJ4682_15_standard.jpg', '', 4099),
(32, 4, 'Short Reebok negro', 'Short deportivo Reebok', 5, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/d9b75a22ad6f4cfe9cf0aac00013b96f_9366/Shorts_Workout_Ready_Negro_FP9110_13_standard.jpg', 'https://assets.reebok.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/005352f14ecd47b68a8faac00017adac_9366/Shorts_Workout_Ready_Negro_FP9110_15_standard.jpg', '', 2999),
(33, 2, 'Short Jordan negro', 'Short deportivo Jordan', 5, 'https://www.digitalsport.com.ar/files/products/5e22026e722e9-451194-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e22026a3d88b-451194-500x500.jpg', '', 3899),
(35, 1, 'Short Nike Gris', 'Short deportivo Nike', 5, 'https://www.digitalsport.com.ar/files/products/5f3eaa4639506-512367-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f3eaa477a6cb-512367-500x500.jpg', '', 2429),
(36, 1, 'Short Nike Negro', 'Short deportivo Nike', 5, 'https://www.digitalsport.com.ar/files/products/5f3eaa42452ac-512368-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5f3eaa4354c64-512368-500x500.jpg', '', 2429),
(37, 1, 'Camiseta Chelsea 10, Eden Hazard', NULL, 8, 'https://static.artfire.com/uploads/mfs/items/22/d5/large/22d5eb07cddae171234dbe110b926476e1af7b3077aca2ed2c9865ca5ae4a519.jpg', '', '', 6000),
(38, 1, 'Camiseta Paris PSG 7, Kylian Mbappe', NULL, 8, 'https://www.soccerjerseyfan.store/images/paris-saint-germain/kylian-mbapp%C3%A9-home-jersey-19-20-men\'s.jpg', '', '', 6000),
(39, 1, 'Camiseta Barcelona 10, Lionel Messi', NULL, 8, 'https://images-na.ssl-images-amazon.com/images/I/61j7JU4lx9L._AC_SL1000_.jpg', '', '', 6000),
(40, 1, 'Camiseta Paris PSG 10, Neymar', NULL, 8, 'https://media.e-subsidesports.com/sites/us/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/1/0/1000__psghss1920_10.jpg', '', '', 6000),
(41, 1, 'Camiseta Juventus 7, Cristiano Ronaldo', NULL, 8, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3224000/altimages/ff_3224337alt1_full.jpg&w=900', '', '', 6000),
(42, 1, 'Camiseta Tampa Bay Buccaneers,Tom Brady', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3888000/altimages/ff_3888374-c66d707522354138c6dealt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3888000/altimages/ff_3888374-c66d707522354138c6dealt3_full.jpg&w=900', '', 6500),
(43, 1, 'Camiseta Dallas Cowboys, Zeke Elliot', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3989000/altimages/ff_3989513-49355c6240800a7ed706alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3989000/altimages/ff_3989513-49355c6240800a7ed706alt3_full.jpg&w=900', '', 6500),
(44, 1, 'Camiseta Baltimore Ravens, Lamar Jackson', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3139000/altimages/ff_3139242alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3139000/altimages/ff_3139242alt3_full.jpg&w=900', '', 6500),
(45, 1, 'Camiseta Arizona Cardinals, Deandre Hopkins', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3878000/altimages/ff_3878094-484cf4b1aa07e5eaa0fbalt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3878000/altimages/ff_3878094-484cf4b1aa07e5eaa0fbalt3_full.jpg&w=900', '', 6500),
(46, 1, 'Camiseta GreenBay Packers, Aaron Rodgers', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_825000/altimages/FF_825453ALT1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_825000/altimages/FF_825453ALT3_full.jpg&w=900', '', 6500),
(47, 1, 'Camiseta Atlanta Falcons, Julio Jones', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3687000/altimages/ff_3687751-c4d527e3be6fadd81123alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3687000/altimages/ff_3687751-c4d527e3be6fadd81123alt3_full.jpg&w=900', '', 6500),
(48, 1, 'Camiseta Chicago Bears, Khalil Mack', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3084000/altimages/ff_3084062alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3084000/altimages/ff_3084062alt3_full.jpg&w=900', '', 6500),
(49, 1, 'Camiseta  Kansas City Chiefs, Patrick Mahomes', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2941000/altimages/ff_2941227alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2941000/altimages/ff_2941227alt3_full.jpg&w=900', '', 6500),
(50, 1, 'Camiseta Cleveland Browns, Odell Beckham Jr', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3687000/altimages/ff_3687722-fa9bf90d1b67137774b1alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3687000/altimages/ff_3687722-fa9bf90d1b67137774b1alt3_full.jpg&w=900', '', 6500),
(51, 1, 'Camiseta Philly Eagles, Carson Wentz', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2443000/altimages/ff_2443504alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2443000/altimages/ff_2443504alt3_full.jpg&w=900', '', 6500),
(52, 1, 'Camiseta Seattle SeaHawks, Rusell Wilson', NULL, 7, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2475000/altimages/ff_2475509alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2475000/altimages/ff_2475509alt3_full.jpg&w=900', '', 6500),
(53, 3, 'Remera Adidas Azul', 'Remera deportiva Adidas', 2, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/140d64d268bc46fab17daac601663de4_9366/Remera_3_Tiras_Azul_FM3772_01_laydown.jpg', 'https://assets.adidas.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/da070f909e354c8ca2d9aac60166503f_9366/Remera_3_Tiras_Azul_FM3772_02_laydown.jpg', '', 2999),
(54, 3, 'Remera Adidas Blanca', 'Remera deportiva Adidas', 2, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/c0b5234b4053469285dea83500d56eda_9366/Remera_3_Tiras_Blanco_CW1203_01_laydown.jpg', 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/80ef239714014ba48e1ca83500d579e0_9366/Remera_3_Tiras_Blanco_CW1203_02_laydown.jpg', '', 2999),
(55, 3, 'Buzo Adidas Gris', NULL, 3, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/cd451bfb14d14aa9a26ea9770101ccab_9366/Buzo_Essentials_3_rayas_Gris_DU0495_01_laydown.jpg', 'https://assets.adidas.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/5580c05e55714992ac63a9770101da2f_9366/Buzo_Essentials_3_rayas_Gris_DU0495_02_laydown.jpg', '', 5499),
(56, 3, 'Buzo Adidas Negro', NULL, 3, 'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/b283cd8780a04c148f1aa93800b41f67_9366/Buzo_Essentials_3_rayas_Negro_DQ3096_01_laydown.jpg', 'https://assets.adidas.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/ad6244b8990a473190e2a93800b431f3_9366/Buzo_Essentials_3_rayas_Negro_DQ3096_02_laydown_hover.jpg', '', 5499),
(57, 6, 'Buzo Fallen Azul', NULL, 3, 'https://cdn.shopify.com/s/files/1/0064/0312/9408/products/FMT1BU57_1200x.jpg?v=1594748980', 'https://cdn.shopify.com/s/files/1/0064/0312/9408/products/IMG_4267_700x.jpg?v=1594748980', '', 3630),
(61, 6, 'Buzo Fallen Gris', NULL, 3, 'https://cdn.shopify.com/s/files/1/0064/0312/9408/products/FMT1BU56_1200x.jpg?v=1594324862', 'https://cdn.shopify.com/s/files/1/0064/0312/9408/products/IMG_4250_700x.jpg?v=1594324850', '', 3630),
(64, 1, 'Buzo Nike Gris', NULL, 3, 'https://www.digitalsport.com.ar/files/products/5e6658cde57ed-488430-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e6658d01838a-488430-500x500.jpg', '', 8199),
(65, 1, 'Buzo Nike Naranja', NULL, 3, 'https://www.digitalsport.com.ar/files/products/5e6658d30947a-488431-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e6658d541f2a-488431-500x500.jpg', '', 8199),
(66, 1, 'Campera Nike Negra y Blanca', NULL, 3, 'https://www.digitalsport.com.ar/files/products/5e45636d2c7bd-488700-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e4563716fdfe-488700-500x500.jpg', '', 6499),
(67, 4, 'Buzo Reebok Azuk', NULL, 3, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/8fd2db5bd02b4c78888caabf00c96498_9366/Buzo_de_cuello_redondo_Classics_Vector_Azul_FJ3278_13_standard.jpg', 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/e71d563a59284f7e88c2aabf010fddfd_9366/Buzo_de_cuello_redondo_Classics_Vector_Azul_FJ3278_15_standard.jpg', '', 5499),
(68, 4, 'Buzo Reebok Negro', NULL, 3, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/d92591122d22424e98e7aac00133a762_9366/Buzo_con_capucha_Classics_Vector_Negro_FJ3280_13_standard.jpg', 'https://assets.reebok.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/3f632bb2406d4eee9f19aac0012ceb6a_9366/Buzo_con_capucha_Classics_Vector_Negro_FJ3280_15_standard.jpg', '', 5999),
(69, 1, 'Chomba Nike Negra', NULL, 2, 'https://www.digitalsport.com.ar/files/products/5ee3887568088-523657-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5ee38877caa37-523657-500x500.jpg', '', 3899),
(70, 2, 'Remera Jordan classics ss Nike Negra', NULL, 2, 'https://www.digitalsport.com.ar/files/products/5e6658e8b50b6-488914-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e6658eac8b78-488914-500x500.jpg', '', 2689),
(71, 2, 'Remera Jordan classics ss Nike Gris', NULL, 2, 'https://www.digitalsport.com.ar/files/products/5e01fbb091ca2-485119-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e01fbb16dd93-485119-500x500.jpg', '', 2689),
(72, 2, 'Remera Jordan classics ss Nike Blanca', NULL, 2, 'https://www.digitalsport.com.ar/files/products/5e3b00c341f8e-488915-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e3b00c457103-488915-500x500.jpg', '', 2689),
(74, 7, 'Buzo New Balance Gris', NULL, 3, 'https://nb.scene7.com/is/image/NB/mt03560ag_nb_73_i?$pdpflexf2$&fmt=webp', 'https://nb.scene7.com/is/image/NB/mt03560ag_nb_72_i?$pdpflexf2$&fmt=webp', '', 5199),
(75, 7, 'Buzo New Balance Negro', NULL, 3, 'https://nb.scene7.com/is/image/NB/mt03560bk_nb_73_i?$pdpflexf2$&fmt=webp', 'https://nb.scene7.com/is/image/NB/mt03560bk_nb_72_i?$pdpflexf2$&fmt=webp', '', 5199),
(76, 7, 'Remera New Balance Gris', NULL, 2, 'https://nb.scene7.com/is/image/NB/mt01070ag_nb_40_i?$pdpflexf2$&fmt=webp', 'https://nb.scene7.com/is/image/NB/mt01070ag_nb_41_i?$pdpflexf2$&fmt=webp', '', 2399),
(77, 1, 'Remera Nike Blanca', NULL, 2, 'https://www.digitalsport.com.ar/files/products/5e30baf910620-488507-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e30bafb264e1-488507-500x500.jpg', '', 3299),
(78, 1, 'Remera Nike Just Do It Bordo', NULL, 2, 'https://www.digitalsport.com.ar/files/products/5e66591a97636-488495-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5e66591cda282-488495-500x500.jpg', '', 3399),
(79, 1, 'Remera Nike Naranja', NULL, 2, 'https://www.digitalsport.com.ar/files/products/5ec2cbf72f13b-488508-500x500.jpg', 'https://www.digitalsport.com.ar/files/products/5ec2cbfbb7c7f-488508-500x500.jpg', '', 23000),
(80, 4, 'Remera Reebok Azul', NULL, 2, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/7da9afb2c2d14d2b88beaac1005e6793_9366/Remera_Classics_Vector_Azul_FK2656_13_standard.jpg', 'https://assets.reebok.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/ebff4d9f80d54489a16daac10040696d_9366/Remera_Classics_Vector_Azul_FK2656_15_standard.jpg', '', 2499),
(81, 4, 'Remera Reebok UFC negra', NULL, 2, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/0718ccd06b514cb4afd1a8dd0010e8f1_9366/Remera_Reebok_Linear_Read_Negro_CW5376_02_standard.jpg', 'https://assets.reebok.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/83f2d54011184727b8c3a8c001802f05_9366/Remera_Reebok_Linear_Read_Negro_CW5376_15_standard.jpg', '', 2699),
(82, 6, 'Patriot Black/White', 'Zapatilla de Skate Fallen', 1, '', '', '', 23000),
(83, 6, 'Patriot Gris/Blanco', 'Zapatilla de Skate Fallen', 1, '', '', '', 23000),
(84, 6, 'Bomber T - Crimson Rojas', NULL, 1, '', '', '', 23000),
(85, 6, 'Bomber RWTF', NULL, 1, '', '', '', 23000),
(86, 1, 'Air Jordan 1 Classic', 'Las Air Jordan I se diseñaron para Michael Jordan y aquello supuso muchos c', 1, '', '', '', 23000),
(87, 1, 'Air Jordan 1 Shattered Backboa', 'Las Air Jordan I se diseñaron para Michael Jordan y aquello supuso muchos c', 1, '', '', '', 23000),
(88, 2, 'Air Jordan III', 'Las Air Jordan III fueron unas zapatillas decisivas en la relación entre Ni', 1, '', '', '', 23000),
(89, 2, 'Air Jordan IV Cactus Jack', 'Jordan X Travis Scott', 1, '', '', '', 23000),
(90, 2, 'Air Jordan V', 'Las Air Jordan 5 Son las zapatillas blancas más elegantes de toda la gama J', 1, '', '', '', 23000),
(91, 1, 'Air Jordan Dior 1', 'Air Jordan X Dior ', 1, '', '', '', 23000),
(92, 7, 'New Balance 247 ', 'Esta clásica zapatilla urbana cuenta con construcción tipo bootie y una cóm', 1, '', '', '', 23000),
(93, 7, 'New Balance 373', 'Zapatillas NB clásicas inspiradas en nuestro modelo de running vintage.', 1, '', '', '', 23000),
(94, 7, 'New Balance 850', 'un estilo moderno a uno de los modelos clásicos favoritos con las zapatilla', 1, '', '', '', 23000),
(95, 4, 'Reebok Aztrek', 'El Aztrek vuelve con un diseño actualizado en el que se destaca una silueta', 1, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/91fa1697ac3e450abd3caa46014ecf73_9366/Zapatillas_Aztrek_96_Blanco_DV7249_03_standard.jpg', 'https://assets.reebok.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/7ad4e4c5ae374a84aa13aa46015190f8_9366/Zapatillas_Aztrek_96_Blanco_DV7249_04_standard.jpg', '', 23000),
(96, 4, 'Reebok HIIT', 'Este calzado está diseñado para ofrecerte soporte al realizar movimientos v', 1, '', '', '', 23000),
(97, 4, 'Reebok Quick Motion 2.0', 'Este calzado de running viene con un exterior de malla transpirable con revestimientos que te brindan soporte. La mediasuela ofrece amortiguación liviana para reducir el impacto en cada pisada.', 1, '', '', '', 23000),
(98, 4, 'Reebok Royal Dashon', 'Esta zapatilla de estilo retro recibe una actualización con un diseño moderno inspirado en el trail. La parte superior mezcla piel sintética y tela confiriéndole un look suave y texturizado. ', 1, 'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy/31288280c64b4e50a1f0aa17012fb49b_9366/Zapatillas_Reebok_Royal_Dashonic_2.0_Gris_EG9248_03_standard.jpg', 'https://assets.reebok.com/images/h_2000,f_auto,q_auto:sensitive,fl_lossy/028cfe0226614e7e944aaa1701337a1f_9366/Zapatillas_Reebok_Royal_Dashonic_2.0_Gris_EG9248_04_standard.jpg', '', 23000),
(99, 4, 'Reebok Royal Turbo Impulse', ' Este calzado luce un increíble diseño futurista con líneas curvas y cortes geométricos. Con detalles de colores brillantes y una estética bicolor que nos recuerda la actitud provocativa de los 90', 1, '', '', '', 23000),
(100, 1, 'Nike SB Alley Oop', 'Zapatillas Nike WMNS SB ALLEYOOP', 1, '', '', '', 23000),
(101, 1, 'Air Jordan 1 Travis Scott', 'Air Jordan X Travis Scott', 1, '', '', '', 23000),
(102, 1, 'Air Jordan 1 low Travis Scott', 'Air Jordan X Travis Scott', 1, '', '', '', 23000),
(103, 2, 'Jordan Why Not Zero', 'Botas para adultos Jordan WHY NOT ZERO', 1, '', '', '', 23000),
(104, 1, 'Air Jordan 1 low Shattered Bac', 'La suela está hecha de goma y tiene la Unidad Air Sole, esto te da una excelente tracción y también muy suaves pisadas, sin importar la superficie.', 1, '', '', '', 23000),
(105, 1, 'Air Jordan 1 low Court Violet', 'La suela está hecha de goma y tiene la Unidad Air Sole, esto te da una excelente tracción y también muy suaves pisadas, sin importar la superficie.', 1, '', '', '', 23000),
(106, 1, 'Camiseta Phoenix Suns, Devin Booker', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2711000/altimages/ff_2711252alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2711000/altimages/ff_2711252alt2_full.jpg&w=900', '', 7500),
(107, 1, 'Camiseta Miami Heat, Jimmy Butler', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3719000/altimages/ff_3719011-345fb5bee8725ba76819alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3719000/altimages/ff_3719011-345fb5bee8725ba76819alt2_full.jpg&w=900', '', 7500),
(108, 1, 'Camiseta Golden State Warriors, Stephen Curry', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3472000/altimages/ff_3472775-730d23cc67ef35994193alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3472000/altimages/ff_3472775-730d23cc67ef35994193alt2_full.jpg&w=900', '', 7500),
(109, 1, 'Camiseta Los Angeles Lakers, Anthony Davis', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3609000/altimages/ff_3609758-6372099711c193b51753alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3609000/altimages/ff_3609758-6372099711c193b51753alt2_full.jpg&w=900', '', 7500),
(110, 1, 'Camiseta Dallas Mavericks, Luka Duncic', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3231000/altimages/ff_3231568-ce1eb6d722d4427b2ea5alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3231000/altimages/ff_3231568-ce1eb6d722d4427b2ea5alt2_full.jpg&w=900', '', 7500),
(111, 1, 'Camiseta Brooklyn Nets, Kevin Durant', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3609000/altimages/ff_3609760-356f1159b014e6348535alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3609000/altimages/ff_3609760-356f1159b014e6348535alt2_full.jpg&w=900', '', 7500),
(112, 1, 'Camiseta Orlando Magic, Evan Fournier', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2721000/altimages/ff_2721132alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2721000/altimages/ff_2721132alt2_full.jpg&w=900', '', 7500),
(114, 1, 'Camiseta Milwaukee Bucks, Giannis Antetokounmpo', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2711000/altimages/ff_2711167alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2711000/altimages/ff_2711167alt2_full.jpg&w=900', '', 7500),
(115, 1, 'Camiseta Houston Rockets, James Harden', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3774000/altimages/ff_3774114-4bea46320a1ab64effb3alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3774000/altimages/ff_3774114-4bea46320a1ab64effb3alt2_full.jpg&w=900', '', 7500),
(116, 1, 'Camiseta Miami Heat, Tyler Herro', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3631000/altimages/ff_3631502-206085b27af7546d1d66alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3631000/altimages/ff_3631502-206085b27af7546d1d66alt2_full.jpg&w=900', '', 7500),
(117, 1, 'Camiseta Brooklyn Nets, Kyrie Irving', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3620000/altimages/ff_3620039-614fedb42707b5fd6299alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3620000/altimages/ff_3620039-614fedb42707b5fd6299alt2_full.jpg&w=900', '', 7500),
(118, 1, 'Camiseta Chicago Bulls, Zach Lavine', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3467000/altimages/ff_3467924-c33b7912a061f5068938alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3467000/altimages/ff_3467924-c33b7912a061f5068938alt2_full.jpg&w=900', '', 7500),
(119, 1, 'Camiseta Los Angeles Lakers, Lebron James', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3774000/altimages/ff_3774124-8dda7d765787e82d6c61alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3774000/altimages/ff_3774124-8dda7d765787e82d6c61alt2_full.jpg&w=900', '', 7500),
(120, 1, 'Camiseta Los Angeles Clippers,Kawhi Leonard', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3611000/altimages/ff_3611307-21f291b7f16eb7429b8balt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3611000/altimages/ff_3611307-21f291b7f16eb7429b8balt2_full.jpg&w=900', '', 7500),
(121, 1, 'Camiseta Portland Trail Blazers, Damian Lillard', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3774000/altimages/ff_3774159-7335b5b67d21e6329d5dalt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3774000/altimages/ff_3774159-7335b5b67d21e6329d5dalt2_full.jpg&w=900', '', 7500),
(122, 1, 'Camiseta Toronto Raptors, Kyle Lowry', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2800000/altimages/ff_2800718alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2800000/altimages/ff_2800718alt2_full.jpg&w=900', '', 7500),
(123, 1, 'Camiseta Utah Jazz, Donovan Mitchell', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3038000/altimages/ff_3038014alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3038000/altimages/ff_3038014alt2_full.jpg&w=900', '', 7500),
(124, 1, 'Camiseta Memphis Grizzlies, Ja Morant', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3777000/altimages/ff_3777056-c1aecba9626aa5216a03alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3777000/altimages/ff_3777056-c1aecba9626aa5216a03alt2_full.jpg&w=900', '', 7500),
(125, 1, 'Camiseta Indiana Pacers, Victor Oladipo', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3038000/altimages/ff_3038019alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3038000/altimages/ff_3038019alt2_full.jpg&w=900', '', 7500),
(126, 1, 'Camiseta Minnesota TimberWolves, D\'Angelo Russell', NULL, 6, 'https://www.nbaprojersey.net/images/minnesota-timberwolves/minnesota-timberwolves-icon-d\'angelo-russell-navy-jersey.jpg', 'https://cdn.shopify.com/s/files/1/1881/8763/products/TIMBERWOLVES_JERSEY_00_FRONT-WORKINGFILE-copy_900x.png?v=1581028790', '', 7500),
(127, 1, 'Camiseta Oklahoma City Thunder, Shai Gilgeous-Alexander', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3689000/altimages/ff_3689899-45da02b6eefd36c5c3e5alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3689000/altimages/ff_3689899-45da02b6eefd36c5c3e5alt2_full.jpg&w=900', '', 7500),
(128, 1, 'Camiseta Boston Celtics, Jayson Tatum', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2868000/altimages/ff_2868245alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_2868000/altimages/ff_2868245alt2_full.jpg&w=900', '', 7500),
(129, 1, 'Camiseta Golden State Warriors, Klay Thompson', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3467000/altimages/ff_3467943-15fa0d50b104f80f0068alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3467000/altimages/ff_3467943-15fa0d50b104f80f0068alt2_full.jpg&w=900', '', 7500),
(130, 1, 'Camiseta Boston Celtics, Kemba Walker', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3620000/altimages/ff_3620024-f82dc0df94f1946cf5dbalt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3620000/altimages/ff_3620024-f82dc0df94f1946cf5dbalt2_full.jpg&w=900', '', 7500),
(131, 1, 'Camiseta Houston Rockets, Russell Westbrook', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3774000/altimages/ff_3774112-f11c0964e7ca568174dcalt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3774000/altimages/ff_3774112-f11c0964e7ca568174dcalt2_full.jpg&w=900', '', 7500),
(132, 1, 'Camiseta Washington Wizards, John Wall', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3378000/altimages/ff_3378519-09345087fedc48b2ca9balt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3378000/altimages/ff_3378519-09345087fedc48b2ca9balt2_full.jpg&w=900', '', 7500),
(133, 1, 'Camiseta New Orleans Pelicans,Zion Williamson', NULL, 6, 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3596000/altimages/ff_3596123-6c6a3c5593ae12f6cfc2alt1_full.jpg&w=900', 'https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3596000/altimages/ff_3596123-6c6a3c5593ae12f6cfc2alt2_full.jpg&w=900', '', 7500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `tipoId` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`tipoId`, `tipo`) VALUES
(1, 'zapatillas'),
(2, 'remera'),
(3, 'buzo'),
(4, 'pantalon'),
(5, 'short'),
(6, 'NBA'),
(7, 'NFL'),
(8, 'futbol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuarioId` int(11) NOT NULL,
  `usuarioNombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contraseña` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuarioId`, `usuarioNombre`, `apellido`, `email`, `contraseña`) VALUES
(1, 'admin', 'admin', 'admin@sneakerstore.com', 'ssadmin123'),
(2, 'Joaquin', 'Farall', 'joakinfarall@gmail.com', 'ssdeveloper123'),
(3, 'Tomas', 'Farall', 'tomiifarall@gmail.com', 'tomifarall123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`marcaId`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`productoId`),
  ADD KEY `marcaId` (`marcaId`),
  ADD KEY `tipo` (`tipoId`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`tipoId`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuarioId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `marcaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `productoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `tipoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuarioId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`marcaId`) REFERENCES `marcas` (`marcaId`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`tipoId`) REFERENCES `tipo` (`tipoId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
