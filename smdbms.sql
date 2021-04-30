-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 25 mars 2021 à 11:34
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `smdbms`
--

-- --------------------------------------------------------

--
-- Structure de la table `dailywork`
--

CREATE TABLE `dailywork` (
  `salary_id` int(11) NOT NULL,
  `attendance` varchar(45) NOT NULL,
  `work` varchar(45) NOT NULL,
  `assignTime` varchar(45) NOT NULL,
  `assignStatus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dailywork`
--

INSERT INTO `dailywork` (`salary_id`, `attendance`, `work`, `assignTime`, `assignStatus`) VALUES
(2, 'Present', 'Data Structure', 'Sun Mar 21 22:09:41 GMT 2021', 'Available'),
(7, 'Absent', 'Wireless Network System Administrator', 'Sun Mar 21 22:33:08 GMT 2021', 'Not available'),
(7, 'Present', 'Theater', 'Tue Mar 23 09:08:52 GMT 2021', 'Available'),
(2, 'Absent', 'Linear', 'Tue Mar 23 09:09:22 GMT 2021', 'Not available');

-- --------------------------------------------------------

--
-- Structure de la table `department`
--

CREATE TABLE `department` (
  `Department_id` int(11) NOT NULL,
  `Department_description` varchar(200) NOT NULL,
  `Department_type` text NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Department_place` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `department`
--

INSERT INTO `department` (`Department_id`, `Department_description`, `Department_type`, `Faculty`, `Department_place`) VALUES
(1, 'Computer Science', 'BSCSC', 'STEM', 'Room 12'),
(2, 'Mathematics', 'BS MATH', 'STEM', 'Room 10'),
(3, 'Mechanical Engineering Technology', 'BS MET', 'STEM', 'Room 14'),
(4, 'Bachelor of Art Political Science', 'BA POL', 'BSS', 'Room 20'),
(5, 'Bachelor in Business Administration', 'BBA', 'BSS', 'Room 21'),
(6, 'Computer Information System', 'CIS', 'BBA', 'Room 22');

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(11) NOT NULL,
  `Employee_firstname` varchar(79) NOT NULL,
  `Employee_lastname` varchar(79) NOT NULL,
  `Employee_supervisor` varchar(200) NOT NULL,
  `Employee_hiredDate` varchar(10) NOT NULL,
  `Employee_Email` varchar(50) NOT NULL,
  `Employee_address` varchar(50) NOT NULL,
  `Employee_Mobile` varchar(15) NOT NULL,
  `Employee_Gender` varchar(1) NOT NULL,
  `Employee_salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`Employee_id`, `Employee_firstname`, `Employee_lastname`, `Employee_supervisor`, `Employee_hiredDate`, `Employee_Email`, `Employee_address`, `Employee_Mobile`, `Employee_Gender`, `Employee_salary`) VALUES
(2, 'Coulibally', 'Hassan', 'Bah Celeste', '03-12-2021', 'hassaa@student.iugb.edu.ci', 'Grand bassam', '07 68 54 32 09', 'M', 210000),
(3, 'Marcel', 'Zongo', 'Gaoussou Timité', '12-05-2020', 'marcell@gmail.com', 'San pedro', '41 43 65 65 08', 'F', 210000),
(7, 'Zakaria', 'Toure', 'Jean Lebi', '03-19-2013', 'zakaria@gmail.com', 'Cocody angre 9eme tranche', '07 67 00 32 65', 'M', 210000);

-- --------------------------------------------------------

--
-- Structure de la table `leave`
--

CREATE TABLE `leave` (
  `Leave_id` int(11) NOT NULL,
  `Vacation_balance_start` int(11) DEFAULT NULL,
  `Vacation_balance` int(11) DEFAULT NULL,
  `Vacation_last_taken` int(11) DEFAULT NULL,
  `Sick_balance_start` int(11) DEFAULT NULL,
  `Sick_last_taken` int(11) DEFAULT NULL,
  `Holiday_balance_start` int(11) DEFAULT NULL,
  `Holiday_balance` int(11) DEFAULT NULL,
  `Holiday_last_taken` int(11) DEFAULT NULL,
  `Employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `leave`
--

INSERT INTO `leave` (`Leave_id`, `Vacation_balance_start`, `Vacation_balance`, `Vacation_last_taken`, `Sick_balance_start`, `Sick_last_taken`, `Holiday_balance_start`, `Holiday_balance`, `Holiday_last_taken`, `Employee_id`) VALUES
(5, 1, 3, 2, 7, 5, 4, 8, 7, 2),
(6, 5, 4, 3, 2, 1, 8, 9, 8, 3),
(7, 4, 5, 5, 5, 5, 7, 8, 9, 7);

-- --------------------------------------------------------

--
-- Structure de la table `performance`
--

CREATE TABLE `performance` (
  `Performance_id` int(11) NOT NULL,
  `Evaluation_date` varchar(10) NOT NULL,
  `Evaluator` varchar(50) NOT NULL,
  `average` int(11) NOT NULL,
  `Department_id` int(11) NOT NULL,
  `Employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `salary`
--

CREATE TABLE `salary` (
  `Salary_id` int(11) NOT NULL,
  `Salary_total` double NOT NULL,
  `Salary_description` text NOT NULL,
  `Salary_amount` double NOT NULL,
  `Salary_employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `supervisor`
--

CREATE TABLE `supervisor` (
  `supervisor_id` int(11) NOT NULL,
  `supervisor_firstname` varchar(50) NOT NULL,
  `supervisor_lastname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `supervisor`
--

INSERT INTO `supervisor` (`supervisor_id`, `supervisor_firstname`, `supervisor_lastname`) VALUES
(1, 'Bayomock', 'André'),
(2, 'Gaoussou', 'Timité'),
(3, 'Jean', 'Lebi'),
(4, 'Marcel', 'Tadiou'),
(5, 'Bah', 'Celeste'),
(7, 'Kinin', 'Koné');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `User_firstname` varchar(50) NOT NULL,
  `User_lastname` varchar(100) NOT NULL,
  `User_username` varchar(15) NOT NULL,
  `User_password` varchar(10) NOT NULL,
  `User_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`User_id`, `User_firstname`, `User_lastname`, `User_username`, `User_password`, `User_type`) VALUES
(1, 'Hamidou', 'Traore', 'traoreh2', '103588', 'Administrator'),
(3, 'Haoussi', 'Ehouilé', 'haoussie20', '10356', 'Employee'),
(5, 'Kouakou', 'Valerie', 'kouakv1', 'OLIVE', 'Employee');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dailywork`
--
ALTER TABLE `dailywork`
  ADD KEY `salaryIdx` (`salary_id`);

--
-- Index pour la table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_id`);

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`);

--
-- Index pour la table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`Leave_id`),
  ADD KEY `Employee_id` (`Employee_id`);

--
-- Index pour la table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`Performance_id`),
  ADD KEY `ForeignEmployee_idx` (`Employee_id`),
  ADD KEY `ForeignDepartement_idx` (`Department_id`);

--
-- Index pour la table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`Salary_id`);

--
-- Index pour la table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`supervisor_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `department`
--
ALTER TABLE `department`
  MODIFY `Department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `leave`
--
ALTER TABLE `leave`
  MODIFY `Leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `performance`
--
ALTER TABLE `performance`
  MODIFY `Performance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `salary`
--
ALTER TABLE `salary`
  MODIFY `Salary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `supervisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `leave`
--
ALTER TABLE `leave`
  ADD CONSTRAINT `leave_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Employee_id`);

--
-- Contraintes pour la table `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `performance_ibfk_1` FOREIGN KEY (`Employee_id`) REFERENCES `employee` (`Employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `performance_ibfk_2` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
