SELECT count(CountryCode) as liczba_polskichmiast FROM world.city WHERE CountryCode='POL';

Select*from world.city WHERE Population=(SELECT MAX(Population) FROM world.city WHERE CountryCode='POL');

SELECT SUM(Population) FROM world.city WHERE CountryCode='POL';

UPDATE world.city set Population=1000000 WHERE ID=2928;

SELECT*FROM world.city WHERE Name='Warszawa';

INSERT into world.city(Name, CountryCode, District, Population)

VALUES
('Chrzaszczyzechowice', 'POL', 'Podlaskie',1232),
('Swiezbodzin', 'POL', 'Mazowieckie',65634),
('Karmazynowy Gród', 'POL', 'Zachodnio-Pomorskie',45667),
('Wodka-Zdroj', 'POL', 'Pomorskie',34552),
('Stare Rumunki', 'POL', 'Kujawsko-Pomorskie',1442);

DELETE FROM world.city WHERE ID=2933;

SELECT*FROM world.city WHERE	
 Population>=(SELECT Population FROM world.city WHERE ID=2932) and CountryCode='POL';
 
SELECT*FROM world.city WHERE Population <(Select Population FROM world.city WHERE Name='Bytom') and Population>	
(Select Population FROM world.city WHERE Name='Rybnik') and CountryCode='POL' and District='Slaskie';

SELECT*FROM world.city WHERE District='Slaskie';

Select*FROM world.country WHERE LifeExpectancy>81;

SELECT SUM(Population) FROM world.country WHERE Continent='Europe';

SELECT*FROM world.country WHERE IndepYear=1918;

