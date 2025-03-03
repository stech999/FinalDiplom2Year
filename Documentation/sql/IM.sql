-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Мар 03 2025 г., 22:12
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `IM`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Accessories`
--

CREATE TABLE `Accessories` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Accessories`
--

INSERT INTO `Accessories` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(1, 'Зонт мужской RAINDROPS', 'Мужской зонт: полный автомат, ручка-крюк, купол 112 см из ткани эпонж.', 'accessories/136760410299.jpg', 'accessories/136760410299_O9a1nqS.jpg', NULL, '1499', 15, 2, 3),
(2, 'Зонт полуавтомат с системой \"антиветер\" трость', 'Солидный изысканный зонт с ручкой из дерева и 8 спицами. Большой купол легко укроет от дождя сразу двоих, а надежная конструкция выдержит даже сильный ветер.', 'accessories/126555420299.jpg', 'accessories/136860120299.jpg', '10', '3499', 16, 2, 2),
(3, 'Солнцезащитные очки женские Kappa', 'Ищешь функциональные солнцезащитные очки, которые защитят твое зрение? Тогда эта модель Kappa для тебя! Она изготовлена из высококачественных материалов, отличается элегантным дизайном и прекрасно подходит для поклонниц спортивного стиля и долгих прогулок', 'accessories/114053390299.jpg', 'accessories/113527440299.jpg', '10', '2999', 17, 5, 3),
(4, 'Сумка Kappa', 'Функциональная сумка Kappa идеально подходит для похода в спортзал. Хорошо организованное внутреннее пространство позволяет не только захватить с собой все необходимое, но и удобно разложить вещи, чтобы они всегда были под рукой. Отделение для обуви сбоку', 'accessories/141177690299.jpg', 'accessories/126129870299.jpg', NULL, '3299', 17, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
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
(25, 'Can add Брэнд', 7, 'add_brand'),
(26, 'Can change Брэнд', 7, 'change_brand'),
(27, 'Can delete Брэнд', 7, 'delete_brand'),
(28, 'Can view Брэнд', 7, 'view_brand'),
(29, 'Can add Цвет', 8, 'add_color'),
(30, 'Can change Цвет', 8, 'change_color'),
(31, 'Can delete Цвет', 8, 'delete_color'),
(32, 'Can view Цвет', 8, 'view_color'),
(33, 'Can add Размер', 9, 'add_size'),
(34, 'Can change Размер', 9, 'change_size'),
(35, 'Can delete Размер', 9, 'delete_size'),
(36, 'Can view Размер', 9, 'view_size'),
(37, 'Can add Скейтборд', 10, 'add_skateboards'),
(38, 'Can change Скейтборд', 10, 'change_skateboards'),
(39, 'Can delete Скейтборд', 10, 'delete_skateboards'),
(40, 'Can view Скейтборд', 10, 'view_skateboards'),
(41, 'Can add Сноуборд', 11, 'add_snowboards'),
(42, 'Can change Сноуборд', 11, 'change_snowboards'),
(43, 'Can delete Сноуборд', 11, 'delete_snowboards'),
(44, 'Can view Сноуборд', 11, 'view_snowboards'),
(45, 'Can add Лыжи', 12, 'add_skis'),
(46, 'Can change Лыжи', 12, 'change_skis'),
(47, 'Can delete Лыжи', 12, 'delete_skis'),
(48, 'Can view Лыжи', 12, 'view_skis'),
(49, 'Can add Лонгборд', 13, 'add_longboards'),
(50, 'Can change Лонгборд', 13, 'change_longboards'),
(51, 'Can delete Лонгборд', 13, 'delete_longboards'),
(52, 'Can view Лонгборд', 13, 'view_longboards'),
(53, 'Can add Серфинг', 14, 'add_surfings'),
(54, 'Can change Серфинг', 14, 'change_surfings'),
(55, 'Can delete Серфинг', 14, 'delete_surfings'),
(56, 'Can view Серфинг', 14, 'view_surfings'),
(57, 'Can add Sup', 15, 'add_sups'),
(58, 'Can change Sup', 15, 'change_sups'),
(59, 'Can delete Sup', 15, 'delete_sups'),
(60, 'Can view Sup', 15, 'view_sups'),
(61, 'Can add Одежда', 16, 'add_clothes'),
(62, 'Can change Одежда', 16, 'change_clothes'),
(63, 'Can delete Одежда', 16, 'delete_clothes'),
(64, 'Can view Одежда', 16, 'view_clothes'),
(65, 'Can add Обувь', 17, 'add_shoes'),
(66, 'Can change Обувь', 17, 'change_shoes'),
(67, 'Can delete Обувь', 17, 'delete_shoes'),
(68, 'Can view Обувь', 17, 'view_shoes'),
(69, 'Can add Аксессуар', 18, 'add_accessories'),
(70, 'Can change Аксессуар', 18, 'change_accessories'),
(71, 'Can delete Аксессуар', 18, 'delete_accessories'),
(72, 'Can view Аксессуар', 18, 'view_accessories'),
(73, 'Can add Баннер', 19, 'add_banners'),
(74, 'Can change Баннер', 19, 'change_banners'),
(75, 'Can delete Баннер', 19, 'delete_banners'),
(76, 'Can view Баннер', 19, 'view_banners');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$SuUJEtr37K4enx2DhK3UE7$Fm/dUWsEgSTxARw2dRJED2owCYtIf3k5uEbMu4ulXnQ=', '2025-03-03 14:14:09.540614', 1, 'admin', '', '', 'admin@mail.com', 1, 1, '2025-02-20 15:43:26.281399'),
(2, 'pbkdf2_sha256$870000$6GEDjXGFW1CDk6fPTsHdqI$ANeP9ggEaQWTH6m6hybqzGPDYWsngEGFNVKHcYCZmZA=', '2025-02-23 15:49:31.084518', 0, 'manager', '', '', '', 1, 1, '2025-02-23 15:38:16.000000'),
(3, 'pbkdf2_sha256$870000$xFhpvm7sz5ovJYzBhyfOhD$3maLl83z/c8XrKXgf7ROffKjo2dH9nRLf7DtY96rjKY=', '2025-02-23 15:56:42.113618', 0, 'Category_manager', '', '', '', 1, 1, '2025-02-23 15:53:28.000000');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(13, 2, 17),
(14, 2, 18),
(15, 2, 19),
(16, 2, 20),
(6, 2, 61),
(7, 2, 62),
(8, 2, 63),
(1, 2, 64),
(2, 2, 69),
(3, 2, 70),
(4, 2, 71),
(5, 2, 72),
(38, 3, 17),
(39, 3, 18),
(40, 3, 19),
(41, 3, 20),
(42, 3, 25),
(43, 3, 26),
(44, 3, 27),
(45, 3, 28),
(46, 3, 29),
(47, 3, 30),
(48, 3, 31),
(33, 3, 32),
(34, 3, 33),
(35, 3, 34),
(36, 3, 35),
(37, 3, 36);

-- --------------------------------------------------------

--
-- Структура таблицы `Banners`
--

CREATE TABLE `Banners` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(200) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Banners`
--

INSERT INTO `Banners` (`id`, `title`, `link`, `img`) VALUES
(1, 'Любимые бренды', 'http://localhost:8000/catalog/skis/', 'accessories/sale2.jpg'),
(2, 'Сезонная распродажа', 'http://localhost:8000/catalog/skateboards/', 'accessories/bnr-w8s9.webp'),
(3, 'Третий товар  бесплатно', 'http://localhost:8000/catalog/accessories', 'accessories/bnr-w8s8.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `Brand`
--

CREATE TABLE `Brand` (
  `id` bigint NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Brand`
--

INSERT INTO `Brand` (`id`, `title`) VALUES
(13, 'Champion'),
(12, 'Columbia'),
(18, 'Cordillero'),
(28, 'Demix'),
(20, 'Easy Rider'),
(24, 'Element'),
(5, 'Fischer'),
(11, 'Gladiator'),
(26, 'GQ Board'),
(8, 'Head'),
(9, 'Jimmy Lewis'),
(17, 'Kappa'),
(22, 'Madshus'),
(16, 'Maison David'),
(14, 'New Balance'),
(21, 'Nordway'),
(27, 'PUMA'),
(15, 'Raindrops'),
(23, 'Rossignol'),
(25, 'Street Surfing'),
(2, 'Termit'),
(10, 'WSGS'),
(19, 'YES');

-- --------------------------------------------------------

--
-- Структура таблицы `Clothes`
--

CREATE TABLE `Clothes` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Clothes`
--

INSERT INTO `Clothes` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(1, 'Трусы женские Columbia Lace cotton strech hipster, 2 штуки', 'Женские трусы Columbia.', 'clothes/104692950299.jpg', 'clothes/104692970299.jpg', NULL, '1299', 12, 1, 2),
(2, 'Трусы женские Columbia Cotton Stretch with Elastic, 2 штуки', 'Женские трусы бикини Columbia. Модель выполнена из хлопка с добавлением эластана.', 'clothes/104692780299.jpg', 'clothes/104692830299.jpg', NULL, '1599', 12, 1, 1),
(3, 'Легкая куртка женская Cordillero', 'Со стильной и комфортной ветровкой Cordillero даже самая плохая погода — не помеха для путешествия.', 'clothes/145983090299.jpg', 'clothes/145437150299.jpg', NULL, '7499', 18, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Color`
--

CREATE TABLE `Color` (
  `id` bigint NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Color`
--

INSERT INTO `Color` (`id`, `title`) VALUES
(1, 'Белый'),
(3, 'Голубой'),
(4, 'Зеленый'),
(5, 'Красный'),
(2, 'Черный');

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-02-20 15:44:07.051386', '1', 'S', 1, '[{\"added\": {}}]', 9, 1),
(2, '2025-02-20 15:44:35.624490', '2', 'M', 1, '[{\"added\": {}}]', 9, 1),
(3, '2025-02-20 15:44:46.416630', '3', 'L', 1, '[{\"added\": {}}]', 9, 1),
(4, '2025-02-20 15:44:52.704623', '4', 'XL', 1, '[{\"added\": {}}]', 9, 1),
(5, '2025-02-20 15:44:56.635628', '5', 'XXL', 1, '[{\"added\": {}}]', 9, 1),
(6, '2025-02-20 15:45:06.673318', '6', 'XS', 1, '[{\"added\": {}}]', 9, 1),
(7, '2025-02-20 15:46:05.379186', '1', 'Element', 1, '[{\"added\": {}}]', 7, 1),
(8, '2025-02-20 15:46:45.932042', '2', 'Termit', 1, '[{\"added\": {}}]', 7, 1),
(9, '2025-02-20 15:48:56.674506', '3', 'Анорак', 1, '[{\"added\": {}}]', 7, 1),
(10, '2025-02-20 15:51:21.227542', '4', 'Athlex', 1, '[{\"added\": {}}]', 7, 1),
(11, '2025-02-20 15:52:09.991368', '5', 'Fischer', 1, '[{\"added\": {}}]', 7, 1),
(12, '2025-02-20 15:53:27.760531', '6', 'Bonus', 1, '[{\"added\": {}}]', 7, 1),
(13, '2025-02-20 15:54:06.249152', '7', 'Aloha', 1, '[{\"added\": {}}]', 7, 1),
(14, '2025-02-20 15:55:53.069407', '1', 'Белый', 1, '[{\"added\": {}}]', 8, 1),
(15, '2025-02-20 15:56:03.670446', '2', 'Черный', 1, '[{\"added\": {}}]', 8, 1),
(16, '2025-02-20 15:56:15.267904', '3', 'Голубой', 1, '[{\"added\": {}}]', 8, 1),
(17, '2025-02-20 15:56:30.292688', '4', 'Зеленый', 1, '[{\"added\": {}}]', 8, 1),
(18, '2025-02-20 15:56:45.836638', '5', 'Красный', 1, '[{\"added\": {}}]', 8, 1),
(19, '2025-02-20 17:02:13.758390', '1', 'Сноуборд Termit Chance', 1, '[{\"added\": {}}]', 10, 1),
(20, '2025-02-20 17:02:33.063489', '1', 'Сноуборд Termit Chance', 2, '[{\"changed\": {\"fields\": [\"\\u041c\\u043d\\u043e\\u0433\\u043e \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043e\\u043a\"]}}]', 10, 1),
(21, '2025-02-20 19:03:02.602335', '1', 'Сноуборд Termit Chance', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u0430 (%)\"]}}]', 10, 1),
(22, '2025-02-20 19:03:19.556845', '1', 'Сноуборд Termit Chance', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u0430 (%)\"]}}]', 10, 1),
(23, '2025-02-20 19:25:54.698254', '1', 'Сноуборд Termit Chance', 2, '[{\"changed\": {\"fields\": [\"\\u0421\\u043a\\u0438\\u0434\\u043a\\u0430 (%)\"]}}]', 10, 1),
(24, '2025-02-21 13:57:51.581068', '2', 'Сноуборд женский Termit Amica', 1, '[{\"added\": {}}]', 10, 1),
(25, '2025-02-21 14:18:09.059137', '2', 'Сноуборд женский Termit Amica', 3, '', 10, 1),
(26, '2025-02-21 14:18:15.312608', '1', 'Сноуборд Termit Chance', 3, '', 10, 1),
(27, '2025-02-21 14:19:42.705583', '1', 'Сноуборд Termit Chance', 1, '[{\"added\": {}}]', 11, 1),
(28, '2025-02-21 14:21:30.788104', '8', 'Head', 1, '[{\"added\": {}}]', 7, 1),
(29, '2025-02-21 14:22:27.157618', '2', 'Сноуборд женский Head Clover SMU', 1, '[{\"added\": {}}]', 11, 1),
(30, '2025-02-21 14:37:11.956686', '1', 'Горные лыжи с креплениями Fischer The Curv TI TPR + RS 10 PR 23/24', 1, '[{\"added\": {}}]', 12, 1),
(31, '2025-02-21 14:59:24.883393', '1', 'Лонгборд Termit 38\"', 1, '[{\"added\": {}}]', 13, 1),
(32, '2025-02-21 15:01:52.796166', '2', 'Лонгборд Termit Pintail', 1, '[{\"added\": {}}]', 13, 1),
(33, '2025-02-21 15:12:57.973958', '9', 'Jimmy Lewis', 1, '[{\"added\": {}}]', 7, 1),
(34, '2025-02-21 15:14:36.773055', '1', 'Доска для серфинга Jimmy Lewis Destroyer 6’6-8’0 ft.', 1, '[{\"added\": {}}]', 14, 1),
(35, '2025-02-21 15:15:07.063356', '1', 'Доска для серфинга Jimmy Lewis Destroyer 6’6-8’0 ft.', 2, '[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430\"]}}]', 14, 1),
(36, '2025-02-21 15:15:20.132877', '1', 'Доска для серфинга Jimmy Lewis Destroyer 6’6-8’0 ft.', 2, '[{\"changed\": {\"fields\": [\"\\u041c\\u043d\\u043e\\u0433\\u043e \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043e\\u043a\"]}}]', 14, 1),
(37, '2025-02-21 15:15:40.655586', '1', 'Доска для серфинга Jimmy Lewis Destroyer 6’6-8’0 ft.', 2, '[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430\", \"\\u041c\\u043d\\u043e\\u0433\\u043e \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043e\\u043a\"]}}]', 14, 1),
(38, '2025-02-21 15:30:43.493473', '10', 'WSGS', 1, '[{\"added\": {}}]', 7, 1),
(39, '2025-02-21 15:32:02.664003', '2', 'Доска для серфинга WSGS', 1, '[{\"added\": {}}]', 14, 1),
(40, '2025-02-21 15:40:56.924698', '11', 'Gladiator', 1, '[{\"added\": {}}]', 7, 1),
(41, '2025-02-21 15:42:18.687929', '1', 'SUP доска надувная Gladiator 22.0 Dragon', 1, '[{\"added\": {}}]', 15, 1),
(42, '2025-02-21 15:44:16.692638', '2', 'SUP доска надувная Gladiator ELITE 11.4 двухслойный', 1, '[{\"added\": {}}]', 15, 1),
(43, '2025-02-21 15:46:21.590589', '12', 'Columbia', 1, '[{\"added\": {}}]', 7, 1),
(44, '2025-02-21 15:55:24.271401', '1', 'Трусы женские Columbia Lace cotton strech hipster, 2 штуки', 1, '[{\"added\": {}}]', 16, 1),
(45, '2025-02-21 15:56:05.812373', '2', 'Трусы женские Columbia Cotton Stretch with Elastic, 2 штуки', 1, '[{\"added\": {}}]', 16, 1),
(46, '2025-02-21 15:59:52.834709', '13', 'Champion', 1, '[{\"added\": {}}]', 7, 1),
(47, '2025-02-21 16:05:22.990984', '1', 'Кроссовки женские Champion Canna', 1, '[{\"added\": {}}]', 17, 1),
(48, '2025-02-21 16:05:57.806629', '14', 'New Balance', 1, '[{\"added\": {}}]', 7, 1),
(49, '2025-02-21 16:07:01.767541', '2', 'Кроссовки женские New Balance 327', 1, '[{\"added\": {}}]', 17, 1),
(50, '2025-02-21 16:13:34.866920', '15', 'Raindrops', 1, '[{\"added\": {}}]', 7, 1),
(51, '2025-02-21 16:15:21.475141', '1', 'Зонт мужской RAINDROPS', 1, '[{\"added\": {}}]', 18, 1),
(52, '2025-02-21 16:15:38.322829', '16', 'Maison David', 1, '[{\"added\": {}}]', 7, 1),
(53, '2025-02-21 16:16:52.678144', '2', 'Зонт полуавтомат с системой \"антиветер\" трость', 1, '[{\"added\": {}}]', 18, 1),
(54, '2025-02-21 16:17:16.036055', '17', 'Kappa', 1, '[{\"added\": {}}]', 7, 1),
(55, '2025-02-21 16:18:16.873755', '3', 'Солнцезащитные очки женские Kappa', 1, '[{\"added\": {}}]', 18, 1),
(56, '2025-02-21 16:20:10.255062', '4', 'Сумка Kappa', 1, '[{\"added\": {}}]', 18, 1),
(57, '2025-02-21 16:54:16.793671', '1', 'Любимые бренды', 1, '[{\"added\": {}}]', 19, 1),
(58, '2025-02-21 16:55:18.847556', '2', 'Сезонная распродажа', 1, '[{\"added\": {}}]', 19, 1),
(59, '2025-02-21 19:16:32.283518', '3', 'Скейтборд детский Termit 100 22\"', 1, '[{\"added\": {}}]', 10, 1),
(60, '2025-02-21 19:18:03.589366', '4', 'Скейтборд детский Termit 200 27.2\"', 1, '[{\"added\": {}}]', 10, 1),
(61, '2025-02-21 19:21:17.581298', '3', 'тест', 1, '[{\"added\": {}}]', 19, 1),
(62, '2025-02-21 19:43:37.274407', '1', 'Любимые бренды', 2, '[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0430\\u043d\\u043d\\u0435\\u0440\\u0430\"]}}]', 19, 1),
(63, '2025-02-21 19:44:25.737692', '3', 'Море', 1, '[{\"added\": {}}]', 15, 1),
(64, '2025-02-21 19:44:58.460315', '1', 'SUP доска надувная Gladiator 22.0 Dragon', 3, '', 15, 1),
(65, '2025-02-21 19:45:13.546349', '3', 'Море', 3, '', 15, 1),
(66, '2025-02-21 20:15:16.371729', '1', 'Любимые бренды', 3, '', 19, 1),
(67, '2025-02-21 20:15:16.371787', '2', 'Сезонная распродажа', 3, '', 19, 1),
(68, '2025-02-21 20:15:16.371817', '3', 'тест', 3, '', 19, 1),
(69, '2025-02-21 20:15:36.680657', '4', '1', 1, '[{\"added\": {}}]', 19, 1),
(70, '2025-02-21 20:16:00.803626', '4', '1', 3, '', 19, 1),
(71, '2025-02-21 20:22:11.980880', '1', '1', 1, '[{\"added\": {}}]', 19, 1),
(72, '2025-02-21 20:22:28.762069', '1', '1', 2, '[{\"changed\": {\"fields\": [\"\\u0418\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0431\\u0430\\u043d\\u043d\\u0435\\u0440\\u0430\"]}}]', 19, 1),
(73, '2025-02-21 20:24:47.958916', '2', 'Сезонная распродажа', 1, '[{\"added\": {}}]', 19, 1),
(74, '2025-02-21 20:33:49.034258', '1', 'Любимые бренды', 2, '[{\"changed\": {\"fields\": [\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0430\\u043a\\u0446\\u0438\\u0438\"]}}]', 19, 1),
(75, '2025-02-22 12:26:34.688130', '3', 'третий товар БЕСПЛАТНО', 1, '[{\"added\": {}}]', 19, 1),
(76, '2025-02-22 12:29:32.616216', '3', 'третий товар  бесплатно', 2, '[{\"changed\": {\"fields\": [\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0430\\u043a\\u0446\\u0438\\u0438\"]}}]', 19, 1),
(77, '2025-02-22 12:30:52.135829', '3', 'Третий товар  бесплатно', 2, '[{\"changed\": {\"fields\": [\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0430\\u043a\\u0446\\u0438\\u0438\"]}}]', 19, 1),
(78, '2025-02-22 14:38:45.358328', '2', 'Скейтборд Termit 500 31.5\"', 1, '[{\"added\": {}}]', 12, 1),
(79, '2025-02-22 14:39:31.802543', '2', 'Скейтборд Termit 500 31.5\"', 3, '', 12, 1),
(80, '2025-02-22 18:47:53.648338', '1', 'Категории', 1, '[{\"added\": {}}]', 3, 1),
(81, '2025-02-22 18:48:51.474098', '1', 'Категории', 3, '', 3, 1),
(82, '2025-02-23 14:34:00.443352', '7', 'Aloha', 3, '', 7, 1),
(83, '2025-02-23 14:34:39.219532', '4', 'Athlex', 3, '', 7, 1),
(84, '2025-02-23 14:35:14.467436', '6', 'Bonus', 3, '', 7, 1),
(85, '2025-02-23 14:35:46.952724', '1', 'Element', 3, '', 7, 1),
(86, '2025-02-23 14:36:49.579147', '3', 'Анорак', 3, '', 7, 1),
(87, '2025-02-23 15:38:17.061648', '2', 'manager', 1, '[{\"added\": {}}]', 4, 1),
(88, '2025-02-23 15:39:35.958513', '2', 'manager', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(89, '2025-02-23 15:43:34.998737', '2', 'manager', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(90, '2025-02-23 15:45:12.267097', '2', 'manager', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(91, '2025-02-23 15:45:40.993734', '2', 'manager', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(92, '2025-02-23 15:46:11.419265', '2', 'manager', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(93, '2025-02-23 15:46:36.760137', '2', 'manager', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 4, 1),
(94, '2025-02-23 15:47:40.133374', '2', 'manager', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(95, '2025-02-23 15:49:23.117450', '18', 'Cordillero', 1, '[{\"added\": {}}]', 7, 1),
(96, '2025-02-23 15:51:01.877484', '3', 'Легкая куртка женская Cordillero', 1, '[{\"added\": {}}]', 16, 2),
(97, '2025-02-23 15:53:29.704600', '3', 'manager2', 1, '[{\"added\": {}}]', 4, 1),
(98, '2025-02-23 15:55:07.080728', '3', 'Category_manager', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Staff status\", \"User permissions\"]}}]', 4, 1),
(99, '2025-03-03 14:14:20.200572', '19', 'YES', 1, '[{\"added\": {}}]', 7, 1),
(100, '2025-03-03 14:15:43.859871', '3', 'Сноуборд YES. Basic', 1, '[{\"added\": {}}]', 11, 1),
(101, '2025-03-03 14:17:32.820641', '20', 'Easy Rider', 1, '[{\"added\": {}}]', 7, 1),
(102, '2025-03-03 17:28:30.744023', '4', 'Сноуборд EASYRIDER AURORA LAB', 1, '[{\"added\": {}}]', 11, 1),
(103, '2025-03-03 18:19:58.748138', '21', 'Nordway', 1, '[{\"added\": {}}]', 7, 1),
(104, '2025-03-03 18:21:07.853539', '3', 'Беговые лыжи Nordway Classic + крепления NNN', 1, '[{\"added\": {}}]', 12, 1),
(105, '2025-03-03 18:21:19.965242', '3', 'Беговые лыжи Nordway Classic + крепления NNN', 2, '[{\"changed\": {\"fields\": [\"\\u0426\\u0432\\u0435\\u0442\\u0430\"]}}]', 12, 1),
(106, '2025-03-03 18:23:09.568919', '4', 'Комплект лыжный детский Nordway Bliss NNN', 1, '[{\"added\": {}}]', 12, 1),
(107, '2025-03-03 18:23:31.301895', '4', 'Комплект лыжный детский Nordway Bliss NNN', 2, '[{\"changed\": {\"fields\": [\"\\u0426\\u0432\\u0435\\u0442\\u0430\"]}}]', 12, 1),
(108, '2025-03-03 18:24:25.743656', '22', 'Madshus', 1, '[{\"added\": {}}]', 7, 1),
(109, '2025-03-03 18:25:41.614276', '5', 'Беговые лыжи Madshus Nordseter Carbon Skate + крепления NNN', 1, '[{\"added\": {}}]', 12, 1),
(110, '2025-03-03 18:27:07.922279', '23', 'Rossignol', 1, '[{\"added\": {}}]', 7, 1),
(111, '2025-03-03 18:28:12.608615', '6', 'Беговые лыжи Rossignol Evo XT 55 Positrack', 1, '[{\"added\": {}}]', 12, 1),
(112, '2025-03-03 18:38:39.393769', '24', 'Element', 1, '[{\"added\": {}}]', 7, 1),
(113, '2025-03-03 18:40:06.395099', '5', 'Скейтборд Element Escape From 7.75\"', 1, '[{\"added\": {}}]', 10, 1),
(114, '2025-03-03 18:41:12.740826', '25', 'Street Surfing', 1, '[{\"added\": {}}]', 7, 1),
(115, '2025-03-03 18:42:07.546337', '3', 'Лонгборд Street Surfing Curve Freeride Drop Through Holy Cube 39\"', 1, '[{\"added\": {}}]', 13, 1),
(116, '2025-03-03 18:44:17.191591', '4', 'SUP Easy Rider Safari 11\'', 1, '[{\"added\": {}}]', 15, 1),
(117, '2025-03-03 18:44:51.898362', '26', 'GQ Board', 1, '[{\"added\": {}}]', 7, 1),
(118, '2025-03-03 18:45:45.314210', '5', 'SUP Board надувной GQ 335 Ninja', 1, '[{\"added\": {}}]', 15, 1),
(119, '2025-03-03 18:46:58.853404', '27', 'PUMA', 1, '[{\"added\": {}}]', 7, 1),
(120, '2025-03-03 18:48:01.666430', '3', 'Кроссовки женские PUMA St Runner V3 L', 1, '[{\"added\": {}}]', 17, 1),
(121, '2025-03-03 18:48:36.289504', '28', 'Demix', 1, '[{\"added\": {}}]', 7, 1),
(122, '2025-03-03 18:49:24.766157', '4', 'Кроссовки женские Demix Serena 4', 1, '[{\"added\": {}}]', 17, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(18, 'test_site', 'accessories'),
(19, 'test_site', 'banners'),
(7, 'test_site', 'brand'),
(16, 'test_site', 'clothes'),
(8, 'test_site', 'color'),
(13, 'test_site', 'longboards'),
(17, 'test_site', 'shoes'),
(9, 'test_site', 'size'),
(10, 'test_site', 'skateboards'),
(12, 'test_site', 'skis'),
(11, 'test_site', 'snowboards'),
(15, 'test_site', 'sups'),
(14, 'test_site', 'surfings');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-20 15:39:20.004696'),
(2, 'auth', '0001_initial', '2025-02-20 15:39:20.319856'),
(3, 'admin', '0001_initial', '2025-02-20 15:39:20.419865'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-20 15:39:20.425923'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-20 15:39:20.432355'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-20 15:39:20.496776'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-20 15:39:20.532688'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-20 15:39:20.565424'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-20 15:39:20.571699'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-20 15:39:20.606573'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-20 15:39:20.607517'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-20 15:39:20.613407'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-20 15:39:20.652183'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-20 15:39:20.690738'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-20 15:39:20.708998'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-20 15:39:20.715730'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-20 15:39:20.762795'),
(18, 'sessions', '0001_initial', '2025-02-20 15:39:20.783545'),
(19, 'test_site', '0001_initial', '2025-02-20 15:39:20.924430'),
(20, 'test_site', '0002_alter_skateboards_table', '2025-02-20 15:40:24.432876'),
(21, 'test_site', '0003_alter_skateboards_price_and_more', '2025-02-20 18:41:23.369068'),
(22, 'test_site', '0004_alter_skateboards_price_discount', '2025-02-20 18:42:16.385356'),
(23, 'test_site', '0005_alter_skateboards_price_discount', '2025-02-20 18:43:01.171360'),
(24, 'test_site', '0006_alter_skateboards_price', '2025-02-20 18:49:35.238467'),
(25, 'test_site', '0007_snowboards', '2025-02-21 14:10:16.166394'),
(26, 'test_site', '0008_skis', '2025-02-21 14:34:12.474676'),
(27, 'test_site', '0009_longboards', '2025-02-21 14:56:16.602691'),
(28, 'test_site', '0010_surfings', '2025-02-21 15:09:38.368478'),
(29, 'test_site', '0011_sups', '2025-02-21 15:40:01.396554'),
(30, 'test_site', '0012_clothes', '2025-02-21 15:53:43.134089'),
(31, 'test_site', '0013_shoes', '2025-02-21 16:04:07.944007'),
(32, 'test_site', '0014_accessories', '2025-02-21 16:13:09.066903'),
(34, 'test_site', '0015_banners', '2025-02-21 20:21:13.268764'),
(35, 'test_site', '0016_alter_color_options', '2025-02-23 14:38:13.102675'),
(36, 'test_site', '0017_alter_accessories_options_alter_banners_options_and_more', '2025-02-23 14:40:12.005153');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fla9ikmy0u0ib1yxkpkmu7ihcs9ci8bk', '.eJxVjDsOwjAQBe_iGlle_3Ao6XMGy95d4wBypDipEHeHSCmgfTPzXiKmba1x67zEicRFgDj9bjnhg9sO6J7abZY4t3WZstwVedAux5n4eT3cv4Oaev3W1nsumq3xwbJzHsEZYnUuVg1IBU0xqrigVEAOBSCwQfCalM16yMDi_QHWojek:1tmEMv:3ZZSu2O0UJNA9UQAxgAzKMvJZSnwwUL7mr5mkYRUg2o', '2025-03-09 15:58:13.543056'),
('jmgw1e1qaly7dvxok7xelc0fg3hvi8zk', '.eJxVTstuwyAQ_BXEObLAPIp9zKWnRK2q3iohDEvsNMEphkMV-d8LVg7pZbQ7Mzuzd6xNTqPOC0Q9OdxjinfP3GDsN4QquLMJp7mxc0hxGppqaR7q0hxmB5f9w_svYDTLWK65lOBb4EwqDkJISwVzQF48J5113jLPiBeKEGVBeUoVMEtl6wgf2m6gUEKtiQn3d7zk26JFna61VQdzhdJQ6eJKU7rU9ePzDe1nEx36yoQztyHZkFfkbJvbJxU27NDrO2JMoOMUzqYk3uJkS2Iry3cN2eGfbEJp-cU9Xdf1D1gsZPs:1tpB9A:d7keRnd5JiGJO_JVU6kcx89I2fi4alBlukqNI9p9Rd8', '2025-03-17 19:08:12.573445');

-- --------------------------------------------------------

--
-- Структура таблицы `Longboards`
--

CREATE TABLE `Longboards` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Longboards`
--

INSERT INTO `Longboards` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(1, 'Лонгборд Termit 38\"', 'Лонгборд Termit 38.4\" с декой из канадского клена — отличный выбор, чтобы прокатиться по городу или опробовать скоростной спуск с горки. Модель рассчитана на средний уровень подготовки.', 'longboards/114099830299.jpg', 'longboards/114099880299.jpg', NULL, '8999', 2, 2, 6),
(2, 'Лонгборд Termit Pintail', 'Лонгборд Termit Pintail — отличный выбор для комфортного катания по асфальту или по бетону. Доска подойдет райдерам со средним уровнем подготовки.', 'longboards/76716310299_1.jpg', 'longboards/76522930299.jpg', NULL, '8999', 2, 2, 5),
(3, 'Лонгборд Street Surfing Curve Freeride Drop Through Holy Cube 39\"', 'Симметричная доска с 2 тейлами была разработана для катания по холмам и улицам. Колесная база этого лонгборда обеспечивает высокую устойчивость и в то же время позволяет выполнять крутые повороты, карвинг.', 'longboards/141299130299.jpg', 'longboards/141299130299_lSqBiac.jpg', NULL, '8999', 25, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Shoes`
--

CREATE TABLE `Shoes` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Shoes`
--

INSERT INTO `Shoes` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(1, 'Кроссовки женские Champion Canna', 'Кроссовки от Champion, выполненные в стилистике ретромоделей, прекрасно подойдут для долгих прогулок по городу.', 'shoes/144938630299.jpg', 'shoes/144762140299.jpg', NULL, '5999', 13, 1, 3),
(2, 'Кроссовки женские New Balance 327', 'Кроссовки New Balance 327 — оригинальная модель из премиальных материалов, которая идеально дополнит любой спортивный образ.', 'shoes/139453010299.jpg', 'shoes/138338550299.jpg', '30', '14999', 14, 4, 3),
(3, 'Кроссовки женские PUMA St Runner V3 L', 'Кроссовки ST Runner v3 со стильными деталями верха и новой функциональной отделкой задника — неувядающая классика в новой интерпретации.', 'shoes/81232740299.jpg', 'shoes/61188220299.jpg', NULL, '7999', 27, 1, 2),
(4, 'Кроссовки женские Demix Serena 4', 'Demix объединяет самые модные тенденции и самые современные материалы в этой стильной и удобной паре кроссовок Serena 4.', 'shoes/117287840299.jpg', 'shoes/112521580299.jpg', NULL, '4499', 28, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Size`
--

CREATE TABLE `Size` (
  `id` bigint NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Size`
--

INSERT INTO `Size` (`id`, `title`) VALUES
(3, 'L'),
(2, 'M'),
(1, 'S'),
(4, 'XL'),
(6, 'XS'),
(5, 'XXL');

-- --------------------------------------------------------

--
-- Структура таблицы `Skateboards`
--

CREATE TABLE `Skateboards` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Skateboards`
--

INSERT INTO `Skateboards` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(3, 'Скейтборд детский Termit 100 22\"', 'Скейтборд 100 - 22\" от Termit — отличный выбор, чтобы освоить базовые навыки катания. Яркий дизайн никого не оставит равнодушным. Подходит для детей весом до 35 кг.', 'skateboards/53586760299_1.jpg', 'skateboards/57995230299_1.jpg', NULL, '1999', 2, 3, 2),
(4, 'Скейтборд детский Termit 200 27.2\"', 'Детский скейтборд Termit 200 - 27.2\". Ребенок легко освоит эту доску и получит максимум удовольствия от катания.', 'skateboards/114100330299.jpg', 'skateboards/114100320299.jpg', NULL, '2399', 2, 3, 4),
(5, 'Скейтборд Element Escape From 7.75\"', 'Скейтборд Element Escape From 7.75\" станет отличным выбором для прогрессирующих райдеров. Надежная кленовая дека обеспечивает мощный щелчок и прочность, жесткие колеса позволяют выполнять трюки. Универсальная модель подходит для паркового и уличного катан', 'skateboards/63458750299.jpg', 'skateboards/62725320299.jpg', NULL, '9599', 24, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Skis`
--

CREATE TABLE `Skis` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Skis`
--

INSERT INTO `Skis` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(1, 'Горные лыжи с креплениями Fischer The Curv TI TPR + RS 10 PR 23/24', 'Горные лыжи с креплениями Fischer The Curv TI TPR + RS 10 PR 23/24. Fischer The Curv TI TPR — горные лыжи для экспертов, которым необходим снаряд на каждый день. The Curv TI TPR снабжены всеми передовыми технологиями кубковых лыж Fischer, но имеют чуть бо', 'skis/138205660299.jpg', 'skis/138205660299_PaG354I.jpg', '35', '110490', 5, 5, 4),
(3, 'Беговые лыжи Nordway Classic + крепления NNN', 'Надежные классические беговые лыжи с системой насечек для сцепления при отталкивании. Модель подойдет начинающим лыжникам. Установленные крепления Step NNN входят в стоимость комплекта.', 'skis/69588450299.jpg', 'skis/69484020299.jpg', '13', '3999', 21, 3, 3),
(4, 'Комплект лыжный детский Nordway Bliss NNN', 'Комплект Nordway для девочек — отличный выбор для начала занятий лыжным спортом или для уроков физкультуры в школе. В комплект входят лыжи, палки и крепления системы NNN. Легкие и прочные лыжи с деревянным сердечником и универсальной скользящей поверхност', 'skis/69588500299_1.jpg', 'skis/69484260299_1.jpg', '24', '3999', 21, 3, 1),
(5, 'Беговые лыжи Madshus Nordseter Carbon Skate + крепления NNN', 'Комплект гоночных коньковых беговых лыж с улучшенной карбоновой конструкцией, которая обеспечивает необходимую легкость и жесткость. Отличный вариант для любительских лыжных марафонов. Установлены спортивные крепления системы NNN. На производстве все лыжи', 'skis/140051220299.jpg', 'skis/140051200299.jpg', '10', '16999', 22, 5, 6),
(6, 'Беговые лыжи Rossignol Evo XT 55 Positrack', 'Туристические лыжи Evo XT 55 Positrack от Rossignol — оптимальный выбор для походов и загородных прогулок.', 'skis/141123760299.jpg', 'skis/140612220299.jpg', NULL, '34999', 23, 5, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Snowboards`
--

CREATE TABLE `Snowboards` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Snowboards`
--

INSERT INTO `Snowboards` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(1, 'Сноуборд Termit Chance', 'Надежный, прощающий ошибки обучения Termit Chance — идеальный сноуборд для начинающих райдеров.', 'snowboards/138773670299.jpg', 'snowboards/138569170299.jpg', '20', '16999', 2, 5, 4),
(2, 'Сноуборд женский Head Clover SMU', 'Мягкий сноуборд с универсальной геометрией для комфортного катания. Модель отлично подходит для обучения и позволяет легко осваивать первые трюки.', 'snowboards/105876080299.jpg', 'snowboards/105876080299_90BMlbS.jpg', '13', '34999', 8, 2, 3),
(3, 'Сноуборд YES. Basic', 'Универсальный сноуборд средней жесткости легкий в управлении: попробуйте себя в разных стилях катания. Форма True Twin полностью симметричная, что позволяет кататься в любой стойке.', 'snowboards/139364320299.jpg', 'snowboards/139364320299_jydsdgR.jpg', '30', '54499', 19, 2, 2),
(4, 'Сноуборд EASYRIDER AURORA LAB', 'Полноценная доска с прогрессивным управлением для развлечения, быстрое обучение, позволяет легко начинать повороты и контролировать их, форма Twin предлагает езду вольным стилем с игривым ощущением катания на коньках, твердая стабильность и простота управ', 'snowboards/142943160299.jpg', 'snowboards/142943160299_78Ijzst.jpg', NULL, '27500', 20, 2, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Sups`
--

CREATE TABLE `Sups` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Sups`
--

INSERT INTO `Sups` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(2, 'SUP доска надувная Gladiator ELITE 11.4 двухслойный', 'Хотите провести незабываемое лето? Универсальная sup- доска Gladiator Elite 11\'4 станет вашим надежным спутником в самых ярких и захватывающих приключениях. Эта модель создана для больших водных путешествий. Она легко скользит по воде и способна быстро пр', 'sups/92104150299.jpg', 'sups/92104220299.jpg', '23', '74900', 11, 1, 2),
(4, 'SUP Easy Rider Safari 11\'', 'Стильный сапборд Easy Rider из дизайнерской серии — устойчивая и грузоподъемная туринговая доска. Подходит всем: и опытным, и новичкам. Комфортно кататься как одному, так и вдвоем. Выполнена по технологии MSL: 2 толстых слоя ПВХ не склеены между собой кле', 'sups/78737380299.jpg', 'sups/78618770299.jpg', NULL, '43000', 20, 2, 2),
(5, 'SUP Board надувной GQ 335 Ninja', 'Сапборды компании GQ выполнены по технологии Double Layer Fusion — на текстильную основу клеится слой ПВХ, затем заготовка доски накачивается, и поверх этого слоя клеится второй слой. Благодаря такому методу производства модели имеют невероятную прочность', 'sups/114858850299.jpg', 'sups/114858860299.jpg', NULL, '26800', 26, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Surfings`
--

CREATE TABLE `Surfings` (
  `id` bigint NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `img_lots` varchar(100) NOT NULL,
  `price_discount` decimal(6,0) DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `brand_id_id` bigint DEFAULT NULL,
  `color_id_id` bigint DEFAULT NULL,
  `size_id_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Surfings`
--

INSERT INTO `Surfings` (`id`, `title`, `description`, `img`, `img_lots`, `price_discount`, `price`, `brand_id_id`, `color_id_id`, `size_id_id`) VALUES
(1, 'Доска для серфинга Jimmy Lewis Destroyer 6’6-8’0 ft.', 'На ней легко ловится волна в более пологой фазе, что дает сёрферу запас времени, подумать, что ему делать', 'surfings/jvsdiehcdfi_sEzYu9O.jpg', 'surfings/doska-dlya-surfinga-destroyer-yellow-top-e1536681789954_XjhOxCx.png', '15', '104000', 9, 5, 2),
(2, 'Доска для серфинга WSGS', 'Проверено нашим лагерем на Сумбаве. Объемные доски идеально подходят под Питерские волны', 'surfings/vsgsdoska.jpg', 'surfings/vsgsdoska1.jpg', NULL, '75000', 10, 1, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Accessories`
--
ALTER TABLE `Accessories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Accessories_brand_id_id_0395b55e_fk_Brand_id` (`brand_id_id`),
  ADD KEY `Accessories_color_id_id_350a8d43_fk_Color_id` (`color_id_id`),
  ADD KEY `Accessories_size_id_id_32a6a84a_fk_Size_id` (`size_id_id`);

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `Banners`
--
ALTER TABLE `Banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Brand`
--
ALTER TABLE `Brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `Clothes`
--
ALTER TABLE `Clothes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Clothes_brand_id_id_659d66ee_fk_Brand_id` (`brand_id_id`),
  ADD KEY `Clothes_color_id_id_59b5ce6d_fk_Color_id` (`color_id_id`),
  ADD KEY `Clothes_size_id_id_7919b055_fk_Size_id` (`size_id_id`);

--
-- Индексы таблицы `Color`
--
ALTER TABLE `Color`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `Longboards`
--
ALTER TABLE `Longboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Longboards_brand_id_id_45312fd2_fk_Brand_id` (`brand_id_id`),
  ADD KEY `Longboards_color_id_id_a7bfbf24_fk_Color_id` (`color_id_id`),
  ADD KEY `Longboards_size_id_id_dcbf6642_fk_Size_id` (`size_id_id`);

--
-- Индексы таблицы `Shoes`
--
ALTER TABLE `Shoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoes_brand_id_id_14334e0d_fk_Brand_id` (`brand_id_id`),
  ADD KEY `Shoes_color_id_id_f9033a68_fk_Color_id` (`color_id_id`),
  ADD KEY `Shoes_size_id_id_ad46062f_fk_Size_id` (`size_id_id`);

--
-- Индексы таблицы `Size`
--
ALTER TABLE `Size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `Skateboards`
--
ALTER TABLE `Skateboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skateboards_brand_id_id_7349cb5c_fk_Brand_id` (`brand_id_id`),
  ADD KEY `skateboards_color_id_id_a76079d1_fk_Color_id` (`color_id_id`),
  ADD KEY `skateboards_size_id_id_7aeecdda_fk_Size_id` (`size_id_id`);

--
-- Индексы таблицы `Skis`
--
ALTER TABLE `Skis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Skis_brand_id_id_1e95941e_fk_Brand_id` (`brand_id_id`),
  ADD KEY `Skis_color_id_id_709658c4_fk_Color_id` (`color_id_id`),
  ADD KEY `Skis_size_id_id_706b14cc_fk_Size_id` (`size_id_id`);

--
-- Индексы таблицы `Snowboards`
--
ALTER TABLE `Snowboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Snowboards_brand_id_id_fb5722da_fk_Brand_id` (`brand_id_id`),
  ADD KEY `Snowboards_color_id_id_eeee51f9_fk_Color_id` (`color_id_id`),
  ADD KEY `Snowboards_size_id_id_a29b5438_fk_Size_id` (`size_id_id`);

--
-- Индексы таблицы `Sups`
--
ALTER TABLE `Sups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Sups_brand_id_id_c266e441_fk_Brand_id` (`brand_id_id`),
  ADD KEY `Sups_color_id_id_a33fe5bf_fk_Color_id` (`color_id_id`),
  ADD KEY `Sups_size_id_id_fe10ea14_fk_Size_id` (`size_id_id`);

--
-- Индексы таблицы `Surfings`
--
ALTER TABLE `Surfings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Surfings_brand_id_id_4d2373f7_fk_Brand_id` (`brand_id_id`),
  ADD KEY `Surfings_color_id_id_ce46730d_fk_Color_id` (`color_id_id`),
  ADD KEY `Surfings_size_id_id_355d937e_fk_Size_id` (`size_id_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Accessories`
--
ALTER TABLE `Accessories`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `Banners`
--
ALTER TABLE `Banners`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Brand`
--
ALTER TABLE `Brand`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `Clothes`
--
ALTER TABLE `Clothes`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Color`
--
ALTER TABLE `Color`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `Longboards`
--
ALTER TABLE `Longboards`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `Shoes`
--
ALTER TABLE `Shoes`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Size`
--
ALTER TABLE `Size`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Skateboards`
--
ALTER TABLE `Skateboards`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Skis`
--
ALTER TABLE `Skis`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Snowboards`
--
ALTER TABLE `Snowboards`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Sups`
--
ALTER TABLE `Sups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Surfings`
--
ALTER TABLE `Surfings`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Accessories`
--
ALTER TABLE `Accessories`
  ADD CONSTRAINT `Accessories_brand_id_id_0395b55e_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `Accessories_color_id_id_350a8d43_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `Accessories_size_id_id_32a6a84a_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `Clothes`
--
ALTER TABLE `Clothes`
  ADD CONSTRAINT `Clothes_brand_id_id_659d66ee_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `Clothes_color_id_id_59b5ce6d_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `Clothes_size_id_id_7919b055_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `Longboards`
--
ALTER TABLE `Longboards`
  ADD CONSTRAINT `Longboards_brand_id_id_45312fd2_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `Longboards_color_id_id_a7bfbf24_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `Longboards_size_id_id_dcbf6642_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);

--
-- Ограничения внешнего ключа таблицы `Shoes`
--
ALTER TABLE `Shoes`
  ADD CONSTRAINT `Shoes_brand_id_id_14334e0d_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `Shoes_color_id_id_f9033a68_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `Shoes_size_id_id_ad46062f_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);

--
-- Ограничения внешнего ключа таблицы `Skateboards`
--
ALTER TABLE `Skateboards`
  ADD CONSTRAINT `skateboards_brand_id_id_7349cb5c_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `skateboards_color_id_id_a76079d1_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `skateboards_size_id_id_7aeecdda_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);

--
-- Ограничения внешнего ключа таблицы `Skis`
--
ALTER TABLE `Skis`
  ADD CONSTRAINT `Skis_brand_id_id_1e95941e_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `Skis_color_id_id_709658c4_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `Skis_size_id_id_706b14cc_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);

--
-- Ограничения внешнего ключа таблицы `Snowboards`
--
ALTER TABLE `Snowboards`
  ADD CONSTRAINT `Snowboards_brand_id_id_fb5722da_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `Snowboards_color_id_id_eeee51f9_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `Snowboards_size_id_id_a29b5438_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);

--
-- Ограничения внешнего ключа таблицы `Sups`
--
ALTER TABLE `Sups`
  ADD CONSTRAINT `Sups_brand_id_id_c266e441_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `Sups_color_id_id_a33fe5bf_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `Sups_size_id_id_fe10ea14_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);

--
-- Ограничения внешнего ключа таблицы `Surfings`
--
ALTER TABLE `Surfings`
  ADD CONSTRAINT `Surfings_brand_id_id_4d2373f7_fk_Brand_id` FOREIGN KEY (`brand_id_id`) REFERENCES `Brand` (`id`),
  ADD CONSTRAINT `Surfings_color_id_id_ce46730d_fk_Color_id` FOREIGN KEY (`color_id_id`) REFERENCES `Color` (`id`),
  ADD CONSTRAINT `Surfings_size_id_id_355d937e_fk_Size_id` FOREIGN KEY (`size_id_id`) REFERENCES `Size` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
