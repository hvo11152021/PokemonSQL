# Pokémon Battle Database - SQL

A SQL Server database project modeling **trainers, Pokémon, battles, and battle locations**.  
The database captures Pokémon ownership, evolutions, and their participation in battles.

## Table of Contents

- [Project Overview](#project-overview)  
- [Features](#features)  
- [Database Structure](#database-structure)  
- [Queries](#queries)  
- [Support](#support)  
- [Contributing](#contributing)  

## Project Overview

This project creates a relational database called **finalProj** to simulate the Pokémon universe.  
It includes trainers, Pokémon, battle types, locations, and Pokémon fight records.  
The database demonstrates **table design, relationships, and SQL queries** for analysis.

## Features

- **Trainer management**: Stores Pokémon trainers with unique IDs.  
- **Pokémon details**: Height, weight, color, type, trainer ownership, and evolution relationships.  
- **Battle system**: Different battle types and locations linked to participating Pokémon.  
- **Fight records**: Tracks Pokémon experience points earned in each fight.  
- **Sample queries**: Retrieve evolved Pokémon, trainer stats, battles by Pokémon, and more.

## Database Structure

- **trainer**  
  Stores trainer IDs and names.  

- **pokemon**  
  Contains Pokémon attributes, trainer ownership, and evolution links.  

- **battle**  
  Defines different battle formats (Full Battle, Double Battle, etc.).  

- **battleLocation**  
  Lists locations where battles occur.  

- **pokemonFight**  
  Joins Pokémon, battles, and locations while recording gained experience points.  

## Queries

- **Query 1**: List Pokémon with their battle names and locations.  
- **Query 2**: Show Pokémon evolution pairs.  
- **Query 3**: Count evolved Pokémon owned per trainer.  
- **Query 4**: Display base/evolved Pokémon with same-type evolutions.  
- **Query 5**: Find the heaviest evolved Pokémon and its base form.  

## Support

If you find a bug or have suggestions, please [open an issue](https://github.com/hvo11152021/PokemonSQL/issues/new).

## Contributing

Please contribute using [GitHub Flow](https://guides.github.com/introduction/flow/).  
Create a branch, add commits, and [open a pull request](https://github.com/hvo11152021/PokemonSQL/compare/).
