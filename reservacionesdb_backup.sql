-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               11.8.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for reservacionesdb
DROP DATABASE IF EXISTS `reservacionesdb`;
CREATE DATABASE IF NOT EXISTS `reservacionesdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `reservacionesdb`;

-- Dumping structure for table reservacionesdb.auth_group
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.auth_group: ~0 rows (approximately)

-- Dumping structure for table reservacionesdb.auth_group_permissions
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.auth_group_permissions: ~0 rows (approximately)

-- Dumping structure for table reservacionesdb.auth_permission
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.auth_permission: ~32 rows (approximately)
REPLACE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add salon', 7, 'add_salon'),
	(26, 'Can change salon', 7, 'change_salon'),
	(27, 'Can delete salon', 7, 'delete_salon'),
	(28, 'Can view salon', 7, 'view_salon'),
	(29, 'Can add reservacion', 8, 'add_reservacion'),
	(30, 'Can change reservacion', 8, 'change_reservacion'),
	(31, 'Can delete reservacion', 8, 'delete_reservacion'),
	(32, 'Can view reservacion', 8, 'view_reservacion'),
	(33, 'Can add favorito', 9, 'add_favorito'),
	(34, 'Can change favorito', 9, 'change_favorito'),
	(35, 'Can delete favorito', 9, 'delete_favorito'),
	(36, 'Can view favorito', 9, 'view_favorito');

-- Dumping structure for table reservacionesdb.auth_user
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.auth_user: ~9 rows (approximately)
REPLACE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$1000000$Q8AAQpXf2ORVlAEKdpdWCi$6qk1+5q1gaZT74VLLZWawZtbTx4+5qmQ1noz19Ky62E=', '2025-08-06 19:24:57.662954', 1, 'nuca29', '', '', 'nuca29@gmail.com', 1, 1, '2025-08-06 19:23:04.991053'),
	(2, 'pbkdf2_sha256$1000000$N51QIkqSrJDIWQAgEGovrk$azK+eXnZ7nbHQUG3jLzHh4e+lIq73UTwAwN/w4cwObk=', '2025-08-12 22:50:02.647885', 0, 'nucamendi', '', '', 'nucamendi@gmail.com', 0, 1, '2025-08-09 03:28:32.484402'),
	(3, 'pbkdf2_sha256$1000000$8GpyrYjUzR6kT20fEcWN5W$NOShFDPsyzhybuk9/UMk2bdd+GHCUcrpaYzuCed52Jo=', '2025-08-13 05:51:30.831541', 1, 'jesus', '', '', 'jesus@gmail.com', 1, 1, '2025-08-12 06:03:05.924713'),
	(4, 'pbkdf2_sha256$1000000$5K5sM9wTD4WoSA9bKwVu2u$RojSoZMXsZFZA1dzUqEHNZbKNMZjOnGej8YXpklz4pQ=', '2025-08-12 09:06:32.768013', 0, 'Hugodeputas', '', '', 'puta@outlook.com', 0, 1, '2025-08-12 06:06:36.917400'),
	(5, 'pbkdf2_sha256$1000000$P0aKTMA2zLHoVt3r4F89Ab$ztDnC9cR82/PyIrdzDJVDmMImIFlSpI7KmpJXeMQ+tQ=', '2025-08-12 22:51:36.610439', 0, 'guillermo', '', '', 'guillermo@gmail.com', 0, 1, '2025-08-12 22:51:29.855087'),
	(6, 'pbkdf2_sha256$1000000$jYY35SzzYdJL0WK4IMbZVR$LE0PSYDhBR1zhvDNlY8gc3QFdzDDNXBq9l71wjNGNgU=', '2025-08-13 04:55:42.186377', 0, 'hairyniggaballs6', '', '', 'guillermo11@gmail.com', 0, 1, '2025-08-13 04:55:19.498023'),
	(7, 'pbkdf2_sha256$1000000$iCXuXDLwSc23Uj9556t1Ka$HL3dDoigh+nzLNm9wYhS5GFAdj3ayrttun3cWIr13Ng=', '2025-08-13 05:08:51.147107', 0, 'Jesus123', '', '', 'j.nucamendimorales@gmail.com', 0, 1, '2025-08-13 05:08:40.778341'),
	(8, 'pbkdf2_sha256$1000000$DqwTnwWd4eXuYXSp1mVib1$5mGr47U4ZqomJpWJfb4GiKnxSULrDurEvlYisGBdjYg=', NULL, 1, 'hugomelacroma', '', '', 'hugomelacroma123@gmail.com', 1, 1, '2025-08-13 05:48:01.979963'),
	(9, 'pbkdf2_sha256$1000000$00JNbr3NNohZrmtSDeV79l$asxXZzOzhUmCMScfoeGNvO5l5yqnsEfNw4pIYkJ+aNw=', NULL, 0, 'pepito', '', '', 'pepito123@yahoo.com', 0, 1, '2025-08-13 05:50:14.825006');

-- Dumping structure for table reservacionesdb.auth_user_groups
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.auth_user_groups: ~0 rows (approximately)

-- Dumping structure for table reservacionesdb.auth_user_user_permissions
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.auth_user_user_permissions: ~0 rows (approximately)

-- Dumping structure for table reservacionesdb.django_admin_log
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.django_admin_log: ~85 rows (approximately)
REPLACE INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2025-08-06 19:27:31.525485', '1', 'Salon expo', 1, '[{"added": {}}]', 7, 1),
	(2, '2025-08-06 20:03:07.423795', '1', 'Salon expo', 2, '[]', 7, 1),
	(3, '2025-08-08 18:42:21.452329', '2', 'Salon XV años', 1, '[{"added": {}}]', 7, 1),
	(4, '2025-08-08 19:04:27.784200', '1', 'Salon expo', 3, '', 7, 1),
	(5, '2025-08-08 19:06:25.415558', '3', 'Salon expo', 1, '[{"added": {}}]', 7, 1),
	(6, '2025-08-08 19:06:56.219028', '3', 'Salon Reuniones', 2, '[{"changed": {"fields": ["Nombre"]}}]', 7, 1),
	(7, '2025-08-08 19:09:03.263854', '4', 'Salon expo', 1, '[{"added": {}}]', 7, 1),
	(8, '2025-08-08 19:09:44.508890', '4', 'Salon expo', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1),
	(9, '2025-08-08 19:19:38.267028', '4', 'Salon expo', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1),
	(10, '2025-08-08 19:19:41.414513', '3', 'Salon Reuniones', 2, '[]', 7, 1),
	(11, '2025-08-08 19:19:45.049786', '2', 'Salon XV años', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 1),
	(12, '2025-08-08 19:38:36.151568', '5', 'Luz de Luna', 1, '[{"added": {}}]', 7, 1),
	(13, '2025-08-08 19:49:53.616499', '5', 'Luz de Luna', 2, '[]', 7, 1),
	(14, '2025-08-08 19:50:03.482797', '2', 'Salon XV años', 2, '[]', 7, 1),
	(15, '2025-08-08 19:50:15.869261', '4', 'Salon expo', 2, '[]', 7, 1),
	(16, '2025-08-08 19:50:23.205337', '5', 'Luz de Luna', 2, '[{"changed": {"fields": ["Calificacion"]}}]', 7, 1),
	(17, '2025-08-08 19:54:16.168560', '6', 'Jardines del Sol', 1, '[{"added": {}}]', 7, 1),
	(18, '2025-08-08 19:55:18.893513', '6', 'Jardines del Sol', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1),
	(19, '2025-08-08 19:57:57.242258', '7', 'Palacio Esmeralda', 1, '[{"added": {}}]', 7, 1),
	(20, '2025-08-08 20:20:34.234866', '8', 'Cristal Real', 1, '[{"added": {}}]', 7, 1),
	(21, '2025-08-08 20:26:28.552938', '9', 'Flor de Mayo', 1, '[{"added": {}}]', 7, 1),
	(22, '2025-08-08 22:04:18.227945', '2', 'Salon XV años', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1),
	(23, '2025-08-08 22:04:23.412325', '2', 'Salon XV años', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1),
	(24, '2025-08-13 03:22:25.179737', '3', 'Salón Torre Reforma', 2, '[{"changed": {"fields": ["Nombre", "Capacidad"]}}]', 7, 3),
	(25, '2025-08-13 03:24:45.234980', '10', 'Salón Chapultepec', 1, '[{"added": {}}]', 7, 3),
	(26, '2025-08-13 03:27:22.263020', '10', 'Salón Chapultepec', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 3),
	(27, '2025-08-13 03:33:05.368573', '11', 'Salón Torre Latinoamericana', 1, '[{"added": {}}]', 7, 3),
	(28, '2025-08-13 03:35:34.619143', '12', 'Salón Alameda', 1, '[{"added": {}}]', 7, 3),
	(29, '2025-08-13 03:39:40.651919', '13', 'Salón Insurgentes', 1, '[{"added": {}}]', 7, 3),
	(30, '2025-08-13 03:44:31.146569', '14', 'Salón Ciudadela', 1, '[{"added": {}}]', 7, 3),
	(31, '2025-08-13 03:47:59.189739', '15', 'Salón Coyoacán', 1, '[{"added": {}}]', 7, 3),
	(32, '2025-08-13 03:50:08.839414', '16', 'Salón Santa Fe', 1, '[{"added": {}}]', 7, 3),
	(33, '2025-08-13 03:53:35.462053', '17', 'Salón San Ángel', 1, '[{"added": {}}]', 7, 3),
	(34, '2025-08-13 03:55:16.461910', '18', 'Salón Zócalo', 1, '[{"added": {}}]', 7, 3),
	(35, '2025-08-13 03:58:01.785845', '19', 'Salón Áurea', 1, '[{"added": {}}]', 7, 3),
	(36, '2025-08-13 03:59:55.282913', '20', 'Salón Estelar', 1, '[{"added": {}}]', 7, 3),
	(37, '2025-08-13 04:02:18.593119', '21', 'Salón Horizonte', 1, '[{"added": {}}]', 7, 3),
	(38, '2025-08-13 04:08:02.272246', '22', 'Salón Galería Central', 1, '[{"added": {}}]', 7, 3),
	(39, '2025-08-13 04:10:19.060391', '23', 'Salón Óptima', 1, '[{"added": {}}]', 7, 3),
	(40, '2025-08-13 04:12:38.579019', '24', 'Salón Prisma', 1, '[{"added": {}}]', 7, 3),
	(41, '2025-08-13 04:16:35.324125', '25', 'Salón Nexus', 1, '[{"added": {}}]', 7, 3),
	(42, '2025-08-13 04:18:03.159438', '26', 'Salón Innovación', 1, '[{"added": {}}]', 7, 3),
	(43, '2025-08-13 04:24:42.056913', '27', 'Salón Vértice', 1, '[{"added": {}}]', 7, 3),
	(44, '2025-08-13 04:24:53.837168', '27', 'Salón Vértice', 2, '[{"changed": {"fields": ["Categoria"]}}]', 7, 3),
	(45, '2025-08-13 04:30:28.205376', '28', 'Salón Cúpula', 1, '[{"added": {}}]', 7, 3),
	(46, '2025-08-13 04:30:36.083649', '28', 'Salón Cúpula', 2, '[]', 7, 3),
	(47, '2025-08-13 04:32:59.981757', '29', 'Salón Encanto', 1, '[{"added": {}}]', 7, 3),
	(48, '2025-08-13 04:34:21.722758', '30', 'Aurora Dorada', 1, '[{"added": {}}]', 7, 3),
	(49, '2025-08-13 04:36:00.948081', '31', 'Espejos de Plata', 1, '[{"added": {}}]', 7, 3),
	(50, '2025-08-13 04:42:27.658687', '11', 'Salón Torre Latino', 2, '[{"changed": {"fields": ["Nombre"]}}]', 7, 3),
	(51, '2025-08-13 04:45:15.281012', '37', 'guillermo - Salon expo (2025-08-15)', 3, '', 8, 3),
	(52, '2025-08-13 04:45:15.281045', '35', 'Hugodeputas - Salon expo (2025-08-16)', 3, '', 8, 3),
	(53, '2025-08-13 04:45:15.281060', '33', 'Hugodeputas - Jardines del Sol (2025-08-31)', 3, '', 8, 3),
	(54, '2025-08-13 04:45:15.281072', '32', 'nucamendi - Salon XV años (2025-08-20)', 3, '', 8, 3),
	(55, '2025-08-13 04:45:15.281083', '31', 'nucamendi - Salon expo (2025-08-18)', 3, '', 8, 3),
	(56, '2025-08-13 04:45:15.281094', '30', 'nucamendi - Cristal Real (2025-08-20)', 3, '', 8, 3),
	(57, '2025-08-13 04:45:15.281106', '29', 'nucamendi - Salon expo (2025-08-28)', 3, '', 8, 3),
	(58, '2025-08-13 04:45:15.281116', '28', 'jesus - Flor de Mayo (2025-08-15)', 3, '', 8, 3),
	(59, '2025-08-13 04:45:15.281126', '27', 'jesus - Salon expo (2025-08-14)', 3, '', 8, 3),
	(60, '2025-08-13 04:45:15.281136', '26', 'jesus - Salon expo (2025-08-24)', 3, '', 8, 3),
	(61, '2025-08-13 04:45:15.281147', '25', 'jesus - Luz de Luna (2025-08-12)', 3, '', 8, 3),
	(62, '2025-08-13 04:45:15.281158', '24', 'Hugodeputas - Luz de Luna (2025-08-18)', 3, '', 8, 3),
	(63, '2025-08-13 04:45:15.281168', '23', 'nucamendi - Cristal Real (2025-08-12)', 3, '', 8, 3),
	(64, '2025-08-13 04:45:15.281178', '22', 'nucamendi - Jardines del Sol (2025-08-12)', 3, '', 8, 3),
	(65, '2025-08-13 04:45:15.281188', '21', 'nucamendi - Jardines del Sol (2025-08-11)', 3, '', 8, 3),
	(66, '2025-08-13 04:45:15.281198', '20', 'nucamendi - Flor de Mayo (2025-08-17)', 3, '', 8, 3),
	(67, '2025-08-13 04:45:15.281208', '19', 'nucamendi - Salon XV años (2025-08-11)', 3, '', 8, 3),
	(68, '2025-08-13 04:45:15.281218', '18', 'nucamendi - Cristal Real (2025-08-19)', 3, '', 8, 3),
	(69, '2025-08-13 04:45:15.281228', '17', 'nucamendi - Salón Torre Reforma (2025-08-24)', 3, '', 8, 3),
	(70, '2025-08-13 04:45:15.281238', '16', 'nucamendi - Salón Torre Reforma (2025-08-28)', 3, '', 8, 3),
	(71, '2025-08-13 04:45:15.281247', '15', 'nucamendi - Luz de Luna (2025-08-14)', 3, '', 8, 3),
	(72, '2025-08-13 04:45:15.281257', '14', 'nucamendi - Luz de Luna (2025-08-11)', 3, '', 8, 3),
	(73, '2025-08-13 04:45:15.281266', '13', 'nucamendi - Salon expo (2025-08-11)', 3, '', 8, 3),
	(74, '2025-08-13 04:45:15.281276', '12', 'nucamendi - Salón Torre Reforma (2025-08-21)', 3, '', 8, 3),
	(75, '2025-08-13 04:45:15.281286', '11', 'nucamendi - Salón Torre Reforma (2025-08-31)', 3, '', 8, 3),
	(76, '2025-08-13 04:45:15.281296', '10', 'nucamendi - Salón Torre Reforma (2025-08-20)', 3, '', 8, 3),
	(77, '2025-08-13 04:45:15.281306', '9', 'nucamendi - Salón Torre Reforma (2025-08-13)', 3, '', 8, 3),
	(78, '2025-08-13 04:45:15.281316', '8', 'nucamendi - Jardines del Sol (2025-08-10)', 3, '', 8, 3),
	(79, '2025-08-13 04:45:15.281326', '7', 'nucamendi - Salón Torre Reforma (2025-08-18)', 3, '', 8, 3),
	(80, '2025-08-13 04:45:15.281336', '6', 'nucamendi - Salón Torre Reforma (2025-08-12)', 3, '', 8, 3),
	(81, '2025-08-13 04:45:15.281346', '5', 'nucamendi - Salón Torre Reforma (2025-08-10)', 3, '', 8, 3),
	(82, '2025-08-13 04:45:15.281357', '4', 'nucamendi - Salón Torre Reforma (2025-08-11)', 3, '', 8, 3),
	(83, '2025-08-13 04:45:15.281366', '3', 'nucamendi - Salón Torre Reforma (2025-08-14)', 3, '', 8, 3),
	(84, '2025-08-13 04:45:15.281376', '2', 'nucamendi - Salón Torre Reforma (2025-08-19)', 3, '', 8, 3),
	(85, '2025-08-13 04:45:15.281385', '1', 'nucamendi - Salón Torre Reforma (2025-08-17)', 3, '', 8, 3),
	(86, '2025-08-13 05:59:00.889361', '2', 'Salon XV años', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(87, '2025-08-13 06:00:26.457678', '3', 'Salón Torre Reforma', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(88, '2025-08-13 06:12:51.967465', '3', 'Salón Torre Reforma', 2, '[]', 7, 3),
	(89, '2025-08-13 06:13:34.332690', '4', 'Salon expo', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(90, '2025-08-13 06:13:42.198674', '4', 'Salon expo', 2, '[]', 7, 3),
	(91, '2025-08-13 06:14:44.417614', '5', 'Luz de Luna', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(92, '2025-08-13 06:14:54.595588', '2', 'Salon XV años', 2, '[]', 7, 3),
	(93, '2025-08-13 06:15:02.705425', '2', 'Salon XV años', 2, '[]', 7, 3),
	(94, '2025-08-13 06:15:26.823191', '6', 'Jardines del Sol', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(95, '2025-08-13 06:15:50.924235', '7', 'Palacio Esmeralda', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(96, '2025-08-13 06:15:58.240556', '7', 'Palacio Esmeralda', 2, '[]', 7, 3),
	(97, '2025-08-13 06:16:31.138961', '8', 'Cristal Real', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(98, '2025-08-13 06:16:50.549199', '8', 'Cristal Real', 2, '[{"changed": {"fields": ["Precio"]}}]', 7, 3),
	(99, '2025-08-13 06:17:27.599398', '9', 'Flor de Mayo', 2, '[{"changed": {"fields": ["Descripcion", "Precio"]}}]', 7, 3),
	(100, '2025-08-13 06:17:55.928640', '10', 'Salón Chapultepec', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(101, '2025-08-13 06:18:29.279689', '11', 'Salón Torre Latino', 2, '[{"changed": {"fields": ["Descripcion", "Precio"]}}]', 7, 3),
	(102, '2025-08-13 06:18:35.370754', '11', 'Salón Torre Latino', 2, '[]', 7, 3),
	(103, '2025-08-13 06:19:01.657978', '12', 'Salón Alameda', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(104, '2025-08-13 06:20:04.832728', '13', 'Salón Insurgentes', 2, '[{"changed": {"fields": ["Descripcion", "Precio"]}}]', 7, 3),
	(105, '2025-08-13 06:21:09.040169', '14', 'Salón Ciudadela', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(106, '2025-08-13 06:21:32.715083', '15', 'Salón Coyoacán', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(107, '2025-08-13 06:22:31.920394', '16', 'Salón Santa Fe', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(108, '2025-08-13 06:22:56.340520', '17', 'Salón San Ángel', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(109, '2025-08-13 06:23:23.917386', '18', 'Salón Zócalo', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(110, '2025-08-13 06:23:57.297364', '19', 'Salón Áurea', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(111, '2025-08-13 06:24:28.630942', '20', 'Salón Estelar', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(112, '2025-08-13 06:25:07.526469', '21', 'Salón Horizonte', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(113, '2025-08-13 06:25:31.643997', '22', 'Salón Galería Central', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(114, '2025-08-13 06:26:00.832679', '23', 'Salón Óptima', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(115, '2025-08-13 06:26:27.079947', '24', 'Salón Prisma', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(116, '2025-08-13 06:26:56.237408', '25', 'Salón Nexus', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(117, '2025-08-13 06:27:28.904838', '26', 'Salón Innovación', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(118, '2025-08-13 06:27:53.217147', '27', 'Salón Vértice', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(119, '2025-08-13 06:28:17.634262', '28', 'Salón Cúpula', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(120, '2025-08-13 06:29:03.025170', '29', 'Salón Encanto', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(121, '2025-08-13 06:29:32.204987', '30', 'Aurora Dorada', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3),
	(122, '2025-08-13 06:30:03.737046', '31', 'Espejos de Plata', 2, '[{"changed": {"fields": ["Descripcion"]}}]', 7, 3);

-- Dumping structure for table reservacionesdb.django_content_type
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.django_content_type: ~8 rows (approximately)
REPLACE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(2, 'auth', 'permission'),
	(3, 'auth', 'group'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session'),
	(7, 'myapp', 'salon'),
	(8, 'myapp', 'reservacion'),
	(9, 'myapp', 'favorito');

-- Dumping structure for table reservacionesdb.django_migrations
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.django_migrations: ~22 rows (approximately)
REPLACE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2025-08-01 20:15:46.730354'),
	(2, 'auth', '0001_initial', '2025-08-01 20:15:46.877171'),
	(3, 'admin', '0001_initial', '2025-08-01 20:15:46.910634'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2025-08-01 20:15:46.938384'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-08-01 20:15:46.942840'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2025-08-01 20:15:46.970200'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2025-08-01 20:15:46.987293'),
	(8, 'auth', '0003_alter_user_email_max_length', '2025-08-01 20:15:46.998841'),
	(9, 'auth', '0004_alter_user_username_opts', '2025-08-01 20:15:47.003125'),
	(10, 'auth', '0005_alter_user_last_login_null', '2025-08-01 20:15:47.018021'),
	(11, 'auth', '0006_require_contenttypes_0002', '2025-08-01 20:15:47.018984'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2025-08-01 20:15:47.023112'),
	(13, 'auth', '0008_alter_user_username_max_length', '2025-08-01 20:15:47.034907'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2025-08-01 20:15:47.047638'),
	(15, 'auth', '0010_alter_group_name_max_length', '2025-08-01 20:15:47.059768'),
	(16, 'auth', '0011_update_proxy_permissions', '2025-08-01 20:15:47.064389'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2025-08-01 20:15:47.076269'),
	(18, 'myapp', '0001_initial', '2025-08-01 20:15:47.081892'),
	(19, 'myapp', '0002_task', '2025-08-01 20:15:47.101631'),
	(20, 'myapp', '0003_task_done', '2025-08-01 20:15:47.118716'),
	(21, 'myapp', '0004_salon_remove_task_project_reservacion_delete_project_and_more', '2025-08-01 20:15:47.317005'),
	(22, 'sessions', '0001_initial', '2025-08-01 20:15:47.332082'),
	(23, 'myapp', '0005_salon_ciudad_salon_imagen_salon_precio_salon_rating', '2025-08-06 17:39:10.918672'),
	(24, 'myapp', '0006_remove_salon_ciudad_remove_salon_rating_and_more', '2025-08-08 18:19:03.855677'),
	(25, 'myapp', '0007_salon_categoria', '2025-08-08 19:18:24.842592'),
	(26, 'myapp', '0008_salon_ciudad', '2025-08-08 19:33:37.263906'),
	(27, 'myapp', '0009_remove_reservacion_fecha_fin_and_more', '2025-08-10 00:00:41.668899'),
	(28, 'myapp', '0010_reservacion_pagada_alter_reservacion_unique_together', '2025-08-10 18:51:20.340009'),
	(29, 'myapp', '0011_reservacion_precio_total', '2025-08-11 05:54:14.373337'),
	(30, 'myapp', '0012_favorito', '2025-08-12 06:40:39.373236');

-- Dumping structure for table reservacionesdb.django_session
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.django_session: ~5 rows (approximately)
REPLACE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('c52ficisjogqx8n28kwe04qrhr5z16e7', '.eJxVjM1uwyAQBt-Fc4Qwf4Uee88zoDW72KQuRAafqr57sRpF6R535ptvFuDoazga7SEje2eKXV5_M8RPKifAG5Sl8lhL3_PMT4U_aOPXirR9PNx_gRXaOtZeGRWlVRq1o-TJu6QiKiu0FMkizgbdm_SKnPBGamcFKDNTkomUxUmOaK8dtpBygW0EJ22c4GLcQEgtHlR6DXDfcgSsp2HlU4gV81JDLstO7Q_fa1ngiybBfn4BaH5TmA:1um4Oq:PsuFNBepgtQHhqJQFcwzRG32rKHpUXWd9Aedev7PFoA', '2025-08-27 05:51:48.823098'),
	('l7txregq4m9bv7eo9n87gvieokes9j4c', '.eJxVjDsOwyAQBe9CHSHAfFOm9xnQsqyDkwgkY1dR7h4huUjaNzPvzSIce4lHpy2umV2ZYpffLQE-qQ6QH1DvjWOr-7YmPhR-0s7nlul1O92_gwK9jFq5BUCjBSe1Q48Blwm8UZMjsAaEs5mSEl5Pkih4A0Gg1SQdCgkys88X8hU3-w:1ulxog:cJL1GQYBXCg4mkVKU_U-LXBa8XDRJOUXaWbeYvsq8eo', '2025-08-26 22:50:02.649280'),
	('slhxe1z4b4a86msyjw8qx5zs973j98si', '.eJxVjDsOwyAQBe9CHSHAfFOm9xnQsqyDkwgkY1dR7h4huUjaNzPvzSIce4lHpy2umV2ZYpffLQE-qQ6QH1DvjWOr-7YmPhR-0s7nlul1O92_gwK9jFq5BUCjBSe1Q48Blwm8UZMjsAaEs5mSEl5Pkih4A0Gg1SQdCgkys88X8hU3-w:1ukuhU:dBzCAeA0Oz3PmcK5HRrcp1Z-kfhM1hrhtvD2i9pxkYY', '2025-08-24 01:18:16.770703'),
	('uzdjr4v4fwb4tru3h3vujg65bdxdystx', '.eJxVzEsOwiAUheG9MDaEV8E6dO4ayIULLUrAFDoy7t02dqDT8538L2Jh7bNdW1hsQnIhipx-Nwf-EcoOeIcyVepr6UtydL_QQxu9VQz5enz_AjO0ec8qiFIbEbmBCAwxCG2cGKIbZEAY9VkKpUfFlTbRiyi5l4ZLFYWQwo_DFu21Q7YxFchbUHLGGGVsAwzNr6H0auGZkwesm-_gK6ap2lSmJbTvTN4fnq1ORA:1ull2J:h1-kNWfBAS18KMzcA-6jvVN2tWoSODMpeTspl6AjGRQ', '2025-08-26 09:11:15.578407'),
	('xzangyhl5z7jaos38cp5legxwyusq2v5', '.eJxVjDEOAiEQRe9CbQjOAIKlvWcgwAyyaiBZdivj3XWTLbT9773_EiGuSw3r4DlMJM4CxeF3SzE_uG2A7rHdusy9LfOU5KbInQ557cTPy-7-HdQ46rf2aDCDRU3acfHsXcFMaJUGVSxRMuRO4JGd8ga0syqiSVygMFo6gnh_AM3KN1w:1ulyeX:fCVBHtb8wPgrlLQpsNa7HVm9IJ1s4jIR5rdy2FwG_X8', '2025-08-26 23:43:37.913697');

-- Dumping structure for table reservacionesdb.myapp_favorito
DROP TABLE IF EXISTS `myapp_favorito`;
CREATE TABLE IF NOT EXISTS `myapp_favorito` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `salon_id` bigint(20) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myapp_favorito_usuario_id_salon_id_45d7dd9d_uniq` (`usuario_id`,`salon_id`),
  KEY `myapp_favorito_salon_id_1b74d9d6_fk_myapp_salon_id` (`salon_id`),
  CONSTRAINT `myapp_favorito_salon_id_1b74d9d6_fk_myapp_salon_id` FOREIGN KEY (`salon_id`) REFERENCES `myapp_salon` (`id`),
  CONSTRAINT `myapp_favorito_usuario_id_e2c2e57d_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reservacionesdb.myapp_favorito: ~6 rows (approximately)
REPLACE INTO `myapp_favorito` (`id`, `salon_id`, `usuario_id`) VALUES
	(15, 6, 3),
	(22, 4, 3),
	(25, 6, 4),
	(26, 2, 5),
	(28, 4, 6);

-- Dumping structure for table reservacionesdb.myapp_reservacion
DROP TABLE IF EXISTS `myapp_reservacion`;
CREATE TABLE IF NOT EXISTS `myapp_reservacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado` varchar(20) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `salon_id` bigint(20) NOT NULL,
  `fecha_reserva` date DEFAULT NULL,
  `pagada` tinyint(1) NOT NULL,
  `precio_total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myapp_reservacion_salon_id_fecha_reserva_491fd373_uniq` (`salon_id`,`fecha_reserva`),
  KEY `myapp_reservacion_usuario_id_cf61ee58_fk_auth_user_id` (`usuario_id`),
  CONSTRAINT `myapp_reservacion_salon_id_ed2a568c_fk_myapp_salon_id` FOREIGN KEY (`salon_id`) REFERENCES `myapp_salon` (`id`),
  CONSTRAINT `myapp_reservacion_usuario_id_cf61ee58_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.myapp_reservacion: ~0 rows (approximately)

