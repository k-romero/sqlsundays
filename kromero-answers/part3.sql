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