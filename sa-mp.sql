-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 28, 2022 lúc 05:20 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sa-mp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `SID` int(11) NOT NULL,
  `Account` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DisplayName` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Online` int(11) NOT NULL,
  `Confirm` int(11) NOT NULL,
  `sessionID` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(64) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Cellphone` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Enable2FA` int(11) NOT NULL,
  `Password` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `EnablePass2` int(11) NOT NULL,
  `Password2` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `BanData` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Birthday` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `BanReason` varchar(512) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LastTimeLogged` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DateCreated` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`SID`, `Account`, `DisplayName`, `Online`, `Confirm`, `sessionID`, `Email`, `Cellphone`, `Enable2FA`, `Password`, `EnablePass2`, `Password2`, `BanData`, `Birthday`, `BanReason`, `LastTimeLogged`, `DateCreated`) VALUES
(1, 'vdgiapp', 'Giapp', 0, 1, '', 'vdgiapp+gtapgvn@gmail.com', '', 0, '$2y$12$0YFtY9AQSQK3lT8oKlikPOaWuj.9xoHGXnnypyV8t1rBVl4AcpYMa', 0, '', '0 0 0 0 none 0 0 0', '09 11 2004', '', '10 08 32 28 08 2022', ' 01 01 2022'),
(6, 'redshank', 'Tóc đỏ', 0, 0, '', 'redshankseries@gmail.com', '', 0, '$2y$12$WjFH4bjj6EU0gL/ec38A4uBGyfET7kbR0S4KjAeACyqi8TPFY45tm', 0, '', '0 0 0 0 none 0 0 0', '', '', '10 17 43 28 08 2022', '14 08 2022'),
(7, 'testaa', 'testaa', 0, 0, '', 'bruh@bruh.bruh', '', 0, '$2y$12$69ILMnIfyipjTc.YXKkHbO.e/dzpXrZWJjG3ZXTMiy1G31R7tIq7C', 0, '', '', '', '', '10 15 26 28 08 2022', '28 08 2022'),
(8, 'redshank2', 'redshank2', 0, 0, '', 'test@tocdo.vn', '', 0, '$2y$12$WjFH4bjj6EU0gL/ec38A4uBGyfET7kbR0S4KjAeACyqi8TPFY45tm', 0, '', '', '', '', '10 16 10 28 08 2022', '28 08 2022'),
(9, 'theninth', 'theninth', 0, 0, '', 'theninth@nine.com', '', 0, '$2y$12$6q1HH5ZDfpx9IGmApsnqNu2oj3H8jqGelJF0mIBNVRBoUkCBI4/qy', 0, '', '', '', '', '10 19 43 28 08 2022', '28 08 2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `businesses`
--

CREATE TABLE `businesses` (
  `#` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `characters`
--

