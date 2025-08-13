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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.auth_user: ~5 rows (approximately)
REPLACE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$1000000$Q8AAQpXf2ORVlAEKdpdWCi$6qk1+5q1gaZT74VLLZWawZtbTx4+5qmQ1noz19Ky62E=', '2025-08-06 19:24:57.662954', 1, 'nuca29', '', '', 'nuca29@gmail.com', 1, 1, '2025-08-06 19:23:04.991053'),
	(2, 'pbkdf2_sha256$1000000$N51QIkqSrJDIWQAgEGovrk$azK+eXnZ7nbHQUG3jLzHh4e+lIq73UTwAwN/w4cwObk=', '2025-08-12 22:50:02.647885', 0, 'nucamendi', '', '', 'nucamendi@gmail.com', 0, 1, '2025-08-09 03:28:32.484402'),
	(3, 'pbkdf2_sha256$1000000$8GpyrYjUzR6kT20fEcWN5W$NOShFDPsyzhybuk9/UMk2bdd+GHCUcrpaYzuCed52Jo=', '2025-08-12 23:43:37.911766', 1, 'jesus', '', '', 'jesus@gmail.com', 1, 1, '2025-08-12 06:03:05.924713'),
	(4, 'pbkdf2_sha256$1000000$5K5sM9wTD4WoSA9bKwVu2u$RojSoZMXsZFZA1dzUqEHNZbKNMZjOnGej8YXpklz4pQ=', '2025-08-12 09:06:32.768013', 0, 'Hugodeputas', '', '', 'puta@outlook.com', 0, 1, '2025-08-12 06:06:36.917400'),
	(5, 'pbkdf2_sha256$1000000$P0aKTMA2zLHoVt3r4F89Ab$ztDnC9cR82/PyIrdzDJVDmMImIFlSpI7KmpJXeMQ+tQ=', '2025-08-12 22:51:36.610439', 0, 'guillermo', '', '', 'guillermo@gmail.com', 0, 1, '2025-08-12 22:51:29.855087');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.django_admin_log: ~21 rows (approximately)
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
	(23, '2025-08-08 22:04:23.412325', '2', 'Salon XV años', 2, '[{"changed": {"fields": ["Imagen"]}}]', 7, 1);

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

