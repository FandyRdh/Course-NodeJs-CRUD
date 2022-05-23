-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Bulan Mei 2022 pada 23.56
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
(13, 39, 'PLASMA DRIVER', 'Kinetic unleashes a burst of energy, damaging the first enemy struck', 'INERTIAL DASH', 'Kinetic dashes and temporarily becomes Charged; refreshes Plasma Driver’s cooldown.', 'CHARGED PULSE', 'Kinetic charges up a powerful blast and fires it at her target. Using Charged pulse Consumes all stacks of Tracer Shots to deal bonus damage per stack. Can be blocked by enemy heroes, structures, and jungle bosses.'),
(14, 40, 'JAWBREAKER', 'Tony\'s next three basic attacks are empowered. These attacks launch Tony toward his target, dealing bonus damage. The third attack is a two-handed strike that will stun his target.', 'TRASH TALK', 'Tony hurls insults in the target direction. All enemies hit receive damage and are forced to attack Tony. This also resets the cooldown of Come At Me, allowing it to trigger again.', 'BADABOOM', 'Tony winds up, then dashes to target location, releasing a massive spinning uppercut. This colossal punch deals crystal damage and knocks away all enemies caught in the area.'),
(15, 41, 'HOOK & CHAIN', 'Churnwalker throws a skillshot hook that chains victims to him and damages heroes over time. Hitting a hook resets this ability’s cooldown.', 'TORMENT ', 'Torment yanks all chained victims toward Churnwalker a fixed distance, damaging them.', 'TRESPASS ', 'Churnwalker channels churn power for a short time, then travels to the target location, stunning all chained victims and breaking all chains. Churnwalker can only target a location near a chained victim. Leveling this ability'),
(28, 54, 'BUCKSHOT BONANZA', 'Gwen blasts enemies in the target direction, damaging all targets in a cone. Enemies hit by this ability are slowed and revealed for a short time.', 'SKEDADDLE', 'When activated, Gwen instantly removes negative effects from herself and blocks further effects for a short time. Additionally, she gains a temporary burst of bonus move speed.', 'ACES HIGH', 'Gwen pulls an ace from up her sleeve and flings it in the target direction. The card deals damage to everything it passes through. The ace impacts and stuns the first enemy hero in its path.'),
(29, 55, 'PRIME DIRECTIVE', 'Alpha scans for enemies along a path. If she scans an enemy, that enemy is slowed and Alpha instantly dashes behind them, dealing damage to the target and all enemies within 4.5 meters (65% damage to minions)', 'CORE CHARGE', 'Alpha lunges forward, landing a basic attack on her target and fracturing the ground for additional crystal damage in a small area. Each time she uses this ability, she spends 10% of her current health and gains Core Overload', 'TERMINATION PROTOCOL', 'On activation, Alpha begins a self destruct sequence. At the start of this she gains a burst of move speed as well as 400-1000 barrier (based on her level). Immediately afterward, she rapidly loses move speed as her Halcyon c'),
(30, 56, 'GLIMMERSHOT', 'Kestrel fires an arrow, landing an armor-piercing basic attack on the first target in its path. The arrow then pierces through, dealing crystal damage to the target and other enemies behind it. Kestrel can keep several arrows', 'ACTIVE CAMO', 'Kestrel instantly vanishes from sight and gains bonus move speed. Additionally, she leaves an invisible phosphor mist at her location, revealing enemies as they walk through it. If Kestrel deals damage to an enemy hero within', 'ONE SHOT. ONE KILL.', 'After a delay, Kestrel fires a single arrow across the fold, impacting on the first enemy hero, large creature or structure in its path. When this hits an enemy hero, it reveals that hero and grants Kestrel full Adrenaline st'),
(31, 57, 'WINTER SPIRE', 'Reim summons a spire of ice at a nearby location, dealing crystal damage to surrounding enemies. After a short delay, the spire shatters, dealing heavy crystal damage. ', 'CHILL WINDS', 'Reim deals a burst of crystal damage to all surrounding enemies (25% damage to minions).', 'VALKYRIE', 'Reim summons an ancient valkyrie, devastating enemies at the target location. All enemies are slowed, while enemies closer to the center are stunned and take increased damage.'),
(32, 58, 'THREE-RING CIRCUS', 'Ozo performs a three-hit combo with his ring. Each part of the combo is a separate tap within a 5-second window.', 'ACROBOUNCE', 'Ozo hops onto the head of a nearby target (enemy, ally or creature), slowing it by 60% and damaging it. While Ozo is airborne, quickly tap a nearby target to bounce off one head to the other. Three hops maximum. The final hop', 'BANGARANG', 'Ozo charges up before tumbling to a targeted enemy hero. If he reaches the target within 1 second, he deals damage, stuns for 0.5 seconds and flips the target over his ring to behind him. While tumbling, Ozo will knock aside '),
(33, 59, 'IMPALE', 'Lance strikes through his opponents, dealing weapon damage and rooting them in place.', 'GYTHIAN WALL', 'Passive: Lance strafes around the enemy he has most recently attacked. While strafing, he reduces damage from the target’s direction by up to 50%.', 'COMBAT ROLL', 'Lance rolls in the target direction. His next basic attack within 2 seconds will strike quickly, dealing bonus crystal damage.'),
(34, 60, 'VANGUARD', 'Ardan dashes to an ally, damaging and slowing nearby enemies while granting the target a burst of move speed and a 3-second barrier that scales with 50% of Ardan\'s bonus health.', 'BLOOD FOR BLOOD', 'Ardan leaps forward and punches his target. This deals crystal as well as weapon damage (that can crit) and is treated like a basic attack. Blood for Blood can only be activated when Ardan has 100% vengeance and will consume ', 'GAUNTLET', 'Ardan throws down the gauntlet, projecting a perimeter around the target area and gaining full vengeance. Enemies who cross the perimeter are stunned and take crystal damage. Successfully stunning an enemy grants Ardan vengea'),
(35, 61, 'GIFT OF FIRE', 'Adagio heals a target ally and splashes Arcane Fire onto nearby enemies, dealing damage every second. If Adagio targets himself, he\'ll also slow nearby enemies by 70% for 1.5 seconds.', 'AGENT OF WRATH', 'Temporarily increases target ally\'s basic attack power for 6 seconds. Deals 50% more damage to enemies burning with Arcane Fire. If Adagio targets himself, deals an additional 20% more damage.', 'VERSE OF JUDGEMENT', 'Adagio channels for 2 seconds then deals grievous damage to all enemies in a wide, rune-marked ring around him. Enemies burning with Arcane Fire are also stunned. While channeling, Adagio temporarily has +50 Armor & Shield.'),
(36, 62, 'MERCILESS PURSUIT', 'Catherine gains a burst of move speed. Her next basic attack is replaced by a powerful stun attack. Resets basic attack cooldown on activation.', 'STORMGUARD', 'Activates a pulsating bubble that burns nearby enemies and deflects damage above 77 (+7 per level) to nearby enemies. Each deflection reduces the shield duration by 0.5 seconds.', 'BLAST TREMOR', 'Catherine slams the ground, damaging & silencing enemies in a large cone in front of her.');

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
(39, 'KINETIC', 'Carry', 'Landing Plasma Driver grants Kinetic Tracer Shots stacks.\r\nTracer Shots: Kinetic fires a tracer at her target. Tracer damage increases when more stacks are gained.'),
(40, 'TONY', 'Jungle', 'When Tony receives damage, he gains a health barrier for a short duration. Once activated, this ability will go on cooldown.'),
(41, 'CHURNWALKER', 'Roamer', 'Whenever chained victims take damage from any source, Churnwalker regenerates a percentage of that damage as health.'),
(54, 'GWEN', 'Carry', 'Gwen moves swiftly across the map, picking off enemies from a distance. She can shake off negative effects inflicted by her enemies, turning the tables in her favor. Gwen is best played in the lane where she can earn gold and gear up for big fights.'),
(55, 'ALPHA', 'Jungle', 'Alpha hunts and terminates her targets with ruthless precision. No longer bound to the rules of mortality, she engages in battle without fear or caution. Alpha performs well in the jungle and can take down her targets built either weapon or crystal.'),
(56, 'KESTREL', 'Carry', 'Kestrel is an elite Stormguard archer who takes down targets from a distance. When building weapon, she deals rapid, sustained damage and uses stealth to find better footing when enemies get too close. Kestrel’s crystal path affords longer stealth times, which sets up aggressive tactical plays. She’s best in the lane where she can use the protection of her turret to safely collect gold.'),
(57, 'REIM', 'Jungle', 'Reim is a grumpy old winter mage who freezes everyone who crosses him. Though he moves slowly, he deals heavy damage to opponents while being surprisingly resilient himself. He holds his own in the lane, but he’s particularly effective in the jungle where he can go toe-to-toe against most opponents that he can catch.'),
(58, 'OZO', 'Jungle', 'Quick and nimble, Ozo leaps from hero to hero as he bounces around the battlefield. He is at home in the center of a chaotic fight where he can deal large amounts of area-of-effect damage. Remember to build defensive items to maximize the amount of time he can stay in combat.'),
(59, 'LANCE', 'Roamer', 'Lance depends on both his courage and his wits to protect his allies. With his unique polearm-and-shield combat style, he breaks enemy lines and creates opportunities for his friends. Lance can build crystal or utility items to excel in his role as a protector, or he can build weapon items to deal more damage during battle.'),
(60, 'ARDAN', 'Roamer', 'Ardan is a damage-soaking protector who dramatically changes the landscape of teamfights. Able to rescue friends from certain death and turn lost battles around with his powerful terrain-changing ultimate, Ardan brings immense utility to the team'),
(61, 'ADAGIO', 'Roamer', 'Adagio can heal. He can amplify damage. He can stun and nuke the entire enemy team. This master manipulator of large-scale battles brings shines through area-of-effect damage and team-saving abilities.'),
(62, 'CATHERINE', 'Roamer', 'Catherine brings the most reliable stun and disruption skills to teamfights and ganks. Hard to kill and great at chasing, she can secure kills and turn around fights that would otherwise be lost.');

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
  MODIFY `id_DH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
