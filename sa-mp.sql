-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 19, 2022 lúc 10:45 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `DisplayName` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Online` int(11) NOT NULL,
  `Confirm` int(11) NOT NULL,
  `Token` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(64) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Password` varchar(65) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Password2` varchar(65) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `EnablePass2` int(11) NOT NULL,
  `BanData` varchar(128) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Birthday` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `BanReason` varchar(512) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `LastTimeLogged` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DateCreated` varchar(32) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`UID`, `Account`, `DisplayName`, `Online`, `Confirm`, `Token`, `Email`, `Password`, `Password2`, `EnablePass2`, `BanData`, `Birthday`, `BanReason`, `LastTimeLogged`, `DateCreated`) VALUES
(1, 'vdgiapp', 'Giapp', 0, 1, 'HAt3YA9UVtP3h72uWZSiV2i5EJTCxUAr', 'vdgiapp@gmail.com', '47a098bec5df36d2ace0aacbb6ba9a83907298619913393cd19f489e200046a6', '66595af2140492d5d19a980352dd16d491e62067a8fac4d1b3d8c84617c70be0', 0, '0 0 0 0 none 0 0 0', '09 11 2004', '', '03 41 20 20 08 2022', ' 01 01 2022'),
(6, 'redshank', 'Tóc đỏ', 0, 0, 'nKF1G9PyKWB1mDCZo4THNoWvmI2gptxL', 'redshankseries@gmail.com', '47a098bec5df36d2ace0aacbb6ba9a83907298619913393cd19f489e200046a6', '', 0, '', '', '', '20 15 05 15 08 2022', '14 08 2022');

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

INSERT INTO `characters` (`#`, `Account`, `Slot`, `Name`, `DateCreated`, `LastTimePlayed`, `Birthday`, `Gender`, `Nation`, `Description`, `SkinID`, `Level`, `Respects`, `JobID`, `FightStyle`, `WalkStyle`, `WeaponSkills`, `Playtime`, `Payday`, `RespawnLocation`, `Faction`, `Warns`, `Wanted`, `Arrested`, `Hunger`, `Thirst`, `Stamina`, `Injured`, `Health`, `Armour`, `Position`, `ImprisonData`, `MuteData`, `Cash`, `Coins`, `Bank`, `IDCard`, `LicenseData`, `PhoneData`, `ContactData`, `WalkieTalkieData`, `Settings`, `Item0`, `Item1`, `Item2`, `Item3`, `Item4`, `Item5`, `Item6`, `Item7`, `Item8`, `Item9`, `Item10`, `Item11`, `Item12`, `Item13`, `Item14`, `Item15`, `Item16`, `Item17`, `Item18`, `Item19`, `Item20`, `Item21`, `Item22`, `Item23`, `Item24`, `Item25`, `Item26`, `Item27`, `Item28`, `Item29`, `Item30`, `Item31`, `Item32`, `Item33`, `Item34`, `Item35`, `Item36`, `Item37`, `Item38`, `Item39`, `Item40`, `Item41`, `Item42`, `Item43`, `Item44`, `Item45`, `Item46`, `Item47`, `Item48`, `Item49`, `Item50`, `Item51`, `Item52`, `Item53`, `Item54`, `Item55`, `Item56`, `Item57`, `Item58`, `Item59`) VALUES
(1, 'vdgiapp', 1, 'Jay_Holt', '21 48 54 02 08 2022', '21 48 54 02 08 2022', '09 11 1995', 1, 1, '', 2, '1 0', 0, 0, 4, 0, '0 0 0 0 0 0 0 0 0 0 0', 0, 0, 0, '', 0, 0, 0, 100, 100, 1000, 0, 100, 0, '-96.062218 24.174948 6.771533 73.355103 0 0', '0 0 0 0', '0 0', 1000, 10, '', 0, '0 0 0 0 0 0', '0 000000 0', '', '', '', '22 1 100.000000 0 48 17', '23 1 100.000000 0 0 0', '23 1 100.000000 0 47 7', '80 82 100.000000 0 0 0', '93 78 100.000000 0 0 0', '47 92 0.000000 0 0 7', '48 95 0.000000 0 0 17', '47 7 100.000000 0 0 6', '5 1 100.000000 0 48 17', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0', '0 0 0.000000 0 0 0');

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
(1, 5, 5, 20, 20);

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
(1, 55, 'vdgiapp', 'Giapp', '', 9, 0);

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
  MODIFY `UID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `businesses`
--
ALTER TABLE `businesses`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `characters`
--
ALTER TABLE `characters`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