-- Dumping data for table reservacionesdb.django_session: ~4 rows (approximately)
REPLACE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table reservacionesdb.myapp_favorito: ~5 rows (approximately)
REPLACE INTO `myapp_favorito` (`id`, `salon_id`, `usuario_id`) VALUES
	(15, 6, 3),
	(21, 3, 3),
	(22, 4, 3),
	(25, 6, 4),
	(26, 2, 5);

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.myapp_reservacion: ~38 rows (approximately)
REPLACE INTO `myapp_reservacion` (`id`, `estado`, `usuario_id`, `salon_id`, `fecha_reserva`, `pagada`, `precio_total`) VALUES
	(1, 'pendiente', 2, 3, '2025-08-17', 1, 0.00),
	(2, 'pendiente', 2, 3, '2025-08-19', 0, 0.00),
	(3, 'pendiente', 2, 3, '2025-08-14', 0, 0.00),
	(4, 'pendiente', 2, 3, '2025-08-11', 0, 0.00),
	(5, 'pendiente', 2, 3, '2025-08-10', 1, 0.00),
	(6, 'pendiente', 2, 3, '2025-08-12', 0, 0.00),
	(7, 'pendiente', 2, 3, '2025-08-18', 0, 0.00),
	(8, 'pendiente', 2, 6, '2025-08-10', 0, 0.00),
	(9, 'pendiente', 2, 3, '2025-08-13', 0, 0.00),
	(10, 'pendiente', 2, 3, '2025-08-20', 0, 0.00),
	(11, 'pendiente', 2, 3, '2025-08-31', 0, 27000.00),
	(12, 'pendiente', 2, 3, '2025-08-21', 0, 27000.00),
	(13, 'pendiente', 2, 4, '2025-08-11', 0, 28700.00),
	(14, 'pendiente', 2, 5, '2025-08-11', 0, 40000.00),
	(15, 'pendiente', 2, 5, '2025-08-14', 0, 40000.00),
	(16, 'pendiente', 2, 3, '2025-08-28', 0, 24300.00),
	(17, 'pendiente', 2, 3, '2025-08-24', 0, 27000.00),
	(18, 'pendiente', 2, 8, '2025-08-19', 0, 230.00),
	(19, 'pendiente', 2, 2, '2025-08-11', 1, 20000.00),
	(20, 'pendiente', 2, 9, '2025-08-17', 1, 31500.00),
	(21, 'pendiente', 2, 6, '2025-08-11', 1, 31000.00),
	(22, 'pendiente', 2, 6, '2025-08-12', 1, 31000.00),
	(23, 'pendiente', 2, 8, '2025-08-12', 1, 230.00),
	(24, 'pendiente', 4, 5, '2025-08-18', 1, 36000.00),
	(25, 'pendiente', 3, 5, '2025-08-12', 1, 40000.00),
	(26, 'pendiente', 3, 4, '2025-08-24', 1, 28700.00),
	(27, 'pendiente', 3, 4, '2025-08-14', 1, 28700.00),
	(28, 'pendiente', 3, 9, '2025-08-15', 1, 31500.00),
	(29, 'pendiente', 2, 4, '2025-08-28', 1, 28700.00),
	(30, 'pendiente', 2, 8, '2025-08-20', 0, 230.00),
	(31, 'pendiente', 2, 4, '2025-08-18', 1, 28700.00),
	(32, 'pendiente', 2, 2, '2025-08-20', 1, 20000.00),
	(33, 'pendiente', 4, 6, '2025-08-31', 1, 31000.00),
	(35, 'pendiente', 4, 4, '2025-08-16', 0, 28700.00),
	(37, 'pendiente', 5, 4, '2025-08-15', 1, 25830.00);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table reservacionesdb.myapp_salon: ~8 rows (approximately)
REPLACE INTO `myapp_salon` (`id`, `nombre`, `capacidad`, `descripcion`, `disponible`, `imagen`, `precio`, `calificacion`, `categoria`, `ciudad`) VALUES
	(2, 'Salon XV años', 300, 'Salon para fiestas de XV años', 1, 'salones/salon_xv.jpg', 20000.00, 4.7, 'fiestas', 'CDMX'),
	(3, 'Salon Reuniones', 350, 'Salon para expos', 1, 'salones/salon_reuniones1-300x200.jpg', 27000.00, 4.2, 'reuniones', 'CDMX'),
	(4, 'Salon expo', 420, 'Salon para expos', 1, 'salones/salon_expo-300x200.jpg', 28700.00, 4.6, 'expos', 'CDMX'),
	(5, 'Luz de Luna', 300, 'Salon para bodas', 1, 'salones/salon_boda1-300x200.jpg', 40000.00, 4.8, 'fiestas', 'Queretaro'),
	(6, 'Jardines del Sol', 250, 'Salon con jardin', 1, 'salones/salon_jardin-300x200.jpg', 31000.00, 4.8, 'fiestas', 'CDMX'),
	(7, 'Palacio Esmeralda', 300, 'Salon para bodas', 1, 'salones/salon_boda_palacio-300x200.jpg', 50000.00, 4.9, 'fiestas', 'Puebla'),
	(8, 'Cristal Real', 300, 'Salon para faoabauobagubngaoiwnfhiwafnawfihnafoafaufbaf', 1, 'salones/salon_cristal_real.jpg', 230.00, 4.7, 'fiestas', 'CDMX'),
	(9, 'Flor de Mayo', 350, 'fabwuiboa2wigaw´0gbg9uwb9uwb9wb3qraadawfw', 1, 'salones/salon_flor_mayo.jpg', 35000.00, 4.6, 'fiestas', 'Monterrey');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
