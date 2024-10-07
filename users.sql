-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 07. 12:13
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `users`
--
CREATE DATABASE IF NOT EXISTS `users` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `users`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `newusers`
--

CREATE TABLE `newusers` (
  `Id` char(36) NOT NULL,
  `Name` longtext NOT NULL,
  `Age` int(11) NOT NULL,
  `License` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `newusers`
--

INSERT INTO `newusers` (`Id`, `Name`, `Age`, `License`) VALUES
('02966407-7679-4df1-8af7-05f7043711b7', 'Merci Blind', 41, 1),
('075cfc2a-0f6e-4562-b3eb-3bc8cda57a81', 'Lorette Shobrook', 61, 1),
('076e687f-d989-4299-8c6d-061cb5c504a8', 'Lolita Simony', 46, 0),
('0b4c5c1b-1cbb-4f3d-81b0-344209d9832e', 'Gwynne Opdenort', 59, 0),
('0b886911-b27e-491d-993f-d73ec0688978', 'Basil Eyers', 34, 1),
('0c155cce-86c8-49f7-90fd-6c422357e2db', 'Yalonda Snowdon', 28, 0),
('0df0b12f-508c-4d33-ac7e-0a47f88778c5', 'Herc Kernar', 46, 1),
('114e2202-7a5a-4821-8a52-36c54ac93ead', 'Tish Paddy', 42, 0),
('16c8da92-0429-403d-84f9-18a395412922', 'Udall McAllen', 48, 0),
('19dfcd35-d7d3-495e-94f4-f87a5f5b1c5f', 'Jonathan Inett', 78, 0),
('1a359f7b-3aeb-4db6-8c7f-b27d8749e204', 'Damaris Addicote', 31, 1),
('1a3aec75-4c09-402a-abf0-612da0105f6d', 'Harrison Lerigo', 42, 0),
('1b615a0b-541a-4fee-ba82-e2257c665211', 'Con Vinten', 52, 0),
('1ba3000c-d730-4659-abb8-53b776ffbdc0', 'Lyman Rebillard', 91, 0),
('200896ac-0034-4ce0-84ab-afc6e80d9948', 'Woody Van Schafflaer', 97, 1),
('2633133d-4dc9-4bf7-8969-d13b5315f5bd', 'Fawnia Idenden', 92, 0),
('2e0d669a-de7f-454e-b31b-cd22ae254e07', 'Richard Eye', 89, 1),
('2e6c5ca0-fb13-4b4e-ab6d-b41a7ec2256c', 'Alecia Armatage', 94, 1),
('317f4561-a32c-4006-81e2-0a2ee57d2ad0', 'Bertram Rash', 52, 1),
('31e0bbfa-071c-42d6-80fd-3c2f8d45bd17', 'Denyse Cherrie', 36, 1),
('324ea071-1a23-43d2-8502-3b030f2f0416', 'Brien Johannes', 84, 0),
('34526232-a060-4349-8937-27549a6b8e06', 'Xylia Ennew', 70, 0),
('350db66d-3faf-4780-82a3-db8367231444', 'Ursula Mohammad', 58, 1),
('36f9b548-bff9-436d-956e-1f3cd41353c8', 'Clayson Arondel', 45, 1),
('3791ac8f-2930-4a23-b81f-1beae8cd8495', 'Nyssa Stowe', 87, 0),
('37bfcb7e-ed0a-4409-a66f-9f55d7e59cd4', 'Tomasine Pechard', 38, 1),
('3a660a79-e5ec-42f7-9431-fb3926e2b2ef', 'Zack Gerner', 81, 0),
('3c1c9c70-4d0c-449b-a22e-cd8281c410c4', 'Randi Lannon', 55, 0),
('402cb006-41a8-4233-96dd-91c2003ef5b9', 'Shem Luxton', 39, 0),
('46ab27c6-2cc7-49b9-864e-642eb78cff8a', 'Latisha Jest', 82, 1),
('47e0ed11-fa79-4192-9206-f1500b4d4953', 'Marilin Kliment', 49, 1),
('4898b8fe-cb42-4b77-a8a8-7a33d9c396f2', 'Doti Chillingsworth', 67, 1),
('4fbdd098-74e0-4e66-9ead-cde4039506b2', 'Ryon Possa', 65, 1),
('5200abc7-93fb-4440-b536-b8a1cb94c2ff', 'Marcy Sutcliffe', 40, 1),
('538ce588-ba04-4ad2-839e-ac70f3fdc773', 'Vern Rennox', 99, 0),
('586d21d5-cde0-4ead-a263-e5f6ac939b56', 'Deny Pinnegar', 8, 1),
('5bbebd82-e27b-4a92-851b-5b94c684f8af', 'Pepe Bordiss', 3, 0),
('5f496113-be5c-40d9-ac69-3ac7c72a08dd', 'Myrtice Seelbach', 98, 1),
('64a5bc71-13c8-4dd3-bea6-17740d349817', 'Elsy Carlone', 59, 0),
('65b1394b-05d0-4273-a6b4-de62600bde96', 'Torrence Ebunoluwa', 12, 0),
('67416806-1f78-4d7a-8c9a-9700a5010eca', 'Forester Semens', 46, 1),
('677b6266-3352-487b-b151-77957bd44a06', 'Madalena Yurocjkin', 6, 1),
('698d7701-60c4-440a-bdd1-649f5826b79e', 'Debby Berre', 57, 0),
('6a391c61-4067-4c81-8fae-651ec3f36b1c', 'Laughton Chatell', 69, 0),
('6b08ef64-6e60-4c5b-adae-d69abe97bf08', 'Gibb Gilkes', 40, 1),
('6ba9eef5-be6b-45f7-a80d-0f0cbcd6c438', 'Gerhardt Crus', 94, 0),
('6d938031-e836-4183-8d79-3969097ce867', 'Claribel Hoofe', 85, 0),
('6e9ba367-e630-401e-8df8-8c5d0cd5587c', 'Cleveland Wessel', 88, 1),
('721858b1-1ea5-42a6-8370-54c563059f3f', 'Maryanne Ead', 68, 1),
('74cb44f5-1e42-42de-a2c7-b300e83aff6e', 'Brendan Whye', 44, 1),
('75d7a5e0-2c1f-4bb3-b988-74837c3dc29e', 'Stacia Yitzovicz', 25, 0),
('771aadcd-ec71-4b2b-bd99-0a5e9e3f24fa', 'Kirbie Skene', 89, 0),
('81129542-260c-492d-8b65-d1ee716edf9b', 'Dav Power', 72, 1),
('82501469-2188-4713-a4d3-97416539297c', 'Joellen Van Schafflaer', 21, 0),
('82d0c99d-9771-4ee6-b601-569e6bf88abc', 'Morly Lathee', 46, 0),
('836dba20-7a32-4168-a807-70a8ed80b85c', 'Friederike Silson', 90, 0),
('842c9102-8e40-40b3-ab5e-036d0e361209', 'Lena Cleland', 38, 1),
('909e0e71-0606-42af-ae31-a31aa7f1b292', 'Naoma Ashleigh', 71, 1),
('925537eb-561e-41f0-8c0a-badd4d19e88e', 'Luke Burnhard', 97, 0),
('96c11cb3-dafa-43c5-bc47-83b91b462efa', 'Renaud Temperton', 52, 1),
('97edbfc7-902b-4c90-9aaf-5910eaf79115', 'Tabby Fearnehough', 17, 1),
('9ae7ca01-1ad0-4e83-aa4e-c2d8a8150ed9', 'Cyndie Rigge', 55, 1),
('9ec95595-1c1f-41d4-80cb-89f3356ca1c9', 'Correna Gavrielly', 77, 1),
('9f7bacdc-c8b4-4da9-be9c-38aeda708fa2', 'Aimee Flament', 74, 0),
('9fb8f13e-d5b7-41f3-bfab-a494a9c9b45f', 'Kathleen Cottam', 19, 1),
('a168e169-7ac1-4f64-beb6-207a9e68abfd', 'Aurilia Benezet', 18, 1),
('a289172b-8fc7-4941-96a8-b97b89111ce1', 'Garv Pirrie', 2, 1),
('a61b900c-0828-4d8d-bb4d-707053f874fd', 'Ginger Giddons', 38, 1),
('ab122a66-94cd-4f4b-84e8-a9b95527be90', 'Nicholle Josiah', 16, 0),
('ab3d011b-90d0-4bc6-ad38-155eb0ba013e', 'Luelle Fontell', 51, 1),
('b107fb2f-8809-49f6-999e-1bf3cb69a6f7', 'Lavinia Sigert', 43, 1),
('b630989f-e0a1-44d6-9e0e-18723e316b51', 'Hephzibah Switzer', 82, 1),
('c037c4ff-1326-4c45-9d15-48e03109347f', 'Ada Morden', 27, 0),
('c59ee2fe-5598-49e1-bdb6-98b312def09d', 'Lane Mogie', 25, 0),
('c891c5a1-da15-4267-87e0-bf414aac11c2', 'Chrisy Johl', 64, 0),
('c97205d4-67ea-4d48-80fd-978e0b9ab9da', 'Anton De Minico', 6, 1),
('ce482160-611e-4714-b208-4ece561270c7', 'Kendre OIlier', 53, 0),
('cef5de73-6c5c-4f27-af5d-b90479b4e953', 'Winston Bowie', 70, 0),
('cf1933ef-b308-4cca-ae67-aabcabca3989', 'Bennie Hairyes', 22, 0),
('d331e9a4-2b7a-4582-b766-5e4b7e616ddb', 'Elsy Pargent', 47, 0),
('d5396404-48a1-4dbb-a0bd-b31c6e6fc74e', 'Anthia Dawks', 33, 0),
('db3fa846-8132-4cc3-89f7-469b83033807', 'Althea Fyfe', 34, 0),
('dc3c54a2-8aa2-459e-9ef6-53b9bbbeee7e', 'Maryjane Fliege', 81, 1),
('dd3ec17c-9151-4904-8b93-0d66520784b6', 'Hugo Penniall', 1, 1),
('df15ab01-b95e-43f8-8e2f-ad34dfdc9a21', 'Bonnie Pounsett', 45, 1),
('df4029dc-ab86-4735-bbfd-6e93788115dd', 'Skipton Hoys', 99, 1),
('e40ae70e-3317-401d-9dc8-f1370975fa0d', 'Sherie Cockayne', 75, 0),
('e5fc01a5-dc40-4bf6-af4c-f69e11fb4ee9', 'Gigi Downing', 12, 0),
('e776414b-b138-4736-8885-df82616e3753', 'Onida Elderkin', 1, 1),
('e8a3b65d-98ac-406e-98e4-16df7f3a5987', 'Reg Tease', 70, 0),
('e94eda52-9b54-421b-aa59-dbab4fe280bf', 'Whit Peto', 5, 0),
('e9a446a6-b0aa-4f2f-a8e9-2d077644d43e', 'Arleta Harburtson', 5, 0),
('efe7c6b3-472c-4f83-a8e1-b35a84fb48ea', 'Hayden Jotcham', 72, 0),
('f5ebbf1f-6aaf-4173-b304-54b53b68c858', 'Bibbie Hunstone', 12, 1),
('f8156d63-a74b-450a-b078-ddeac5301a84', 'Carmelia Shepherdson', 38, 0),
('f9611d78-c4b8-4849-9473-3398273adcce', 'Abram Purshouse', 97, 0),
('fa1d0c10-8e1b-47e0-8a99-643f0c2d3de7', 'Royce Bonifacio', 68, 1),
('fe0515ad-7226-448a-820f-7d098d043898', 'Aurel MacLeod', 95, 0),
('ff73c09d-1c02-476e-bd6a-498fe3bce42a', 'Jessalyn Graves', 54, 0),
('ff95bc04-7e0e-4462-8735-c6b566252dcb', 'Birch Scoular', 39, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20241007100534_Initial', '8.0.8');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `newusers`
--
ALTER TABLE `newusers`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
