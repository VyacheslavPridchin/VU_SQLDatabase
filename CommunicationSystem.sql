-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 17 2020 г., 14:51
-- Версия сервера: 5.7.27-30
-- Версия PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `CommunicationSystem`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Accounts`
--

CREATE TABLE `Accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text NOT NULL,
  `login` tinytext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` tinytext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `nickname` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `idLesson` int(11) NOT NULL,
  `currentDevice` text NOT NULL,
  `remoteIP` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Accounts`
--

INSERT INTO `Accounts` (`id`, `email`, `login`, `password`, `nickname`, `type`, `idLesson`, `currentDevice`, `remoteIP`) VALUES
(1, 'teacher@test.com', 'teacher', 'password', 'Teacher', 'teacher', 0, '', ''),
(2, 'student@test.com', 'student', 'password', 'Student', 'student', 0, '', ''),
(3, '', 'guest', 'password', 'Guest', 'guest', 0, '', ''),
(4, 'teacher2@test.com', 'teacher2', 'password', 'Teacher2', 'teacher', 0, '', ''),
(5, 'student2@test.com', 'student2', 'password', 'Student2', 'student', 0, '', ''),
(6, '', 'guest2', 'password', 'Guest2', 'guest', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `Information`
--

CREATE TABLE `Information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `IP` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Lessons`
--

CREATE TABLE `Lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idOwner` int(11) NOT NULL,
  `name` tinytext NOT NULL,
  `description` text NOT NULL,
  `password` tinytext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Server_IP` tinytext NOT NULL,
  `UniqueKey` int(11) NOT NULL,
  `type` tinytext NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Lessons`
--

INSERT INTO `Lessons` (`id`, `idOwner`, `name`, `description`, `password`, `Server_IP`, `UniqueKey`, `type`, `x`, `y`, `z`) VALUES
(1, 1, 'Онлайн-пара', 'Описание онлайн-пары\r\n\r\nГенерируется автоматически', 'password', '127.0.0.1', 0, '', 0, 0, 0),
(2, 1, 'Онлайн-пара 2', 'Описание онлайн-пары 2\r\n\r\nГенерируется автоматически', 'password', '127.0.0.1', 1, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Link_ClientSystem`
--

CREATE TABLE `Link_ClientSystem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ClientID` int(11) NOT NULL,
  `ClientIP` tinytext NOT NULL,
  `ClientPort` int(11) NOT NULL,
  `RoomID` int(11) NOT NULL,
  `ServerIP` tinytext NOT NULL,
  `isDownload` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Servers`
--

CREATE TABLE `Servers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `IP` tinytext NOT NULL,
  `Workload` int(11) NOT NULL,
  `CountOfLesson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Accounts`
--
ALTER TABLE `Accounts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `Information`
--
ALTER TABLE `Information`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `Lessons`
--
ALTER TABLE `Lessons`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `Link_ClientSystem`
--
ALTER TABLE `Link_ClientSystem`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `Servers`
--
ALTER TABLE `Servers`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Accounts`
--
ALTER TABLE `Accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `Information`
--
ALTER TABLE `Information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Lessons`
--
ALTER TABLE `Lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `Link_ClientSystem`
--
ALTER TABLE `Link_ClientSystem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT для таблицы `Servers`
--
ALTER TABLE `Servers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
