-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Bulan Mei 2022 pada 13.22
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobile_legend`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailhero`
--

CREATE TABLE `detailhero` (
  `id_DH` int(11) NOT NULL,
  `idHero` int(11) NOT NULL,
  `skillName_1` varchar(225) NOT NULL,
  `skillDesc_1` varchar(225) NOT NULL,
  `skillName_2` varchar(225) NOT NULL,
  `skillDesc_2` varchar(225) NOT NULL,
  `skillName_3` varchar(225) NOT NULL,
  `skillDesc_3` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detailhero`
--

INSERT INTO `detailhero` (`id_DH`, `idHero`, `skillName_1`, `skillDesc_1`, `skillName_2`, `skillDesc_2`, `skillName_3`, `skillDesc_3`) VALUES
(12, 38, 'STAKE', 'When Silvernail activates his first ability, he plants a Stake into the ground that can form a tripwire between any other nearby Stakes. This means that Silvernail can create tripwires in all kinds of configurations in order ', 'CAUSTIC BLESSING', 'Silvernail’s Caustic Blessing lobs a flask that deals damage in an area and reveals enemies hit for a short period of time.', 'REBUKE', 'Silvernail’s ultimate, Rebuke, fires a piercing bolt that deals damage and impales every enemy in its path. Those struck by the bolt are dragged along the path and are stunned if they collide into a wall, structure or tripwir'),
(13, 39, 'PLASMA DRIVER', 'Kinetic unleashes a burst of energy, damaging the first enemy struck', 'INERTIAL DASH', 'Kinetic dashes and temporarily becomes Charged; refreshes Plasma Driver’s cooldown.', 'CHARGED PULSE', 'Kinetic charges up a powerful blast and fires it at her target. Using Charged pulse Consumes all stacks of Tracer Shots to deal bonus damage per stack. Can be blocked by enemy heroes, structures, and jungle bosses.'),
(14, 40, 'JAWBREAKER', 'Tony\'s next three basic attacks are empowered. These attacks launch Tony toward his target, dealing bonus damage. The third attack is a two-handed strike that will stun his target.', 'TRASH TALK', 'Tony hurls insults in the target direction. All enemies hit receive damage and are forced to attack Tony. This also resets the cooldown of Come At Me, allowing it to trigger again.', 'BADABOOM', 'Tony winds up, then dashes to target location, releasing a massive spinning uppercut. This colossal punch deals crystal damage and knocks away all enemies caught in the area.'),
(15, 41, 'HOOK & CHAIN', 'Churnwalker throws a skillshot hook that chains victims to him and damages heroes over time. Hitting a hook resets this ability’s cooldown.', 'TORMENT ', 'Torment yanks all chained victims toward Churnwalker a fixed distance, damaging them.', 'TRESPASS ', 'Churnwalker channels churn power for a short time, then travels to the target location, stunning all chained victims and breaking all chains. Churnwalker can only target a location near a chained victim. Leveling this ability'),
(16, 42, 'BENEDICTION', 'Grace channels briefly before knocking surrounding enemies into the air to deal crystal damage.', 'HOLY NOVA', 'Grace channels briefly before knocking surrounding enemies into the air to deal crystal damage.', 'DIVINE INTERVENTION', 'Grace grants herself and her target a full holy shield and begins a channel after which her target is healed.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero`
--

CREATE TABLE `hero` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `story` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hero`
--

INSERT INTO `hero` (`id`, `name`, `role`, `story`) VALUES
(38, 'SILVERNAIL', 'Carry', 'Silvernail loads an extra bolt into his crossbow which can be expended to chain a follow-up basic attack, dealing damage. The availability of Double Shot is shown by the white bar underneath his energy.'),
(39, 'KINETIC', 'Carry', 'Landing Plasma Driver grants Kinetic Tracer Shots stacks.\r\nTracer Shots: Kinetic fires a tracer at her target. Tracer damage increases when more stacks are gained.'),
(40, 'TONY', 'Jungle', 'When Tony receives damage, he gains a health barrier for a short duration. Once activated, this ability will go on cooldown.'),
(41, 'CHURNWALKER', 'Roamer', 'Whenever chained victims take damage from any source, Churnwalker regenerates a percentage of that damage as health.'),
(42, 'GRACE', 'Roamer', 'Grace chains her normal basic attack into a ground slam, dealing bonus weapon damage and slowing enemies in a wide area. If any enemies are hit by the ground slam, her ability cooldowns are reduced.');

--
-- Trigger `hero`
--
DELIMITER $$
CREATE TRIGGER `after_hero_delete` AFTER DELETE ON `hero` FOR EACH ROW BEGIN
		DELETE FROM detailhero WHERE idHero=old.id;
	END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_hero_insert` AFTER INSERT ON `hero` FOR EACH ROW BEGIN
	INSERT INTO detailhero (idHero, skillName_1, skillDesc_1, skillName_2, skillDesc_2, skillName_3, skillDesc_3) 
	VALUES (NEW.id, 'Skill-1-Kosong', 'Skill-desc-kosong', 'Skill-2-Kosong', 'Skill-desc-kosong', 'Skill-3-Kosong', 'Skill-desc-kosong');
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailhero`
--
ALTER TABLE `detailhero`
  ADD PRIMARY KEY (`id_DH`);

--
-- Indeks untuk tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailhero`
--
ALTER TABLE `detailhero`
  MODIFY `id_DH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
