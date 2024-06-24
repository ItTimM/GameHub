-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 24 2024 г., 12:56
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gamehub`
--
CREATE DATABASE IF NOT EXISTS `gamehub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gamehub`;

-- --------------------------------------------------------

--
-- Структура таблицы `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` bigint(26) NOT NULL,
  `login` varchar(1048) NOT NULL,
  `email` varchar(1048) NOT NULL,
  `password` varchar(1048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Очистить таблицу перед добавлением данных `account`
--

TRUNCATE TABLE `account`;
-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `id` bigint(26) NOT NULL,
  `name_game` varchar(1048) NOT NULL,
  `genre` varchar(1024) NOT NULL,
  `publisher` varchar(1024) NOT NULL,
  `price` bigint(48) NOT NULL,
  `rating` varchar(26) NOT NULL,
  `link` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Очистить таблицу перед добавлением данных `game`
--

TRUNCATE TABLE `game`;
--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`id`, `name_game`, `genre`, `publisher`, `price`, `rating`, `link`) VALUES
(1, 'Escape the Backrooms', 'Инди', 'Fancy Games', 259, '3.8', 'https://escapethebackrooms.ru'),
(2, 'GTA 5', 'экшен', 'Rockstar Games\r\n', 1599, '8.4', 'https://www.rockstargames.com/gta-v'),
(3, 'My Lovely Family Deluxe Bundle', 'Приключенческие игры, Инди, Симуляторы, Казуальные игры, Стратегии', 'Toge Productions, Neon Doctrine', 459, '4.7', 'https://www.gog.com/ru/game/my_lovely_family_deluxe_bundle'),
(4, 'Phasmophobia', ' Экшены, Инди', 'Kinetic Games', 400, '4', 'https://store.steampowered.com/app/739630/Phasmophobia/'),
(5, 'PUBG: BATTLEGROUNDS', 'Экшены, Приключенческие игры, Многопользовательские игры', 'KRAFTON, Inc.', 0, '6.7', 'https://pubg.com/ru/events/newjeansxpubg'),
(6, 'Portal 2', 'Экшены, Приключенческие игры', 'Electronic ArtsValve ', 385, '4.7', 'https://store.steampowered.com/app/620/Portal_2/'),
(7, 'Red Dead Redemption 2', 'шутер от третьего лица, шутер от первого лица, приключенческий боевик, вестерн', 'Rockstar Games', 2499, '4.7', 'https://www.rockstargames.com/reddeadredemption2'),
(8, 'The Forest', 'Экшены, Приключенческие игры, Инди, Симуляторы', 'Endnight Games Ltd', 435, '3.5', 'https://endnightgames.com/games/the-forest'),
(9, 'The Planet Crafter', 'Приключенческие игры', 'Miju Games', 940, '8.8', 'https://store.steampowered.com/app/1284190/The_Planet_Crafter/'),
(10, 'The Witcher 3 Wild Hunt ', 'Action-RPG', 'CD PROJEKT RED ', 239, '8.7', 'https://www.thewitcher.com/ru/en/witcher3');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `account`
--
ALTER TABLE `account`
  MODIFY `id` bigint(26) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `game`
--
ALTER TABLE `game`
  MODIFY `id` bigint(26) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
