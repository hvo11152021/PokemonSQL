--finalProject
--Gia Hy Vo

USE master;
GO
DROP DATABASE IF EXISTS finalProj;
GO
CREATE DATABASE finalProj;
GO
USE finalProj;
GO

--Trainer Table
CREATE TABLE trainer(
	trainerId INT IDENTITY(1, 1),
	trainerName VARCHAR(50) NOT NULL,
	CONSTRAINT pk_trainer_trainerId PRIMARY KEY (trainerId)
);
INSERT INTO trainer
VALUES
	('Ash'),
	('Brock'),
	('Misty'),
	('Erika'),
	('Alain');
--SELECT * FROM trainer;

--Pokemon Table
CREATE TABLE pokemon(
	pokemonId INT IDENTITY(1, 1),
	pokemonDexNumber SMALLINT,
	pokemonName VARCHAR(20) NOT NULL,
	pokemonHeight SMALLINT,
	pokemonWeight DECIMAL(5, 2),
	pokemonColour VARCHAR(20),
	pokemonType VARCHAR(20),
	trainerId INT NOT NULL,
	evolvesFrom INT,
	CONSTRAINT pk_pokemon_pokemonId PRIMARY KEY (pokemonId),
	CONSTRAINT fk_pokemon_trainer FOREIGN KEY (trainerId) REFERENCES trainer (trainerId),
	CONSTRAINT fk_pokemon_pokemon FOREIGN KEY (evolvesFrom) REFERENCES pokemon (pokemonId)
);
INSERT INTO pokemon
VALUES
	(025,	'Pikachu',		41,		6.5,	'Yellow',	'Electric',	1,	NULL),
	(722,	'Rowlet',		30,		1.5,	'Brown',	'Grass',	1,	NULL),
	(745,	'Lycanroc',		79,		25,		'Gray',		'Rock',		1,	4),
	(744,	'Rockruff',		51,		9.2,	'Brown',	'Rock',		1,	NULL),
	(726,	'Torracat',		71,		25,		'Red',		'Fire',		1,	NULL),
	(470,	'Leafeon',		99,		25.5,	'Green',	'Grass',	1,	14),
	(074,	'Geodude',		41,		20,		'Gray',		'Rock',		2,	NULL),
	(095,	'Onix',			879,	210,	'Gray',		'Rock',		2,	NULL),
	(111,	'Rhyhorn',		99,		115,	'Gray',		'Ground',	2,	NULL),
	(044,	'Gloom',		79,		8.6,	'Brown',	'Grass',	2,	NULL),
	(182,	'Bellossom',	41,		5.8,	'Green',	'Grass',	2,	10),
	(196,	'Espeon',		89,		26.5,	'Purple',	'Psychic',	2,	14),
	(197,	'Umbreon',		99,		27,		'Black',	'Dark',		2,	14),
	(133,	'Eevee',		30,		6.5,	'Brown',	'Normal',	3,	NULL),
	(135,	'Jolteon',		84,		24.5,	'Yellow',	'Electric',	3,	14),
	(136,	'Flareon',		84,		25,		'Orange',	'Fire',		3,	14),
	(120,	'Staryu',		79,		34.5,	'Brown',	'Water',	3,	NULL),
	(121,	'Starmie',		109,	80,		'Silver',	'Water',	3,	17),
	(134,	'Vaporeon',		99,		29,		'Blue',		'Water',	3,	14),
	(114,	'Tangela',		99,		35,		'Blue',		'Grass',	4,	NULL),
	(045,	'Vileplume',	119,	18.6,	'Pink',		'Grass',	4,	10),
	(189,	'Jumpluff',		79,		3,		'Purple',	'Grass',	4,	NULL),
	(005,	'Charmeleon',	109,	19,		'Red',		'Fire',		5,	NULL),
	(006,	'Charizard',	170,	90.5,	'Orange',	'Fire',		5,	23),
	(376,	'Metagross',	160,	550,	'Gray',		'Steel',	5,	NULL),
	(248,	'Tyranitar',	201,	202,	'Green',	'Rock',		5,	NULL),
	(461,	'Weavile',		109,	34,		'Purple',	'Dark',		5,	NULL);
--SELECT * FROM pokemon;

--Battle Table
CREATE TABLE battle(
	battleId INT IDENTITY(1, 1),
	battleName VARCHAR(50) NOT NULL,
	CONSTRAINT pk_battle_battleId PRIMARY KEY (battleId)
);
INSERT INTO battle
VALUES
	('Full Battle'),
	('Double Battle'),
	('Rotation Battle'),
	('Team Battle'),
	('Sky Battle'),
	('Battle Royal');
--SELECT * FROM battle;