-- Dumping structure for table reservacionesdb.myapp_salon
DROP TABLE IF EXISTS `myapp_salon`;
CREATE TABLE IF NOT EXISTS `myapp_salon` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `calificacion` decimal(2,1) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.myapp_salon: ~30 rows (approximately)
REPLACE INTO `myapp_salon` (`id`, `nombre`, `capacidad`, `descripcion`, `disponible`, `imagen`, `precio`, `calificacion`, `categoria`, `ciudad`) VALUES
	(2, 'Salon XV años', 300, '**Salón XV Años**\r\nAmplio y elegante espacio con capacidad para 300 invitados, diseñado especialmente para celebrar quinceañeras con estilo y comodidad. Cuenta con pista de baile iluminada, escenario para presentaciones, decoración personalizable y área de banquetes equipada, ideal para crear una noche inolvidable.', 1, 'salones/salon_xv.jpg', 20000.00, 4.7, 'fiestas', 'CDMX'),
	(3, 'Salón Torre Reforma', 70, 'El Salón Torre Reforma es un espacio moderno y elegante ideal para reuniones corporativas, talleres y eventos profesionales. Cuenta con una atmósfera tranquila y bien iluminada que favorece la concentración y la comunicación efectiva. Su diseño funcional permite una distribución versátil del mobiliario, adaptándose fácilmente a presentaciones, mesas de trabajo o sesiones interactivas. Ubicado en una zona accesible, ofrece todas las facilidades tecnológicas necesarias para asegurar el éxito de tus encuentros de negocio.', 1, 'salones/salon_reuniones1-300x200.jpg', 27000.00, 4.2, 'reuniones', 'CDMX'),
	(4, 'Salon expo', 420, 'El Salón Expo es un amplio y versátil espacio diseñado para exposiciones, ferias y eventos de gran escala. Su estructura abierta y bien iluminada permite exhibir productos, instalaciones artísticas o stands de manera organizada y atractiva. Equipado con tecnología de punta y fácil acceso, facilita la logística de montaje y la movilidad de los asistentes. Ideal para eventos que requieren amplitud, visibilidad y una experiencia cómoda para grandes públicos.', 1, 'salones/salon_expo-300x200.jpg', 28700.00, 4.6, 'expos', 'CDMX'),
	(5, 'Luz de Luna', 300, 'El Salón Luz de Luna ofrece un ambiente elegante y festivo, perfecto para celebraciones inolvidables como bodas, quinceañeras y eventos sociales. Su iluminación cálida y su decoración sofisticada crean un entorno acogedor que realza cada detalle de la celebración. Con un espacio amplio y versátil, permite acomodar cómodamente a todos los invitados, además de ofrecer áreas ideales para pista de baile, montaje de mesas y actividades especiales.', 1, 'salones/salon_boda1-300x200.jpg', 40000.00, 4.8, 'fiestas', 'Queretaro'),
	(6, 'Jardines del Sol', 250, 'El Salón Jardines del Sol combina elegancia y naturaleza, ofreciendo un entorno ideal para celebraciones íntimas y especiales. Sus amplios espacios y áreas verdes proporcionan una atmósfera fresca y relajante, perfecta para bodas, cumpleaños y eventos sociales. La versatilidad del lugar permite organizar cómodamente la pista de baile, mesas de invitados y zonas de entretenimiento, asegurando una experiencia memorable para todos los asistentes.', 1, 'salones/salon_jardin-300x200.jpg', 31000.00, 4.8, 'fiestas', 'CDMX'),
	(7, 'Palacio Esmeralda', 300, 'El Salón Palacio Esmeralda es un espacio sofisticado y majestuoso, ideal para celebraciones elegantes como bodas, quinceañeras y eventos sociales destacados. Su decoración refinada y su iluminación cuidadosamente diseñada crean un ambiente encantador y acogedor. Con amplias áreas para pista de baile, montaje de mesas y actividades especiales, garantiza que cada celebración sea única e inolvidable para todos los invitados.', 1, 'salones/salon_boda_palacio-300x200.jpg', 50000.00, 4.9, 'fiestas', 'Puebla'),
	(8, 'Cristal Real', 300, 'El Salón Cristal Real combina sofisticación y modernidad, ofreciendo un espacio ideal para celebraciones memorables como bodas, quinceañeras y eventos sociales. Su iluminación brillante y elegante resalta cada detalle de la decoración, mientras que su distribución amplia permite organizar cómodamente la pista de baile, mesas y áreas de entretenimiento. Perfecto para quienes buscan un ambiente elegante y festivo que deje una impresión duradera en sus invitados.', 1, 'salones/salon_cristal_real.jpg', 23000.00, 4.7, 'fiestas', 'CDMX'),
	(9, 'Flor de Mayo', 350, 'El Salón Flor de Mayo es un espacio amplio y elegante, diseñado para celebraciones vibrantes y memorables como bodas, quinceañeras y eventos sociales. Su ambiente cálido y acogedor, junto con una iluminación cuidadosamente pensada, realza la decoración y crea un entorno festivo. La distribución versátil permite organizar cómodamente la pista de baile, mesas y zonas de entretenimiento, garantizando una experiencia inolvidable para todos los invitados.', 1, 'salones/salon_flor_mayo.jpg', 33000.00, 4.6, 'fiestas', 'Monterrey'),
	(10, 'Salón Chapultepec', 100, 'El Salón Chapultepec es un espacio funcional y acogedor, ideal para reuniones corporativas, talleres y juntas ejecutivas. Su ambiente tranquilo y bien iluminado favorece la concentración y la comunicación efectiva. Con un diseño versátil, permite organizar cómodamente mesas de trabajo, presentaciones y sesiones interactivas, ofreciendo todas las facilidades necesarias para el éxito de cualquier encuentro profesional.', 1, 'salones/salon-reuniones-empresariales-bosques-polanco.jpg', 15000.00, 4.5, 'reuniones', 'CDMX'),
	(11, 'Salón Torre Latino', 60, 'El Salón Torre Latino es un espacio íntimo y profesional, perfecto para reuniones pequeñas, juntas ejecutivas y talleres especializados. Su ambiente moderno y bien iluminado facilita la concentración y la colaboración entre los participantes. Con una distribución flexible, permite acomodar cómodamente mesas de trabajo, presentaciones o sesiones interactivas, garantizando un entorno eficiente y agradable para cualquier encuentro corporativo.', 1, 'salones/salontorrelatino.jpg', 11000.00, 4.3, 'reuniones', 'CDMX'),
	(12, 'Salón Alameda', 130, 'El Salón Alameda es un espacio moderno y versátil, ideal para reuniones corporativas, conferencias y talleres. Su ambiente luminoso y tranquilo favorece la concentración y la interacción entre los participantes. Con una distribución adaptable, permite organizar cómodamente mesas de trabajo, presentaciones o sesiones colaborativas, asegurando que cada encuentro profesional se desarrolle de manera eficiente y cómoda.', 1, 'salones/salonalameda.jpg', 13000.00, 4.4, 'reuniones', 'Puebla'),
	(13, 'Salón Insurgentes', 30, 'El Salón Insurgentes es un espacio acogedor y funcional, ideal para reuniones pequeñas, juntas ejecutivas o talleres especializados. Su ambiente tranquilo y bien iluminado permite una comunicación fluida y concentración total. Con un diseño versátil, ofrece la posibilidad de organizar mesas de trabajo, presentaciones o sesiones interactivas de manera cómoda y eficiente, asegurando un entorno profesional y agradable para todos los asistentes.', 1, 'salones/saloninsurgentes.jpg', 17000.00, 4.8, 'reuniones', 'Quintana Roo'),
	(14, 'Salón Ciudadela', 100, 'El Salón Ciudadela es un espacio moderno y funcional, perfecto para reuniones corporativas, conferencias y talleres. Su ambiente bien iluminado y tranquilo favorece la concentración y la interacción entre los asistentes. Con una distribución flexible, permite organizar cómodamente mesas de trabajo, presentaciones o sesiones colaborativas, garantizando un entorno profesional y eficiente para todo tipo de encuentros de negocio.', 1, 'salones/saloazteca.jpg', 12000.00, 4.4, 'reuniones', 'CDMX'),
	(15, 'Salón Coyoacán', 220, 'El Salón Coyoacán es un amplio y versátil espacio diseñado para reuniones corporativas, conferencias y seminarios de gran tamaño. Su ambiente moderno y bien iluminado facilita la concentración y la comunicación efectiva entre los participantes. La disposición flexible del mobiliario permite organizar cómodamente presentaciones, mesas de trabajo y sesiones interactivas, asegurando un entorno profesional y eficiente para eventos empresariales de cualquier magnitud.', 1, 'salones/saloncoyoacan.jpg', 16000.00, 4.8, 'reuniones', 'CDMX'),
	(16, 'Salón Santa Fe', 20, 'El Salón Santa Fe es un espacio íntimo y acogedor, ideal para reuniones pequeñas, juntas ejecutivas o sesiones de trabajo concentradas. Su ambiente tranquilo y bien iluminado facilita la comunicación efectiva y la colaboración entre los participantes. Con un diseño versátil, permite acomodar cómodamente mesas de trabajo o presentaciones, ofreciendo un entorno profesional y cómodo para encuentros corporativos reducidos.', 1, 'salones/salonsantafe.jpg', 10000.00, 4.9, 'reuniones', 'CDMX'),
	(17, 'Salón San Ángel', 100, 'El Salón San Ángel es un espacio elegante y funcional, ideal para reuniones corporativas, talleres y conferencias. Su ambiente tranquilo y bien iluminado favorece la concentración y la interacción efectiva entre los participantes. Con una distribución versátil, permite organizar cómodamente mesas de trabajo, presentaciones y sesiones interactivas, garantizando un entorno profesional y eficiente para cualquier evento empresarial.', 1, 'salones/salonsantafe_9EGBITB.jpg', 20000.00, 4.3, 'reuniones', 'Campeche'),
	(18, 'Salón Zócalo', 100, 'El Salón Zócalo es un espacio moderno y versátil, ideal para reuniones corporativas, talleres y conferencias. Su ambiente bien iluminado y tranquilo favorece la concentración y la comunicación entre los asistentes. Con una distribución flexible, permite organizar cómodamente mesas de trabajo, presentaciones y sesiones colaborativas, asegurando un entorno profesional y eficiente para cualquier encuentro empresarial.', 1, 'salones/c397c8357566e6a12a0fe7ee0f9c8e88.jpg', 22000.00, 4.3, 'reuniones', 'Baja California Sur'),
	(19, 'Salón Áurea', 150, 'El Salón Áurea es un espacio moderno y versátil, perfecto para exposiciones, ferias y presentaciones de mediana escala. Su diseño abierto y bien iluminado permite exhibir productos, obras o stands de manera organizada y atractiva. Equipado con facilidades tecnológicas y buena accesibilidad, garantiza que tanto expositores como visitantes disfruten de un evento cómodo y profesional, ideal para mostrar proyectos con estilo y eficiencia.', 1, 'salones/mg_2850_50705963378_o.jpg', 23000.00, 4.9, 'expos', 'Guadalajara'),
	(20, 'Salón Estelar', 200, 'El Salón Estelar es un espacio amplio y moderno, diseñado para exposiciones, ferias y eventos de mediano a gran tamaño. Su estructura abierta y bien iluminada permite organizar stands, exhibiciones o presentaciones de manera atractiva y funcional. Con facilidades tecnológicas y una distribución versátil, garantiza comodidad y fluidez tanto para expositores como para visitantes, asegurando una experiencia profesional y eficiente en cada evento.', 1, 'salones/SalonesRegionalesExpoGuadalajara06.jpg', 18000.00, 4.3, 'expos', 'Chihuahua'),
	(21, 'Salón Horizonte', 200, 'El Salón Horizonte es un espacio amplio y versátil, ideal para exposiciones, ferias y presentaciones de mediana escala. Su diseño moderno y bien iluminado permite exhibir productos, obras o stands de manera organizada y atractiva. Equipado con facilidades tecnológicas y con buena accesibilidad, proporciona un entorno cómodo y profesional, asegurando que tanto expositores como visitantes disfruten de un evento eficiente y exitoso.', 1, 'salones/nuevo-expo-center.jpg', 20000.00, 4.5, 'expos', 'CDMX'),
	(22, 'Salón Galería Central', 10000, 'El Salón Galería Central es un espacio imponente y versátil, diseñado para exposiciones, ferias y eventos de gran escala. Su amplia estructura abierta y su iluminación estratégica permiten organizar stands, exhibiciones y presentaciones de manera funcional y atractiva. Equipado con tecnología avanzada y fácil acceso, garantiza comodidad y fluidez para expositores y visitantes, ofreciendo un entorno profesional ideal para grandes eventos y experiencias memorables.', 1, 'salones/Iluminacion-LED-Expo-GDL-e1615665577257.jpg', 30000.00, 4.9, 'expos', 'Guadalajara'),
	(23, 'Salón Óptima', 200, 'El Salón Óptima es un espacio moderno y funcional, ideal para exposiciones, ferias y presentaciones de mediana escala. Su diseño abierto y bien iluminado permite exhibir productos, obras o stands de manera organizada y atractiva. Con facilidades tecnológicas y una distribución versátil, asegura comodidad y eficiencia para expositores y visitantes, ofreciendo un entorno profesional para eventos exitosos y memorables.', 1, 'salones/pvrsi-buganvilias-classroom-6443-hor-clsc.jpg', 17000.00, 4.3, 'expos', 'CDMX'),
	(24, 'Salón Prisma', 200, 'El Salón Prisma es un espacio amplio y moderno, ideal para exposiciones, ferias y presentaciones de mediana escala. Su iluminación cuidadosamente diseñada y su distribución abierta permiten exhibir productos, obras o stands de manera atractiva y funcional. Equipado con facilidades tecnológicas y fácil accesibilidad, garantiza comodidad y eficiencia tanto para expositores como para visitantes, creando un entorno profesional para eventos exitosos y memorables.', 1, 'salones/impecable-centro.jpg', 19000.00, 4.5, 'expos', 'Quintana Roo'),
	(25, 'Salón Nexus', 500, 'El Salón Nexus es un espacio amplio y moderno, diseñado para exposiciones, ferias y eventos de gran escala. Su estructura abierta y bien iluminada permite organizar stands, exhibiciones y presentaciones de manera funcional y atractiva. Equipado con tecnología avanzada y con excelente accesibilidad, garantiza comodidad y fluidez para expositores y visitantes, proporcionando un entorno profesional ideal para grandes eventos y experiencias memorables.', 1, 'salones/BANNER-CECONEXPO-CENTRO-DE-CONVENCIONES-Y-EXPOSICIONES-DE-MORELIA-3.jpg', 29999.00, 4.6, 'expos', 'CDMX'),
	(26, 'Salón Innovación', 300, 'El Salón Innovación es un espacio moderno y versátil, ideal para exposiciones, ferias y presentaciones de mediana a gran escala. Su diseño abierto y bien iluminado permite organizar stands, exhibiciones y demostraciones de manera atractiva y funcional. Con facilidades tecnológicas y fácil accesibilidad, garantiza comodidad y eficiencia para expositores y visitantes, asegurando un entorno profesional que potencia el éxito de cada evento.', 1, 'salones/istockphoto-159738455-612x612.jpg', 31000.00, 4.5, 'expos', 'Puebla'),
	(27, 'Salón Vértice', 330, 'El Salón Vértice es un espacio amplio y moderno, perfecto para exposiciones, ferias y presentaciones de mediana a gran escala. Su iluminación estratégica y diseño abierto permiten organizar stands, exhibiciones y demostraciones de manera ordenada y atractiva. Equipado con facilidades tecnológicas y buena accesibilidad, ofrece comodidad y eficiencia tanto para expositores como para visitantes, creando un entorno profesional ideal para eventos exitosos y memorables.', 1, 'salones/big0000.jpg', 15000.00, 4.5, 'expos', 'CDMX'),
	(28, 'Salón Cúpula', 1000, 'El Salón Cúpula es un espacio imponente y versátil, diseñado para exposiciones, ferias y eventos de gran magnitud. Su estructura amplia y bien iluminada permite organizar stands, exhibiciones y presentaciones de manera funcional y atractiva. Equipado con tecnología avanzada y fácil acceso, garantiza comodidad y fluidez para expositores y visitantes, ofreciendo un entorno profesional ideal para grandes eventos y experiencias memorables.', 1, 'salones/99a637f82c25c3954e84bf0cea45c99e-e1706130723342.jpg', 40000.00, 4.4, 'expos', 'CDMX'),
	(29, 'Salón Encanto', 300, 'El Salón Encanto es un espacio elegante y acogedor, perfecto para celebraciones memorables como bodas, quinceañeras y eventos sociales. Su iluminación cálida y su decoración sofisticada crean un ambiente festivo y armonioso. Con áreas amplias para pista de baile, montaje de mesas y zonas de entretenimiento, garantiza una experiencia cómoda y encantadora para todos los invitados, haciendo de cada celebración un evento inolvidable.', 1, 'salones/GRADUACION-5_websize-1.jpg', 32000.00, 4.9, 'fiestas', 'Guadalajara'),
	(30, 'Aurora Dorada', 500, 'El Salón Aurora Dorada es un espacio majestuoso y elegante, ideal para grandes celebraciones como bodas, quinceañeras y eventos sociales destacados. Su iluminación sofisticada y su decoración refinada crean un ambiente deslumbrante que realza cada detalle de la ocasión. Con amplias áreas para pista de baile, montaje de mesas y actividades especiales, ofrece comodidad y versatilidad, asegurando que cada evento sea espectacular e inolvidable para todos los invitados.', 1, 'salones/e88f8a09995cd8923c6cbb5a55f95d55.jpg', 40000.00, 4.5, 'fiestas', 'Queretaro'),
	(31, 'Espejos de Plata', 300, 'El Salón Espejos de Plata ofrece un ambiente elegante y sofisticado, ideal para celebraciones como bodas, quinceañeras y eventos sociales. Sus detalles reflectantes y su iluminación cuidadosamente diseñada crean un espacio brillante y acogedor. Con áreas amplias para pista de baile, montaje de mesas y zonas de entretenimiento, garantiza una experiencia memorable y confortable para todos los invitados, convirtiendo cada celebración en un evento especial e inolvidable.', 1, 'salones/16-de-octubre-2021_5_107210-164246270891791.jpg', 50000.00, 4.5, 'fiestas', 'Nuevo León');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
