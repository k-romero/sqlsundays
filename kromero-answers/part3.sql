SELECT * FROM pokemons JOIN types ON pokemons.primary_type = types.id;

-- w/o join
SELECT pokemons.name AS pName, types.name AS tName
FROM pokemons, types
WHERE pokemons.primary_type = types.id;

-- with aliases & order
SELECT pokemons.name AS pName, types.name AS tName
FROM pokemons, types
WHERE pokemons.primary_type = types.id
ORDER BY pName ASC;