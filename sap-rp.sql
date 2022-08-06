-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 06, 2022 lúc 03:27 AM
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
  `UID` int(11) NOT NULL,
  `Account` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Online` int(11) NOT NULL,
  `Password` varchar(65) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Password2` varchar(65) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `EnablePass2` int(11) NOT NULL,
  `Email` varchar(64) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `BanData` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `BanReason` varchar(512) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LastTimeLogged` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DateCreated` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`UID`, `Account`, `Online`, `Password`, `Password2`, `EnablePass2`, `Email`, `BanData`, `BanReason`, `LastTimeLogged`, `DateCreated`) VALUES
(1, 'vdgiapp', 1, '47A098BEC5DF36D2ACE0AACBB6BA9A83907298619913393CD19F489E200046A6', '66595AF2140492D5D19A980352DD16D491E62067A8FAC4D1B3D8C84617C70BE0', 0, 'vdgiapp@gmail.com', '0 0 0 0 none 0 0 0', '', '08 24 53 06 08 2022', ''),
(2, 'redshank', 0, '47A098BEC5DF36D2ACE0AACBB6BA9A83907298619913393CD19F489E200046A6', '', 0, 'redshankseries@gmail.com', '0 0 0 0 none 0 0 0', '', '08 28 15 04 08 2022', ''),
(3, 'minecraft', 0, '47A098BEC5DF36D2ACE0AACBB6BA9A83907298619913393CD19F489E200046A6', '', 0, 'minecraft151607389@gmail.com', '0 0 0 0 none 0 0 0', '', '22 17 30 29 07 2022', ''),
(4, 'android', 0, '47A098BEC5DF36D2ACE0AACBB6BA9A83907298619913393CD19F489E200046A6', '', 0, 'tuilagiaptbz@gmail.com', '0 0 0 0 none 0 0 0', '', '08 25 33 04 08 2022', '');

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
  `Account` varchar(25) COLLATE utf8mb4_vietnamese_ci NOT NULL,
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
  `Playtime` int(11) NOT NULL,
  `Payday` int(11) NOT NULL,
  `RespawnLocation` int(11) NOT NULL,
  `Faction` varchar(64) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Warns` int(11) NOT NULL,
  `Wanted` int(11) NOT NULL,
  `Arrested` int(11) NOT NULL,
  `Hunger` int(11) NOT NULL,
  `Thirst` int(11) NOT NULL,
  `Stamina` int(11) NOT NULL,
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
  `Settings` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `characters`
--

INSERT INTO `characters` (`#`, `Account`, `Slot`, `Name`, `DateCreated`, `LastTimePlayed`, `Birthday`, `Gender`, `Nation`, `Description`, `SkinID`, `Level`, `Respects`, `JobID`, `FightStyle`, `WalkStyle`, `Playtime`, `Payday`, `RespawnLocation`, `Faction`, `Warns`, `Wanted`, `Arrested`, `Hunger`, `Thirst`, `Stamina`, `Injured`, `Health`, `Armour`, `Position`, `ImprisonData`, `MuteData`, `Cash`, `Coins`, `Bank`, `IDCard`, `LicenseData`, `PhoneData`, `ContactData`, `WalkieTalkieData`, `Settings`) VALUES
(1, 'vdgiapp', 1, 'GetPlayerName', '21 48 54 02 08 2022', '21 48 54 02 08 2022', '09 11 1995', 1, 1, '', 2, '1 0', 0, 0, 4, 0, 0, 0, 0, '', 0, 0, 0, 1000, 1000, 1000, 0, 100, 0, '1743 -1862 13.6 0 0 0', '0 0 0 0', '0 0', 1000, 10, '', 0, '0 0 0 0 0 0', '0 000000 0', '', '', ''),
(3, 'android', 1, 'Justin_Barber', '23 02 23 02 08 2022', '23 02 23 02 08 2022', '07 08 1987', 1, 1, '', 72, '1 0', 0, 0, 4, 0, 0, 0, 0, '', 0, 0, 0, 1000, 1000, 1000, 0, 100, 0, '1743 -1862 13.6 0 0 0', '0 0 0 0', '0 0', 1000, 10, '', 0, '0 0 0 0 0 0', '0 000000 0', '', '', ''),
(4, 'redshank', 1, 'Dante_Grimes', '19 34 27 03 08 2022', '19 34 27 03 08 2022', '03 11 1987', 1, 1, '', 23, '1 0', 0, 0, 4, 0, 0, 0, 0, '', 0, 0, 0, 1000, 1000, 1000, 0, 100, 0, '1743 -1862 13.6 0 0 0', '0 0 0 0', '0 0', 1000, 10, '', 0, '0 0 0 0 0 0', '0 000000 0', '', '', ''),
(5, 'vdgiapp', 2, 'Jay_Holt', '06 19 18 06 08 2022', '06 19 18 06 08 2022', '15 10 1989', 1, 1, '', 2, '1 0', 0, 0, 4, 1, 0, 0, 0, '', 0, 0, 0, 1000, 1000, 1000, 0, 100, 0, '1743 -1862 13.6 0 0 0', '0 0 0 0', '0 0', 1000, 10, '', 0, '0 0 0 0 0 0', '0 000000 0', '', '', '');

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
(1, 4, 0, 6, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `#` int(11) NOT NULL,
  `SID` int(11) NOT NULL,
  `Account` varchar(25) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Nick` varchar(25) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Password` varchar(65) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Rank` int(11) NOT NULL,
  `Helped` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`#`, `SID`, `Account`, `Nick`, `Password`, `Rank`, `Helped`) VALUES
(1, 0, 'vdgiapp', 'Giapp', '', 10, 0);

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
  ADD PRIMARY KEY (`UID`);

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
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `businesses`
--
ALTER TABLE `businesses`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `characters`
--
ALTER TABLE `characters`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
