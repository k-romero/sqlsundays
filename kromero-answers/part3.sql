SELECT * FROM pokemons JOIN types ON pokemons.primary_type = types.id;

-- w/o join
SELECT pokemons.name, types.name
FROM pokemons, types
WHERE pokemons.primary_type = types.id;