CREATE TABLE `characters` (
  `#` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `Slot` int(11) NOT NULL,
  `Name` varchar(25) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DateCreated` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LastTimePlayed` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Birthday` varchar(16) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Gender` int(11) NOT NULL,
  `Nation` int(11) NOT NULL,
  `Description` varchar(512) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SkinID` int(11) NOT NULL,
  `Level` varchar(16) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Respects` int(11) NOT NULL,
  `JobID` int(11) NOT NULL,
  `FightStyle` int(11) NOT NULL,
  `WalkStyle` int(11) NOT NULL,
  `WeaponSkills` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Playtime` int(11) NOT NULL,
  `Payday` int(11) NOT NULL,
  `RespawnLocation` int(11) NOT NULL,
  `Faction` varchar(64) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Warns` int(11) NOT NULL,
  `Wanted` int(11) NOT NULL,
  `Arrested` int(11) NOT NULL,
  `Hunger` float NOT NULL,
  `Thirst` float NOT NULL,
  `Stamina` float NOT NULL,
  `Injured` int(11) NOT NULL,
  `Health` float NOT NULL,
  `Armour` float NOT NULL,
  `Position` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ImprisonData` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MuteData` varchar(16) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Cash` int(11) NOT NULL,
  `Coins` int(11) NOT NULL,
  `Bank` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `IDCard` int(11) NOT NULL,
  `LicenseData` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `PhoneData` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ContactData` varchar(1024) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `WalkieTalkieData` varchar(64) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Settings` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item0` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item1` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item2` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item3` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item4` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item5` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item6` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item7` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item8` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item9` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item10` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item11` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item12` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item13` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item14` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item15` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item16` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item17` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item18` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item19` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item20` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item21` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item22` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item23` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item24` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item25` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item26` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item27` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item28` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item29` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item30` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item31` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item32` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item33` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item34` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item35` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item36` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item37` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item38` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item39` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item40` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item41` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item42` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item43` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item44` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item45` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item46` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item47` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item48` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item49` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item50` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item51` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item52` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item53` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item54` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item55` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item56` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item57` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item58` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Item59` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `characters`
--

INSERT INTO `characters` (`#`, `SID`, `Slot`, `Name`, `DateCreated`, `LastTimePlayed`, `Birthday`, `Gender`, `Nation`, `Description`, `SkinID`, `Level`, `Respects`, `JobID`, `FightStyle`, `WalkStyle`, `WeaponSkills`, `Playtime`, `Payday`, `RespawnLocation`, `Faction`, `Warns`, `Wanted`, `Arrested`, `Hunger`, `Thirst`, `Stamina`, `Injured`, `Health`, `Armour`, `Position`, `ImprisonData`, `MuteData`, `Cash`, `Coins`, `Bank`, `IDCard`, `LicenseData`, `PhoneData`, `ContactData`, `WalkieTalkieData`, `Settings`, `Item0`, `Item1`, `Item2`, `Item3`, `Item4`, `Item5`, `Item6`, `Item7`, `Item8`, `Item9`, `Item10`, `Item11`, `Item12`, `Item13`, `Item14`, `Item15`, `Item16`, `Item17`, `Item18`, `Item19`, `Item20`, `Item21`, `Item22`, `Item23`, `Item24`, `Item25`, `Item26`, `Item27`, `Item28`, `Item29`, `Item30`, `Item31`, `Item32`, `Item33`, `Item34`, `Item35`, `Item36`, `Item37`, `Item38`, `Item39`, `Item40`, `Item41`, `Item42`, `Item43`, `Item44`, `Item45`, `Item46`, `Item47`, `Item48`, `Item49`, `Item50`, `Item51`, `Item52`, `Item53`, `Item54`, `Item55`, `Item56`, `Item57`, `Item58`, `Item59`) VALUES
(1, 1, 1, 'Jay_Holt', '21 48 54 02 08 2022', '21 48 54 02 08 2022', '09 11 1995', 1, 1, '', 2, '1 0', 0, 0, 4, 0, '0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, '', 0, 0, 0, 100, 100, 1000, 0, 95, 0, '2509.299316 -1687.080933 13.567689 48.079693 0 0', '0 0 0 0', '0 0', 79, 10, '', 0, '0 0 0 0 0 0', '0 000000 0', '', '', '', '80 6 100.000000 0 0 0 -1', '93 6 100.000000 0 0 0 -1', '48 16 100.000000 0 0 17 -1', '23 1 100.000000 0 48 17 -1', '20 1 100.000000 1 0 0 -1', '21 1 100.000000 1 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1'),
(8, 1, 2, 'Savana_Eagle', '03 21 32 23 08 2022', '03 21 32 23 08 2022', '09 11 1990', 1, 4, '', 2, '1 0', 0, 0, 4, 0, '0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, '', 0, 0, 0, 100, 100, 100, 0, 100, 0, '1741.123535 -1862.317627 16.204782 89.267624 0 0', '0 0 0 0', '0 0', 1000, 10, '', 0, '0 0 0 0 0 0', '0 000000 0', '', '', '', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1'),
(9, 6, 1, 'Tyler_Holt', '23 11 19 23 08 2022', '23 11 19 23 08 2022', '05 10 1989', 1, 1, '', 217, '1 0', 0, 0, 4, 0, '0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, '', 0, 0, 0, 100, 100, 100, 0, 100, 0, '224.110916 1291.789551 1082.140625 0.000000 0 1', '0 0 0 0', '0 0', 1000, 10, '', 0, '0 0 0 0 0 0', '0 000000 0', '', '', '', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1', '0 0 0.000000 0 0 0 -1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `factions`
--

CREATE TABLE `factions` (
  `#` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `furniture`
--

CREATE TABLE `furniture` (
  `#` int(11) NOT NULL,
  `Model` int(11) NOT NULL,
  `Owner` varchar(25) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `houses`
--

CREATE TABLE `houses` (
  `#` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `Created` int(11) NOT NULL,
  `Owned` int(11) NOT NULL,
  `Owner` varchar(25) NOT NULL,
  `Locked` int(11) NOT NULL,
  `Alarm` int(11) NOT NULL,
  `Level` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `IntID` int(11) NOT NULL,
  `ExteriorX` float NOT NULL,
  `ExteriorY` float NOT NULL,
  `ExteriorZ` float NOT NULL,
  `ExteriorA` float NOT NULL,
  `ExteriorInt` int(11) NOT NULL,
  `ExteriorWorld` int(11) NOT NULL,
  `InteriorX` float NOT NULL,
  `InteriorY` float NOT NULL,
  `InteriorZ` float NOT NULL,
  `InteriorA` float NOT NULL,
  `InteriorInt` int(11) NOT NULL,
  `InteriorWorld` int(11) NOT NULL,
  `LockerX` float NOT NULL,
  `LockerY` float NOT NULL,
  `LockerZ` float NOT NULL,
  `Cash` int(11) NOT NULL,
  `Item0` text NOT NULL,
  `Item1` text NOT NULL,
  `Item2` text NOT NULL,
  `Item3` text NOT NULL,
  `Item4` text NOT NULL,
  `Item5` text NOT NULL,
  `Item6` text NOT NULL,
  `Item7` text NOT NULL,
  `Item8` text NOT NULL,
  `Item9` text NOT NULL,
  `Item10` text NOT NULL,
  `Item11` text NOT NULL,
  `Item12` text NOT NULL,
  `Item13` text NOT NULL,
  `Item14` text NOT NULL,
  `Item15` text NOT NULL,
  `Item16` text NOT NULL,
  `Item17` text NOT NULL,
  `Item18` text NOT NULL,
  `Item19` text NOT NULL,
  `Item20` text NOT NULL,
  `Item21` text NOT NULL,
  `Item22` text NOT NULL,
  `Item23` text NOT NULL,
  `Item24` text NOT NULL,
  `Item25` text NOT NULL,
  `Item26` text NOT NULL,
  `Item27` text NOT NULL,
  `Item28` text NOT NULL,
  `Item29` text NOT NULL,
  `Item30` text NOT NULL,
  `Item31` text NOT NULL,
  `Item32` text NOT NULL,
  `Item33` text NOT NULL,
  `Item34` text NOT NULL,
  `Item35` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `houses`
--

INSERT INTO `houses` (`#`, `ID`, `Created`, `Owned`, `Owner`, `Locked`, `Alarm`, `Level`, `Price`, `IntID`, `ExteriorX`, `ExteriorY`, `ExteriorZ`, `ExteriorA`, `ExteriorInt`, `ExteriorWorld`, `InteriorX`, `InteriorY`, `InteriorZ`, `InteriorA`, `InteriorInt`, `InteriorWorld`, `LockerX`, `LockerY`, `LockerZ`, `Cash`, `Item0`, `Item1`, `Item2`, `Item3`, `Item4`, `Item5`, `Item6`, `Item7`, `Item8`, `Item9`, `Item10`, `Item11`, `Item12`, `Item13`, `Item14`, `Item15`, `Item16`, `Item17`, `Item18`, `Item19`, `Item20`, `Item21`, `Item22`, `Item23`, `Item24`, `Item25`, `Item26`, `Item27`, `Item28`, `Item29`, `Item30`, `Item31`, `Item32`, `Item33`, `Item34`, `Item35`) VALUES
(22, 0, 1, 1, 'Tyler_Holt', 0, 0, 0, 10000, 2, 2495.37, -1690.96, 14.7656, 0.120331, 0, 0, 2495.87, -1693.1, 1014.74, 180, 3, 1, 2491.68, -1701.1, 1018.34, 0, '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 -1', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0'),
(26, 1, 1, 1, 'Jay_Holt', 0, 0, 1, 500, 7, 2514.3, -1691.57, 14.046, 48.0797, 0, 0, 223.162, 1287.52, 1082.14, 0, 1, 2, 229.046, 1287.42, 1082.14, 900, '23 1 100.000000 47 7 -1', '47 16 100.000000 0 7 -1', '45 1 100.000000 0 0 -1', '22 1 100.000000 48 17 -1', '44 1 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `serverinfo`
--

CREATE TABLE `serverinfo` (
  `#` int(11) NOT NULL,
  `Registered` int(11) NOT NULL,
  `CharCreated` int(11) NOT NULL,
  `Day` int(11) NOT NULL,
  `Logged` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `serverinfo`
--

INSERT INTO `serverinfo` (`#`, `Registered`, `CharCreated`, `Day`, `Logged`) VALUES
(1, 12, 7, 28, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `#` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `Nick` varchar(25) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Password` varchar(65) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Rank` int(11) NOT NULL,
  `Helped` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`#`, `id`, `SID`, `Nick`, `Password`, `Rank`, `Helped`) VALUES
(1, 0, 1, 'Giapp', '', 9, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vehicles`
--

CREATE TABLE `vehicles` (
  `#` int(11) NOT NULL,
  `Model` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`SID`);

--
-- Chỉ mục cho bảng `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`#`);

--
-- Chỉ mục cho bảng `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`#`);

--
-- Chỉ mục cho bảng `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`#`);

--
-- Chỉ mục cho bảng `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`#`);

--
-- Chỉ mục cho bảng `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`#`);

--
-- Chỉ mục cho bảng `serverinfo`
--
ALTER TABLE `serverinfo`
  ADD PRIMARY KEY (`#`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`#`);

--
-- Chỉ mục cho bảng `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`#`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `SID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `businesses`
--
ALTER TABLE `businesses`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `characters`
--
ALTER TABLE `characters`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `factions`
--
ALTER TABLE `factions`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `furniture`
--
ALTER TABLE `furniture`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `houses`
--
ALTER TABLE `houses`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `serverinfo`
--
ALTER TABLE `serverinfo`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `staff`
--
ALTER TABLE `staff`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
