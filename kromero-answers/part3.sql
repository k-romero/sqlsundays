--What is each pokemon's primary type?

SELECT * FROM pokemons JOIN types ON pokemons.primary_type = types.id;

-- w/o join
SELECT pokemons.name AS pName, types.name AS tName
FROM pokemons, types
WHERE pokemons.primary_type = types.id;

--w join
SELECT p.name AS Pokemons, t.name AS Primary_Type
FROM types t
JOIN pokemons AS p ON t.id = p.primary_type;

-- with aliases & order
SELECT pokemons.name AS pName, types.name AS tName
FROM pokemons, types
WHERE pokemons.primary_type = types.id
ORDER BY pName ASC;

SELECT pokemons.name AS pName, types.name AS tName
FROM pokemons, types
WHERE pokemons.primary_type = types.id
ORDER BY tName ASC;

--What is Rufflet's secondary type?

--w/o join
SELECT pokemons.name, types.name
FROM pokemons, types
WHERE pokemons.name = 'Rufflet' AND pokemons.secondary_type = types.id;

--w join
SELECT p.name, t.name
FROM types t
JOIN pokemons AS p ON t.id = p.secondary_type
WHERE p.name = 'Rufflet';

--What are the names of the pokemon that belong to the trainer with trainerID 303?

--w/o join
SELECT p.name AS Trainer_303_Pokemons
FROM pokemons p, pokemon_trainer pt
WHERE pt.trainerid = 303
AND p.id = pt.pokemon_id;

--w join
SELECT p.name AS trainer_303_pokemons
FROM pokemon_trainer pt
JOIN pokemons p ON pt.pokemon_id = p.id
WHERE pt.trainerid = 303;

--How many pokemon have a secondary type Poison

--w/o join
SELECT COUNT(*) 
FROM pokemons p, types t
WHERE p.secondary_type = t.id 
AND t.name = 'Poison';

--w join
SELECT COUNT(*)
FROM pokemons p
JOIN types t ON p.secondary_type = t.id
WHERE t.name = 'Poison';

--What are all the primary types and how many pokemon have that type?

--w/o join
SELECT t.name, COUNT(*)
FROM pokemons p, types t
WHERE p.primary_type = t.id
GROUP BY t.name;

--w join
SELECT t.name AS primary_type, COUNT(*) AS pokemon_w_type
FROM pokemons p
JOIN types t ON p.primary_type = t.id
GROUP BY t.name;

--w order
SELECT t.name, COUNT(*)
FROM pokemons p, types t
WHERE p.primary_type = t.id
GROUP BY t.name
ORDER BY COUNT DESC;