--Battle Location
CREATE TABLE battleLocation(
	battleLocationId INT IDENTITY(1, 1),
	battleLocationName VARCHAR(50) NOT NULL,
	CONSTRAINT pk_battleLocation_battleLocationId PRIMARY KEY (battleLocationId)
);
INSERT INTO battleLocation
VALUES
	('Azure Bay'),
	('Battle Royal Dome'),
	('Driftveil City'),
	('Mt. Silver'),
	('Pokemon Colosseum'),
	('Summer Camp');
--SELECT * FROM battleLocation;

--Pokemon Fight Table
CREATE TABLE pokemonFight(
	pokemonFightId INT IDENTITY(1, 1),
	pokemonId INT NOT NULL,
	battleId INT NOT NULL,
	battleLocationId INT NOT NULL,
	pokemonFightExpPoint SMALLINT,
	CONSTRAINT pk_pokemonFight_pokemonFightId PRIMARY KEY (pokemonFightId),
	CONSTRAINT fk_pokemonFight_pokemon FOREIGN KEY (pokemonId) REFERENCES pokemon (pokemonId),
	CONSTRAINT fk_pokemonFight_battle FOREIGN KEY (battleId) REFERENCES battle (battleId),
	CONSTRAINT fk_pokemonFight_battleLocation FOREIGN KEY (battleLocationId) REFERENCES battleLocation (battleLocationId)
);
INSERT INTO pokemonFight
VALUES
	(1,		4,	6,	50),
	(1,		1,	4,	75),
	(1,		3,	3,	35),
	(2,		5,	1,	65),
	(3,		4,	6,	95),
	(3,		6,	2,	80),
	(5,		6,	2,	35),
	(5,		1,	4,	100),
	(5,		2,	5,	80),
	(7,		4,	6,	75),
	(7,		6,	2,	35),
	(8,		3,	3,	80),
	(8,		4,	6,	50),
	(8,		2,	5,	80),
	(9,		2,	5,	45),
	(9,		4,	6,	65),
	(17,	3,	3,	65),
	(18,	2,	5,	30),
	(18,	4,	6,	75),
	(20,	1,	4,	30),
	(20,	3,	3,	55),
	(20,	4,	6,	45),
	(21,	4,	6,	45),
	(22,	5,	1,	40),
	(22,	2,	5,	55),
	(22,	6,	2,	40),
	(24,	1,	4,	55),
	(24,	6,	2,	35),
	(24,	4,	6,	70),
	(24,	5,	1,	70),
	(25,	4,	6,	85),
	(25,	6,	2,	80),
	(25,	2,	5,	60),
	(26,	1,	4,	100),
	(26,	6,	2,	70),
	(27,	1,	4,	90),
	(27,	4,	6,	80);
--SELECT * FROM pokemonFight;

--Query 1:
SELECT 
	pokemonName, 
	pokemonType, 
	CASE
		WHEN battleName IS NULL THEN 'None'
	ELSE battleName END AS [Battle Name],
	CASE
		WHEN battleLocationName IS NULL THEN 'None'
	ELSE battleLocationName END AS [Battle Location]
FROM pokemon FULL JOIN pokemonFight ON pokemon.pokemonId = pokemonFight.pokemonId
			 FULL JOIN battle ON pokemonFight.battleId = battle.battleId
			 FULL JOIN battleLocation ON pokemonFight.battleLocationId = battleLocation.battleLocationId
ORDER BY pokemonName, battleName;

--Query 2:
SELECT
	e.pokemonName AS [Base],
	b.pokemonName AS [Evolved]
FROM pokemon b JOIN pokemon e ON b.evolvesFrom = e.pokemonId
ORDER BY e.pokemonName, b.pokemonName;

--Query 3:
SELECT trainerName, COUNT(e.pokemonId) AS [Number of Evolved Pokemon Owned]
FROM trainer INNER JOIN pokemon e ON trainer.trainerId = e.trainerId INNER JOIN pokemon b ON e.evolvesFrom = b.pokemonId
GROUP BY trainerName;

--Query 4:
SELECT
	CONCAT(e.pokemonName, ' (' , e.pokemonColour, ')') AS [Base],
	CONCAT(b.pokemonName, ' (' , b.pokemonColour, ')') AS [Evolved],
	b.pokemonType AS [Type]
FROM pokemon b JOIN pokemon e ON b.evolvesFrom = e.pokemonId
WHERE b.pokemonType = e.pokemonType

--Query 5:
SELECT TOP 1
	b.pokemonName AS [Pokemon Name],
	MAX(b.pokemonWeight) AS [Weight],
	e.pokemonName AS [Evolved From]
FROM pokemon b JOIN pokemon e ON b.evolvesFrom = e.pokemonId
GROUP BY b.pokemonName, e.pokemonName
ORDER BY e.pokemonName, b.pokemonName;