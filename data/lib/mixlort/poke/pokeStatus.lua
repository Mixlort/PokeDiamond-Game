-- offense = offense que ganha por level
-- level = level min pra usar o poke / offense base
-- defense = defense por level
-- agility = speed base dos pokes
-- specialattack = special attack que ganha por level
-- exp = exp que d? cada level que tem (somada a exp base, no xml do poke)                 
-- vitality = vida que o poke ganha pra cada vitality que tem

pokes = {          --alterado v1.8 \/\/ toda a tabela, recebeu um novo 'atributo', wildLvl... --rebalanceado by danonee

["Regigigas"] = {offense = 50.0, defense = 100.0, specialattack = 40.0, specialdefense = 110.0, vitality = 1100.0, agility = 170, exp = 250, level = 100, wildLvl = 200, type = "normal", type2 = "leaf"},

["Bulbasaur"] = {offense = 4.5, defense = 4.9, specialattack = 6.5, specialdefense = 6.5, vitality = 4.9, agility = 90, exp = 64, level = 5, wildLvl = 25, type = "grass", type2 = "poison"},

["Shiny Leafeon"] = {offense = 11.0, defense = 13.0, specialattack = 6.0, specialdefense = 6.5, vitality = 6.5, agility = 180, exp = 141, level = 40, wildLvl = 45, type = "grass", type2 = "poison"},

["Leafeon"] = {offense = 11.0, defense = 13.0, specialattack = 6.0, specialdefense = 6.5, vitality = 6.5, agility = 180, exp = 141, level = 40, wildLvl = 45, type = "grass", type2 = "poison"},

["Ivysaur"] = {offense = 6.2, defense = 6.3, specialattack = 8.0, specialdefense = 8.0, vitality = 6.0, agility = 120, exp = 141, level = 40, wildLvl = 45, type = "grass", type2 = "poison"},

["Venusaur"] = {offense = 8.2, defense = 8.3, specialattack = 10.0, specialdefense = 10.0, vitality = 8.0, agility = 160, exp = 208, level = 85, wildLvl = 90, type = "grass", type2 = "poison"},

["Charmander"] = {offense = 5.2, defense = 4.3, specialattack = 6.0, specialdefense = 5.0, vitality = 3.9, agility = 185, exp = 65, level = 5, wildLvl = 20, type = "fire", type2 = "no type"},

["Mega Charizard"] = {offense = 7.0, defense = 6.8, specialattack = 8.0, specialdefense = 6.5, vitality = 4.5, agility = 220, exp = 209, level = 800, wildLvl = 90, type = "fire", type2 = "flying"},

["Charmeleon"] = {offense = 6.4, defense = 5.8, specialattack = 8.0, specialdefense = 6.5, vitality = 5.8, agility = 200, exp = 142, level = 40, wildLvl = 45, type = "fire", type2 = "no type"},

["Charizard"] = {offense = 8.4, defense = 7.8, specialattack = 10.9, specialdefense = 8.5, vitality = 7.8, agility = 220, exp = 209, level = 85, wildLvl = 90, type = "fire", type2 = "flying"},

["Squirtle"] = {offense = 4.8, defense = 6.5, specialattack = 5.0, specialdefense = 6.4, vitality = 4.4, agility = 163, exp = 66, level = 5, wildLvl = 25, type = "water", type2 = "no type"},

["Wartortle"] = {offense = 6.3, defense = 8.0, specialattack = 6.5, specialdefense = 8.0, vitality = 5.9, agility = 178, exp = 143, level = 40, wildLvl = 45, type = "water", type2 = "no type"},

["Blastoise"] = {offense = 8.3, defense = 10.0, specialattack = 8.5, specialdefense = 10.5, vitality = 7.9, agility = 198, exp = 210, level = 85, wildLvl = 90, type = "water", type2 = "no type"},

["Mega Blastoise"] = {offense = 10.0, defense = 12.5, specialattack = 9.5, specialdefense = 2.0, vitality = 8.5, agility = 198, exp = 210, level = 120, wildLvl = 90, type = "water", type2 = "no type"},

["Caterpie"] = {offense = 3.0, defense = 3.5, specialattack = 2.0, specialdefense = 2.0, vitality = 4.5, agility = 165, exp = 53, level = 5, wildLvl = 5, type = "bug", type2 = "no type"},

["Metapod"] = {offense = 2.0, defense = 5.5, specialattack = 2.5, specialdefense = 2.5, vitality = 5.0, agility = 150, exp = 72, level = 15, wildLvl = 15, type = "bug", type2 = "no type"},

["Butterfree"] = {offense = 4.5, defense = 5.0, specialattack = 9.0, specialdefense = 8.0, vitality = 6.0, agility = 190, exp = 160, level = 30, wildLvl = 35, type = "bug", type2 = "flying"},

["Weedle"] = {offense = 3.5, defense = 3.0, specialattack = 2.0, specialdefense = 2.0, vitality = 4.0, agility = 170, exp = 52, level = 5, wildLvl = 5, type = "bug", type2 = "poison"},

["Kakuna"] = {offense = 2.5, defense = 5.0, specialattack = 2.5, specialdefense = 2.5, vitality = 4.5, agility = 155, exp = 120, level = 15, wildLvl = 15, type = "bug", type2 = "poison"},

["Beedrill"] = {offense = 9.0, defense = 4.0, specialattack = 4.5, specialdefense = 8.0, vitality = 6.5, agility = 195, exp = 159, level = 30, wildLvl = 30, type = "bug", type2 = "poison"},

["Pidgey"] = {offense = 4.5, defense = 4.0, specialattack = 3.5, specialdefense = 3.5, vitality = 4.0, agility = 176, exp = 55, level = 5, wildLvl = 5, type = "normal", type2 = "flying"},

["Pidgeotto"] = {offense = 6.0, defense = 5.5, specialattack = 5.0, specialdefense = 5.0, vitality = 6.3, agility = 191, exp = 113, level = 20, wildLvl = 25, type = "normal", type2 = "flying"},

["Pidgeot"] = {offense = 8.0, defense = 7.5, specialattack = 7.0, specialdefense = 7.0, vitality = 8.3, agility = 101, exp = 112, level = 75, wildLvl = 80, type = "normal", type2 = "flying"},

["Rattata"] = {offense = 5.6, defense = 3.5, specialattack = 2.5, specialdefense = 3.5, vitality = 3.0, agility = 192, exp = 10, level = 5, wildLvl = 5, type = "normal", type2 = "no type"},

["Raticate"] = {offense = 8.1, defense = 6.0, specialattack = 5.0, specialdefense = 7.0, vitality = 5.5, agility = 97, exp = 116, level = 25, wildLvl = 30, type = "normal", type2 = "no type"},

["Spearow"] = {offense = 6.0, defense = 3.0, specialattack = 3.1, specialdefense = 3.1, vitality = 4.0, agility = 70, exp = 58, level = 10, wildLvl = 10, type = "normal", type2 = "flying"},

["Fearow"] = {offense = 9.0, defense = 6.5, specialattack = 6.1, specialdefense = 6.1, vitality = 6.5, agility = 100, exp = 112, level = 50, wildLvl = 55, type = "normal", type2 = "flying"},

["Ekans"] = {offense = 6.0, defense = 4.4, specialattack = 4.0, specialdefense = 5.4, vitality = 3.5, agility = 55, exp = 62, level = 15, wildLvl = 15, type = "poison", type2 = "no type"},

["Arbok"] = {offense = 6.0, defense = 6.9, specialattack = 7.5, specialdefense = 7.9, vitality = .6, agility = 80, exp = 117, level = 35, wildLvl = 40, type = "poison", type2 = "no type"},

["Pikachu"] = {offense = 5.5, defense = 4.0, specialattack = 5.0, specialdefense = 5.0, vitality = 3.5, agility = 210, exp = 82, level = 40, wildLvl = 45, type = "electric", type2 = "no type"},

["Shiny Pikachu"] = {offense = 9.5, defense = 8.0, specialattack = 10.0, specialdefense = 8.0, vitality = 7.5, agility = 210, exp = 82, level = 40, wildLvl = 90, type = "electric", type2 = "no type"},

["Pikachu Super"] = {offense = 7.5, defense = 6.0, specialattack = 7.5, specialdefense = 8.0, vitality = 5.5, agility = 210, exp = 5, level = 50, wildLvl = 100, type = "electric", type2 = "no type"},

["Raichu"] = {offense = 9.0, defense = 5.5, specialattack = 9.0, specialdefense = 8.0, vitality = 6.0, agility = 220, exp = 112, level = 50, wildLvl = 90, type = "electric", type2 = "no type"},

["Sandshrew"] = {offense = 7.5, defense = 8.5, specialattack = 2.0, specialdefense = 3.0, vitality = 5.0, agility = 40, exp = 93, level = 20, wildLvl = 20, type = "ground", type2 = "no type"},

["Sandslash"] = {offense = 10.0, defense = 11.0, specialattack = 4.5, specialdefense = 5.5, vitality = 7.5, agility = 65, exp = 113, level = 65, wildLvl = 65, type = "ground", type2 = "no type"},

["Shiny Sandslash"] = {offense = 19.0, defense = 20.0, specialattack = 6.0, specialdefense = 9.5, vitality = 13.0, agility = 65, exp = 113, level = 65, wildLvl = 65, type = "ground", type2 = "no type"},

["Nidoran Female"] = {offense = 4.7, defense = 5.2, specialattack = 4.0, specialdefense = 4.0, vitality = 5.5, agility = 101, exp = 59, level = 10, wildLvl = 10, type = "poison", type2 = "no type"},

["Nidorina"] = {offense = 6.2, defense = 6.7, specialattack = 5.5, specialdefense = 5.5, vitality = 7.0, agility = 106, exp = 59, level = 30, wildLvl = 35, type = "poison", type2 = "no type"},

["Nidoqueen"] = {offense = 9.2, defense = 8.7, specialattack = 7.5, specialdefense = 8.5, vitality = 9.0, agility = 196, exp = 194, level = 65, wildLvl = 70, type = "poison", type2 = "ground"},

["Nidoran Male"] = {offense = 5.7, defense = 4.0, specialattack = 4.0, specialdefense = 4.0, vitality = 4.6, agility = 170, exp = 60, level = 10, wildLvl = 10, type = "poison", type2 = "no type"},

["Nidorino"] = {offense = 7.2, defense = 5.7, specialattack = 5.5, specialdefense = 5.5, vitality = 6.1, agility = 185, exp = 118, level = 30, wildLvl = 35, type = "poison", type2 = "no type"},

["Nidoking"] = {offense = 10.2, defense = 7.7, specialattack = 8.5, specialdefense = 7.5, vitality = 8.1, agility = 205, exp = 195, level = 65, wildLvl = 70, type = "poison", type2 = "ground"},

["Clefairy"] = {offense = 4.5, defense = 4.8, specialattack = 6.0, specialdefense = 6.5, vitality = 7.0, agility = 155, exp = 68, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Clefable"] = {offense = 7.0, defense = 7.3, specialattack = 9.5, specialdefense = 9.0, vitality = 6.0, agility = 180, exp = 129, level = 65, wildLvl = 65, type = "normal", type2 = "no type"},

["Shiny Clefable"] = {offense = 12.0, defense = 12.0, specialattack = 16.5, specialdefense = 12.0, vitality = 11.0, agility = 340, exp = 229, level = 1, wildLvl = 65, type = "normal", type2 = "no type"},

["Vulpix"] = {offense = 4.1, defense = 4.0, specialattack = 5.0, specialdefense = 6.5, vitality = 3.8, agility = 185, exp = 63, level = 15, wildLvl = 15, type = "fire", type2 = "no type"},

["Uxie"] = {offense = 2.2, defense = 2.2, specialattack = 2.2, specialdefense = 20.0, vitality = 2.2, agility = 205, exp = 64, level = 100, wildLvl = 100, type = "flying", type2 = "dragon"},

["Ninetales"] = {offense = 7.6, defense = 7.5, specialattack = 8.1, specialdefense = 10.0, vitality = 7.3, agility = 220, exp = 178, level = 70, wildLvl = 70, type = "fire", type2 = "no type"},

["Jigglypuff"] = {offense = 4.5, defense = 2.0, specialattack = 4.5, specialdefense = 2.5, vitality = 11.5, agility = 140, exp = 76, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Wigglytuff"] = {offense = 7.0, defense = 4.5, specialattack = 8.5, specialdefense = 5.0, vitality = 5.0, agility = 165, exp = 109, level = 65, wildLvl = 65, type = "normal", type2 = "no type"},

["Shiny Wigglytuff"] = {offense = 13.0, defense = 19.0, specialattack = 16.0, specialdefense = 8.0, vitality = 9.0, agility = 240, exp = 229, level = 1, wildLvl = 65, type = "normal", type2 = "no type"},

["Zubat"] = {offense = 4.5, defense = 3.5, specialattack = 3.0, specialdefense = 4.0, vitality = 4.0, agility = 175, exp = 54, level = 10, wildLvl = 10, type = "poison", type2 = "flying"},

["Golbat"] = {offense = 8.0, defense = 7.0, specialattack = 6.5, specialdefense = 7.5, vitality = 7.5, agility = 210, exp = 171, level = 35, wildLvl = 35, type = "poison", type2 = "flying"},

["Oddish"] = {offense = 5.0, defense = 5.5, specialattack = 7.5, specialdefense = 6.5, vitality = 4.5, agility = 150, exp = 78, level = 5, wildLvl = 5, type = "grass", type2 = "poison"},

["Gloom"] = {offense = 6.5, defense = 7.0, specialattack = 8.5, specialdefense = 7.5, vitality = 6.0, agility = 160, exp = 132, level = 25, wildLvl = 25, type = "grass", type2 = "poison"},

["Shiny Gloom"] = {offense = 11.0, defense = 12.0, specialattack = 11.5, specialdefense = 9.0, vitality = 9.0, agility = 160, exp = 132, level = 25, wildLvl = 25, type = "grass", type2 = "poison"},

["Vileplume"] = {offense = 8.0, defense = 8.5, specialattack = 11.0, specialdefense = 5.5, vitality = 7.5, agility = 170, exp = 184, level = 50, wildLvl = 60, type = "grass", type2 = "poison"},

["Paras"] = {offense = 7.0, defense = 5.5, specialattack = 4.5, specialdefense = 8.0, vitality = 3.5, agility = 145, exp = 70, level = 5, wildLvl = 5, type = "bug", type2 = "grass"},

["Parasect"] = {offense = 9.5, defense = 8.0, specialattack = 6.0, specialdefense = 5.5, vitality = 6.0, agility = 150, exp = 128, level = 50, wildLvl = 50, type = "bug", type2 = "grass"},

["Venonat"] = {offense = 5.5, defense = 5.0, specialattack = 4.0, specialdefense = 7.5, vitality = 6.0, agility = 165, exp = 75, level = 20, wildLvl = 20, type = "bug", type2 = "poison"},

["Venomoth"] = {offense = 6.5, defense = 6.0, specialattack = 9.0, specialdefense = 4.5, vitality = 7.0, agility = 210, exp = 138, level = 50, wildLvl = 50, type = "bug", type2 = "poison"},

["Diglett"] = {offense = 5.5, defense = 4.5, specialattack = 3.5, specialdefense = 7.0, vitality = 1.0, agility = 215, exp = 81, level = 10, wildLvl = 10, type = "ground", type2 = "no type"},

["Dugtrio"] = {offense = 8.0, defense = 5.0, specialattack = 5.0, specialdefense = 4.0, vitality = 3.5, agility = 240, exp = 153, level = 35, wildLvl = 35, type = "ground", type2 = "no type"},

["Meowth"] = {offense = 4.5, defense = 3.5, specialattack = 4.0, specialdefense = 6.5, vitality = 4.0, agility = 210, exp = 69, level = 15, wildLvl = 15, type = "normal", type2 = "no type"},

["Persian"] = {offense = 7.0, defense = 6.0, specialattack = 6.5, specialdefense = 5.0, vitality = 6.5, agility = 235, exp = 148, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Psyduck"] = {offense = 5.2, defense = 4.8, specialattack = 6.5, specialdefense = 8.0, vitality = 5.0, agility = 175, exp = 80, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Golduck"] = {offense = 8.2, defense = 7.8, specialattack = 9.5, specialdefense = 4.5, vitality = 8.0, agility = 205, exp = 174, level = 55, wildLvl = 55, type = "water", type2 = "no type"},

["Mankey"] = {offense = 8.0, defense = 3.5, specialattack = 3.5, specialdefense = 7.0, vitality = 4.0, agility = 190, exp = 74, level = 10, wildLvl = 10, type = "fighting", type2 = "no type"},

["Primeape"] = {offense = 10.5, defense = 6.0, specialattack = 6.0, specialdefense = 5.0, vitality = 6.5, agility = 215, exp = 149, level = 50, wildLvl = 50, type = "fighting", type2 = "no type"},

["Shiny Primeape"] = {offense = 20.0, defense = 11.0, specialattack = 11.0, specialdefense = 8.0, vitality = 11.5, agility = 215, exp = 149, level = 50, wildLvl = 50, type = "fighting", type2 = "no type"},

["Growlithe"] = {offense = 7.0, defense = 4.5, specialattack = 7.0, specialdefense = 5.0, vitality = 5.5, agility = 180, exp = 91, level = 25, wildLvl = 25, type = "fire", type2 = "no type"},

["Arcanine"] = {offense = 11.0, defense = 8.0, specialattack = 10.0, specialdefense = 8.0, vitality = 9.0, agility = 215, exp = 213, level = 80, wildLvl = 80, type = "fire", type2 = "no type"},

["Poliwag"] = {offense = 5.0, defense = 4.0, specialattack = 4.0, specialdefense = 4.0, vitality = 4.0, agility = 210, exp = 77, level = 5, wildLvl = 5, type = "water", type2 = "no type"},

["Poliwhirl"] = {offense = 6.5, defense = 6.5, specialattack = 5.0, specialdefense = 5.0, vitality = 6.5, agility = 210, exp = 131, level = 25, wildLvl = 25, type = "water", type2 = "no type"},

["Poliwrath"] = {offense = 9.5, defense = 9.5, specialattack = 7.0, specialdefense = 9.0, vitality = 9.0, agility = 190, exp = 185, level = 65, wildLvl = 65, type = "water", type2 = "fighting"},

["Abra"] = {offense = 2.0, defense = 1.5, specialattack = 10.5, specialdefense = 5.5, vitality = 2.5, agility = 210, exp = 75, level = 15, wildLvl = 15, type = "psychic", type2 = "no type"},

["Kadabra"] = {offense = 3.5, defense = 3.0, specialattack = 12.0, specialdefense = 7.0, vitality = 4.0, agility = 225, exp = 145, level = 45, wildLvl = 45, type = "psychic", type2 = "no type"},

["Mega Alakazam"] = {offense = 7.0, defense = 6.5, specialattack = 17.0, specialdefense = 9.5, vitality = 7.0, agility = 240, exp = 186, level = 120, wildLvl = 80, type = "psychic", type2 = "no type"},

["Alakazam"] = {offense = 5.0, defense = 4.5, specialattack = 13.5, specialdefense = 9.5, vitality = 5.5, agility = 240, exp = 186, level = 80, wildLvl = 80, type = "psychic", type2 = "no type"},

["Machop"] = {offense = 8.0, defense = 5.0, specialattack = 3.5, specialdefense = 3.5, vitality = 7.0, agility = 155, exp = 75, level = 20, wildLvl = 20, type = "fighting", type2 = "no type"},

["Machoke"] = {offense = 10.0, defense = 7.0, specialattack = 5.0, specialdefense = 6.0, vitality = 8.0, agility = 165, exp = 146, level = 45, wildLvl = 45, type = "fighting", type2 = "no type"},

["Machamp"] = {offense = 13.0, defense = 8.0, specialattack = 6.5, specialdefense = 8.5, vitality = 9.0, agility = 175, exp = 193, level = 70, wildLvl = 70, type = "fighting", type2 = "no type"},

["Shiny Machamp"] = {offense = 29.0, defense = 12.0, specialattack = 12.5, specialdefense = 11.0, vitality = 18.0, agility = 175, exp = 193, level = 70, wildLvl = 70, type = "fighting", type2 = "no type"},

["Bellsprout"] = {offense = 7.5, defense = 3.5, specialattack = 7.0, specialdefense = 3.0, vitality = 5.0, agility = 160, exp = 84, level = 5, wildLvl = 5, type = "grass", type2 = "poison"},

["Weepinbell"] = {offense = 9.0, defense = 5.0, specialattack = 8.5, specialdefense = 4.5, vitality = 6.5, agility = 175, exp = 151, level = 25, wildLvl = 25, type = "grass", type2 = "poison"},

["Victreebel"] = {offense = 10.5, defense = 6.5, specialattack = 10.0, specialdefense = 7.0, vitality = 8.0, agility = 195, exp = 191, level = 50, wildLvl = 50, type = "grass", type2 = "poison"},

["Tentacool"] = {offense = 4.0, defense = 3.5, specialattack = 5.0, specialdefense = 10.0, vitality = 4.0, agility = 190, exp = 105, level = 15, wildLvl = 15, type = "water", type2 = "poison"},

["Tentacruel"] = {offense = 7.0, defense = 6.5, specialattack = 8.0, specialdefense = 12.0, vitality = 8.0, agility = 220, exp = 101, level = 75, wildLvl = 75, type = "water", type2 = "poison"},

["Geodude"] = {offense = 8.0, defense = 10.0, specialattack = 3.0, specialdefense = 3.0, vitality = 4.0, agility = 140, exp = 73, level = 15, wildLvl = 15, type = "rock", type2 = "ground"},

["Graveler"] = {offense = 9.5, defense = 11.5, specialattack = 4.5, specialdefense = 4.5, vitality = 5.5, agility = 155, exp = 134, level = 40, wildLvl = 40, type = "rock", type2 = "ground"},

["Golem"] = {offense = 12.0, defense = 13.0, specialattack = 5.5, specialdefense = 6.5, vitality = 8.0, agility = 165, exp = 177, level = 70, wildLvl = 70, type = "rock", type2 = "ground"},

["Ponyta"] = {offense = 8.5, defense = 5.5, specialattack = 6.5, specialdefense = 6.5, vitality = 5.0, agility = 210, exp = 152, level = 20, wildLvl = 20, type = "fire", type2 = "no type"},

["Rapidash"] = {offense = 10.0, defense = 7.0, specialattack = 8.0, specialdefense = 8.0, vitality = 6.5, agility = 225, exp = 192, level = 50, wildLvl = 50, type = "fire", type2 = "no type"},

["Slowpoke"] = {offense = 6.5, defense = 6.5, specialattack = 4.0, specialdefense = 4.0, vitality = 9.0, agility = 135, exp = 99, level = 15, wildLvl = 15, type = "water", type2 = "psychic"},

["Slowbro"] = {offense = 7.5, defense = 11.0, specialattack = 10.0, specialdefense = 8.0, vitality = 9.5, agility = 150, exp = 164, level = 45, wildLvl = 45, type = "water", type2 = "psychic"},

["Magnemite"] = {offense = 3.5, defense = 7.0, specialattack = 9.5, specialdefense = 5.5, vitality = 5.0, agility = 165, exp = 89, level = 15, wildLvl = 15, type = "electric", type2 = "steel"},

["Magneton"] = {offense = 6.0, defense = 9.5, specialattack = 12.0, specialdefense = 7.0, vitality = 5.0, agility = 190, exp = 161, level = 40, wildLvl = 40, type = "electric", type2 = "steel"},

["Farfetch'd"] = {offense = 6.5, defense = 5.5, specialattack = 5.8, specialdefense = 6.2, vitality = 5.2, agility = 180, exp = 94, level = 40, wildLvl = 40, type = "normal", type2 = "flying"},

["Doduo"] = {offense = 8.5, defense = 4.5, specialattack = 3.5, specialdefense = 3.5, vitality = 3.5, agility = 195, exp = 96, level = 15, wildLvl = 15, type = "normal", type2 = "flying"},

["Dodrio"] = {offense = 11.0, defense = 7.0, specialattack = 6.0, specialdefense = 6.0, vitality = 6.0, agility = 220, exp = 158, level = 45, wildLvl = 45, type = "normal", type2 = "flying"},

["Seel"] = {offense = 4.5, defense = 5.5, specialattack = 4.5, specialdefense = 7.0, vitality = 6.5, agility = 165, exp = 100, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Dewgong"] = {offense = 7.0, defense = 8.0, specialattack = 7.0, specialdefense = 9.5, vitality = 9.0, agility = 190, exp = 176, level = 65, wildLvl = 65, type = "water", type2 = "ice"},

["Grimer"] = {offense = 8.0, defense = 5.0, specialattack = 4.0, specialdefense = 5.0, vitality = 8.0, agility = 145, exp = 90, level = 15, wildLvl = 15, type = "poison", type2 = "no type"},

["Muk"] = {offense = 10.5, defense = 7.5, specialattack = 6.5, specialdefense = 10.0, vitality = 10.5, agility = 170, exp = 157, level = 35, wildLvl = 35, type = "poison", type2 = "no type"},

["Shellder"] = {offense = 6.5, defense = 10.0, specialattack = 4.5, specialdefense = 2.5, vitality = 3.0, agility = 160, exp = 97, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Cloyster"] = {offense = 9.5, defense = 18.0, specialattack = 8.5, specialdefense = 4.5, vitality = 5.0, agility = 190, exp = 203, level = 60, wildLvl = 60, type = "water", type2 = "ice"},

["Gastly"] = {offense = 3.5, defense = 3.0, specialattack = 10.0, specialdefense = 3.5, vitality = 3.0, agility = 200, exp = 95, level = 20, wildLvl = 20, type = "ghost", type2 = "poison"},

["Mega Elder"] = {offense = 7.0, defense = 7.0, specialattack = 7.0, specialdefense = 9.0, vitality = 7.0, agility = 220, exp = 209, level = 120, wildLvl = 90, type = "fire", type2 = "flying"},

["Haunter"] = {offense = 5.0, defense = 4.5, specialattack = 11.5, specialdefense = 5.5, vitality = 4.5, agility = 215, exp = 126, level = 45, wildLvl = 45, type = "ghost", type2 = "poison"},

["Mega Gengar"] = {offense = 6.5, defense = 7.5, specialattack = 13.0, specialdefense = 7.5, vitality = 6.0, agility = 230, exp = 190, level = 800, wildLvl = 80, type = "ghost", type2 = "poison"},

["Gengar"] = {offense = 6.5, defense = 6.0, specialattack = 13.0, specialdefense = 7.5, vitality = 6.0, agility = 230, exp = 190, level = 80, wildLvl = 80, type = "ghost", type2 = "poison"},

["Spiritomb"] = {offense = 14.5, defense = 14.5, specialattack = 14.5, specialdefense = 14.5, vitality = 14.5, agility = 230, exp = 190, level = 80, wildLvl = 80, type = "ghost", type2 = "poison"},

["Shiny Spiritomb"] = {offense = 14.5, defense = 14.5, specialattack = 14.5, specialdefense = 14.5, vitality = 14.5, agility = 230, exp = 190, level = 80, wildLvl = 80, type = "ghost", type2 = "poison"},

["Chandelure"] = {offense = 14.5, defense = 9.0, specialattack = 14.5, specialdefense = 10.0, vitality = 13.0, agility = 230, exp = 190, level = 80, wildLvl = 80, type = "ghost", type2 = "poison"},

["Onix"] = {offense = 4.5, defense = 16.0, specialattack = 3.0, specialdefense = 4.5, vitality = 3.5, agility = 190, exp = 108, level = 50, wildLvl = 50, type = "rock", type2 = "ground"},

["Drowzee"] = {offense = 4.8, defense = 4.5, specialattack = 4.3, specialdefense = 9.0, vitality = 6.0, agility = 162, exp = 102, level = 25, wildLvl = 25, type = "psychic", type2 = "no type"},

["Hypno"] = {offense = 7.3, defense = 7.0, specialattack = 7.3, specialdefense = 11.5, vitality = 8.5, agility = 197, exp = 165, level = 55, wildLvl = 55, type = "psychic", type2 = "no type"},

["Krabby"] = {offense = 10.5, defense = 9.0, specialattack = 2.5, specialdefense = 2.5, vitality = 3.0, agility = 170, exp = 115, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Kingler"] = {offense = 13.0, defense = 11.5, specialattack = 5.0, specialdefense = 5.0, vitality = 5.5, agility = 195, exp = 206, level = 40, wildLvl = 40, type = "water", type2 = "no type"},

["Voltorb"] = {offense = 3.0, defense = 5.0, specialattack = 5.5, specialdefense = 5.5, vitality = 4.0, agility = 220, exp = 103, level = 10, wildLvl = 10, type = "electric", type2 = "no type"},

["Electrode"] = {offense = 5.0, defense = 7.0, specialattack = 8.0, specialdefense = 8.0, vitality = 6.0, agility = 260, exp = 150, level = 35, wildLvl = 35, type = "electric", type2 = "no type"},

["Exeggcute"] = {offense = 4.0, defense = 8.0, specialattack = 6.0, specialdefense = 4.5, vitality = 6.0, agility = 160, exp = 98, level = 10, wildLvl = 10, type = "grass", type2 = "psychic"},

["Exeggutor"] = {offense = 9.5, defense = 8.5, specialattack = 12.5, specialdefense = 6.5, vitality = 9.5, agility = 175, exp = 212, level = 80, wildLvl = 80, type = "grass", type2 = "psychic"},

["Cubone"] = {offense = 5.0, defense = 9.5, specialattack = 4.0, specialdefense = 5.0, vitality = 5.0, agility = 155, exp = 87, level = 20, wildLvl = 20, type = "ground", type2 = "no type"},

["Marowak"] = {offense = 8.0, defense = 11.0, specialattack = 5.0, specialdefense = 8.0, vitality = 6.0, agility = 165, exp = 124, level = 55, wildLvl = 55, type = "ground", type2 = "no type"},

["Hitmonlee"] = {offense = 12.0, defense = 5.3, specialattack = 3.5, specialdefense = 11.0, vitality = 5.0, agility = 207, exp = 139, level = 60, wildLvl = 60, type = "fighting", type2 = "no type"},

["Hitmonchan"] = {offense = 10.5, defense = 7.9, specialattack = 3.5, specialdefense = 11.0, vitality = 5.0, agility = 196, exp = 140, level = 60, wildLvl = 60, type = "fighting", type2 = "no type"},

["Lickitung"] = {offense = 5.5, defense = 7.5, specialattack = 6.0, specialdefense = 7.5, vitality = 9.0, agility = 150, exp = 127, level = 55, wildLvl = 55, type = "normal", type2 = "no type"},

["Koffing"] = {offense = 6.5, defense = 9.5, specialattack = 6.0, specialdefense = 4.5, vitality = 4.0, agility = 155, exp = 114, level = 15, wildLvl = 15, type = "poison", type2 = "no type"},

["Weezing"] = {offense = 9.0, defense = 12.0, specialattack = 8.5, specialdefense = 7.0, vitality = 6.5, agility = 180, exp = 173, level = 35, wildLvl = 35, type = "poison", type2 = "no type"},

["Shiny Weezing"] = {offense = 19.0, defense = 26.0, specialattack = 16.0, specialdefense = 12.0, vitality = 12.0, agility = 180, exp = 173, level = 35, wildLvl = 35, type = "poison", type2 = "no type"},

["Rhyhorn"] = {offense = 8.5, defense = 9.5, specialattack = 3.0, specialdefense = 3.0, vitality = 8.0, agility = 145, exp = 135, level = 30, wildLvl = 30, type = "ground", type2 = "rock"},

["Rhydon"] = {offense = 13.0, defense = 12.0, specialattack = 4.5, specialdefense = 4.5, vitality = 10.5, agility = 160, exp = 204, level = 75, wildLvl = 75, type = "ground", type2 = "rock"},

["Chansey"] = {offense = 0.5, defense = 0.5, specialattack = 3.5, specialdefense = 10.5, vitality = 8.0, agility = 170, exp = 255, level = 60, wildLvl = 60, type = "normal", type2 = "no type"},

["Tangela"] = {offense = 5.5, defense = 11.5, specialattack = 10.0, specialdefense = 4.0, vitality = 6.5, agility = 180, exp = 166, level = 50, wildLvl = 55, type = "grass", type2 = "no type"},

["Kangaskhan"] = {offense = 9.5, defense = 8.0, specialattack = 4.0, specialdefense = 8.0, vitality = 10.5, agility = 210, exp = 175, level = 80, wildLvl = 80, type = "normal", type2 = "no type"},

["Horsea"] = {offense = 4.0, defense = 7.0, specialattack = 7.0, specialdefense = 2.5, vitality = 3.0, agility = 180, exp = 83, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Seadra"] = {offense = 6.5, defense = 9.5, specialattack = 9.5, specialdefense = 4.5, vitality = 5.5, agility = 205, exp = 155, level = 45, wildLvl = 45, type = "water", type2 = "no type"},

["Goldeen"] = {offense = 6.7, defense = 6.0, specialattack = 3.5, specialdefense = 5.0, vitality = 4.5, agility = 183, exp = 111, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Seaking"] = {offense = 9.2, defense = 6.5, specialattack = 6.5, specialdefense = 8.0, vitality = 8.0, agility = 188, exp = 170, level = 35, wildLvl = 35, type = "water", type2 = "no type"},

["Staryu"] = {offense = 4.5, defense = 5.5, specialattack = 7.0, specialdefense = 5.5, vitality = 3.0, agility = 205, exp = 106, level = 15, wildLvl = 15, type = "water", type2 = "no type"},

["Starmie"] = {offense = 7.5, defense = 8.5, specialattack = 10.0, specialdefense = 8.5, vitality = 6.0, agility = 235, exp = 207, level = 35, wildLvl = 35, type = "water", type2 = "psychic"},

["Mr. Mime"] = {offense = 4.5, defense = 6.5, specialattack = 10.0, specialdefense = 12.0, vitality = 4.0, agility = 210, exp = 136, level = 45, wildLvl = 45, type = "psychic", type2 = "no type"},

["Scyther"] = {offense = 11.0, defense = 8.0, specialattack = 5.5, specialdefense = 8.0, vitality = 7.0, agility = 225, exp = 187, level = 80, wildLvl = 80, type = "bug", type2 = "flying"},

["Jynx"] = {offense = 5.0, defense = 3.5, specialattack = 11.5, specialdefense = 9.5, vitality = 6.5, agility = 215, exp = 137, level = 75, wildLvl = 75, type = "ice", type2 = "psychic"},

["Electabuzz"] = {offense = 8.3, defense = 5.7, specialattack = 9.5, specialdefense = 8.5, vitality = 6.5, agility = 225, exp = 156, level = 80, wildLvl = 85, type = "electric", type2 = "no type"},

["Magmar"] = {offense = 9.5, defense = 5.7, specialattack = 10.0, specialdefense = 8.5, vitality = 6.5, agility = 213, exp = 167, level = 80, wildLvl = 90, type = "fire", type2 = "no type"},

["Shiny Magmar"] = {offense = 17.0, defense = 8.0, specialattack = 19.0, specialdefense = 8.5, vitality = 11.5, agility = 213, exp = 167, level = 1, wildLvl = 90, type = "fire", type2 = "no type"},

["Maquina Magmar"] = {offense = 20.0, defense = 100.0, specialattack = 21.8, specialdefense = 30.0, vitality = 100.0, agility = 1900, exp = 209, level = 1, wildLvl = 300, type = "ghost", type2 = "poison"},["Pinsir"] = {offense = 12.5, defense = 10.0, specialattack = 5.5, specialdefense = 7.0, vitality = 6.5, agility = 205, exp = 200, level = 45, wildLvl = 45, type = "bug", type2 = "no type"},

["Tauros"] = {offense = 10.0, defense = 9.5, specialattack = 4.0, specialdefense = 7.0, vitality = 7.5, agility = 230, exp = 211, level = 45, wildLvl = 45, type = "normal", type2 = "no type"},

["Magikarp"] = {offense = 1.0, defense = 5.5, specialattack = 1.5, specialdefense = 2.0, vitality = 2.0, agility = 190, exp = 20, level = 5, wildLvl = 5, type = "water", type2 = "no type"},

["Gyarados"] = {offense = 12.5, defense = 7.9, specialattack = 6.0, specialdefense = 10.0, vitality = 9.5, agility = 201, exp = 214, level = 85, wildLvl = 100, type = "water", type2 = "flying"},

["Follower Lapras"] = {offense = 30.5, defense = 70.9, specialattack = 55.0, specialdefense = 60.0, vitality = 90.5, agility = 201, exp = 500, level = 85, wildLvl = 100, type = "water", type2 = "grass"},

["Follower Vaporeon"] = {offense = 30.5, defense = 70.9, specialattack = 55.0, specialdefense = 60.0, vitality = 90.5, agility = 201, exp = 500, level = 85, wildLvl = 100, type = "water", type2 = "grass"},

["Follower Poliwrath"] = {offense = 30.5, defense = 70.9, specialattack = 55.0, specialdefense = 60.0, vitality = 90.5, agility = 201, exp = 500, level = 85, wildLvl = 100, type = "water", type2 = "grass"},

["Follower Blastoise"] = {offense = 30.5, defense = 70.9, specialattack = 55.0, specialdefense = 60.0, vitality = 90.5, agility = 201, exp = 500, level = 85, wildLvl = 100, type = "water", type2 = "grass"},

["Follower Magikarp"] = {offense = 35.5, defense = 70.9, specialattack = 55.0, specialdefense = 60.0, vitality = 90.5, agility = 201, exp = 500, level = 85, wildLvl = 100, type = "water", type2 = "grass"},

["Follower Gyarados"] = {offense = 30.5, defense = 70.9, specialattack = 55.0, specialdefense = 60.0, vitality = 90.5, agility = 201, exp = 500, level = 85, wildLvl = 100, type = "water", type2 = "grass"},

["Sharpedo"] = {offense = 12.0, defense = 4.0, specialattack = 9.5, specialdefense = 9.5, vitality = 7.0, agility = 201, exp = 214, level = 85, wildLvl = 100, type = "water", type2 = "flying"},

["Lapras"] = {offense = 13.0, defense = 8.5, specialattack = 8.0, specialdefense = 4.8, vitality = 13.0, agility = 180, exp = 219, level = 80, wildLvl = 85, type = "water", type2 = "ice"},

["Ditto"] = {offense = 4.8, defense = 4.8, specialattack = 4.8, specialdefense = 6.5, vitality = 4.8, agility = 158, exp = 61, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Shiny Ditto"] = {offense = 4.8, defense = 4.8, specialattack = 4.8, specialdefense = 6.5, vitality = 4.8, agility = 158, exp = 61, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Eevee"] = {offense = 5.5, defense = 5.0, specialattack = 4.5, specialdefense = 9.5, vitality = 5.5, agility = 175, exp = 92, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Vaporeon"] = {offense = 6.5, defense = 6.0, specialattack = 11.0, specialdefense = 9.5, vitality = 13.0, agility = 185, exp = 196, level = 55, wildLvl = 55, type = "water", type2 = "no type"},

["Jolteon"] = {offense = 6.5, defense = 6.0, specialattack = 11.0, specialdefense = 9.5, vitality = 6.5, agility = 250, exp = 197, level = 55, wildLvl = 55, type = "electric", type2 = "no type"},

["Flareon"] = {offense = 13.0, defense = 6.0, specialattack = 9.5, specialdefense = 11.0, vitality = 6.5, agility = 185, exp = 198, level = 55, wildLvl = 55, type = "fire", type2 = "no type"},

["Sylveon"] = {offense = 6.5, defense = 6.5, specialattack = 11.0, specialdefense = 13.0, vitality = 9.5, agility = 185, exp = 198, level = 55, wildLvl = 55, type = "fire", type2 = "no type"},

["Supremo Porygon"] = {offense = 6.0, defense = 7.5, specialattack = 8.5, specialdefense = 7.5, vitality = 6.5, agility = 160, exp = 130, level = 40, wildLvl = 100, type = "normal", type2 = "no type"},

["Porygon"] = {offense = 6.0, defense = 7.0, specialattack = 8.5, specialdefense = 7.5, vitality = 6.5, agility = 160, exp = 130, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Omanyte"] = {offense = 4.0, defense = 10.0, specialattack = 9.0, specialdefense = 5.5, vitality = 3.5, agility = 155, exp = 99, level = 20, wildLvl = 20, type = "rock", type2 = "water"},

["Omastar"] = {offense = 6.0, defense = 12.5, specialattack = 11.5, specialdefense = 7.0, vitality = 7.0, agility = 175, exp = 199, level = 80, wildLvl = 80, type = "rock", type2 = "water"},

["Ancient Kabutops"] = {offense = 11.5, defense = 10.5, specialattack = 6.5, specialdefense = 7.5, vitality = 6.0, agility = 200, exp = 199, level = 150, wildLvl = 120, type = "rock", type2 = "water"},

["Kabuto"] = {offense = 8.0, defense = 9.0, specialattack = 5.5, specialdefense = 4.5, vitality = 3.0, agility = 175, exp = 99, level = 20, wildLvl = 20, type = "rock", type2 = "water"},

["Kabutops"] = {offense = 11.5, defense = 10.5, specialattack = 6.5, specialdefense = 7.5, vitality = 6.0, agility = 200, exp = 199, level = 80, wildLvl = 80, type = "rock", type2 = "water"},

["Aerodactyl"] = {offense = 10.5, defense = 6.5, specialattack = 6.0, specialdefense = 11.0, vitality = 8.0, agility = 250, exp = 202, level = 100, wildLvl = 100, type = "rock", type2 = "flying"},

["Shiny Aerodactyl"] = {offense = 19.0, defense = 11.5, specialattack = 11.0, specialdefense = 12.0, vitality = 14.0, agility = 250, exp = 541, level = 1, wildLvl = 100, type = "rock", type2 = "flying"},

["Snorlax"] = {offense = 11.0, defense = 6.5, specialattack = 6.5, specialdefense = 11.0, vitality = 16.0, agility = 150, exp = 154, level = 85, wildLvl = 85, type = "normal", type2 = "no type"},

["Ancient Articuno"] = {offense = 12.0, defense = 80.0, specialattack = 9.5, specialdefense = 30.0, vitality = 100.0, agility = 205, exp = 215, level = 150, wildLvl = 250, type = "ice", type2 = "flying"},

["Articuno"] = {offense = 50.0, defense = 100.5, specialattack = 40.5, specialdefense = 80.5, vitality = 1000.4, agility = 3005, exp = 215, level = 150, wildLvl = 250, type = "ice", type2 = "flying"},

["Zapdos"] = {offense = 50.0, defense = 100.4, specialattack = 40.5, specialdefense = 80.0, vitality = 1000.5, agility = 2020, exp = 216, level = 150, wildLvl = 150, type = "electric", type2 = "flying"},

["Moltres"] = {offense = 50.0, defense = 100.3, specialattack = 40.5, specialdefense = 80.0, vitality = 1000.6, agility = 2100, exp = 217, level = 150, wildLvl = 150, type = "fire", type2 = "flying"},

["Dratini"] = {offense = 6.4, defense = 4.5, specialattack = 5.0, specialdefense = 5.0, vitality = 4.1, agility = 170, exp = 67, level = 20, wildLvl = 20, type = "dragon", type2 = "no type"},

["Dragonair"] = {offense = 8.4, defense = 6.5, specialattack = 7.0, specialdefense = 7.0, vitality = 6.1, agility = 190, exp = 144, level = 60, wildLvl = 60, type = "dragon", type2 = "no type"},

["Dragonite"] = {offense = 13.4, defense = 9.5, specialattack = 10.0, specialdefense = 10.0, vitality = 9.1, agility = 200, exp = 218, level = 100, wildLvl = 100, type = "dragon", type2 = "flying"},

["Dragonite Milenar"] = {offense = 24.0, defense = 18.0, specialattack = 20.0, specialdefense = 12.0, vitality = 16.0, agility = 200, exp = 218, level = 100, wildLvl = 300, type = "dragon", type2 = "flying"},

["Mewtwo"] = {offense = 50.0, defense = 200.1, specialattack = 40.4, specialdefense = 80.0, vitality = 1000.6, agility = 2500, exp = 220, level = 150, wildLvl = 150, type = "psychic", type2 = "no type"},

["Mew"] = {offense = 50.0, defense = 100.2, specialattack = 40.0, specialdefense = 80.0, vitality = 1000.6, agility = 2200, exp = 64, level = 150, wildLvl = 150, type = "psychic", type2 = "no type"},

["Shiny Venusaur"] = {offense = 13.4, defense = 13.3, specialattack = 19.0, specialdefense = 17.0, vitality = 14.0, agility = 240, exp = 228.8, level = 1, wildLvl = 130, type = "grass", type2 = "poison"},

["Elder Charizard"] = {offense = 13.4, defense = 12.0, specialattack = 19.9, specialdefense = 14.0, vitality = 13.5, agility = 133, exp = 229.9, level = 1, wildLvl = 130, type = "fire", type2 = "flying"},

["Shiny Blastoise"] = {offense = 13.9, defense = 19.0, specialattack = 13.4, specialdefense = 20.0, vitality = 13.6, agility = 335, exp = 231, level = 1, wildLvl = 130, type = "water", type2 = "no type"},

["Shiny Butterfree"] = {offense = 9.0, defense = 9.0, specialattack = 14.0, specialdefense = 14.5, vitality = 10.0, agility = 133, exp = 176, level = 1, wildLvl = 80, type = "bug", type2 = "flying"},

["Shiny Beedrill"] = {offense = 13.7, defense = 7.5, specialattack = 7.9, specialdefense = 14.0, vitality = 11.0, agility = 133, exp = 154.9, level = 1, wildLvl = 80, type = "bug", type2 = "poison"},

["Shiny Pidgeot"] = {offense = 13.7, defense = 13.5, specialattack = 12.0, specialdefense = 12.0, vitality = 13.0, agility = 163, exp = 189.2, level = 1, wildLvl = 120, type = "normal", type2 = "flying"},

["Shiny Rattata"] = {offense = 7.8, defense = 5.0, specialattack = 3.5, specialdefense = 5.0, vitality = 4.0, agility = 111, exp = 62.7, level = 1, wildLvl = 40, type = "normal", type2 = "no type"},

["Shiny Raticate"] = {offense = 13.4, defense = 11.0, specialattack = 8.0, specialdefense = 12.0, vitality = 8.5, agility = 122, exp = 127.6, level = 1, wildLvl = 65, type = "normal", type2 = "no type"},

["Shiny Fearow"] = {offense = 15.0, defense = 11.0, specialattack = 11.0, specialdefense = 11.0, vitality = 11.5, agility = 122, exp = 178.2, level = 1, wildLvl = 120, type = "normal", type2 = "flying"},

["Shiny Raichu"] = {offense = 15.0, defense = 8.9, specialattack = 13.5, specialdefense = 14.5, vitality = 11.0, agility = 133, exp = 134.2, level = 1, wildLvl = 120, type = "electric", type2 = "no type"},

["Shiny Nidoking"] = {offense = 19.2, defense = 14.9, specialattack = 12.0, specialdefense = 12.0, vitality = 11.0, agility = 133, exp = 214.5, level = 1, wildLvl = 120, type = "poison", type2 = "ground"},

["Shiny Zubat"] = {offense = 8.0, defense = 6.0, specialattack = 5.0, specialdefense = 6.0, vitality = 7.0, agility = 111, exp = 59.4, level = 1, wildLvl = 30, type = "poison", type2 = "flying"},

["Shiny Golbat"] = {offense = 12.5, defense = 12.0, specialattack = 10.5, specialdefense = 12.5, vitality = 10.0, agility = 122, exp = 188.1, level = 1, wildLvl = 90, type = "poison", type2 = "flying"},

["Shiny Oddish"] = {offense = 8.0, defense = 9.0, specialattack = 12.0, specialdefense = 12.0, vitality = 7.0, agility = 111, exp = 85.8, level = 1, wildLvl = 40, type = "grass", type2 = "poison"},

["Shiny Vileplume"] = {offense = 14.5, defense = 15.0, specialattack = 20.0, specialdefense = 14.5, vitality = 13.0, agility = 133, exp = 202.4, level = 1, wildLvl = 120, type = "grass", type2 = "poison"},

["Shiny Paras"] = {offense = 11.0, defense = 9.9, specialattack = 8.5, specialdefense = 9.0, vitality = 6.0, agility = 111, exp = 77, level = 1, wildLvl = 30, type = "bug", type2 = "grass"},

["Shiny Parasect"] = {offense = 12.0, defense = 18.0, specialattack = 11.0, specialdefense = 14.5, vitality = 10.5, agility = 122, exp = 140.8, level = 1, wildLvl = 90, type = "bug", type2 = "grass"},

["Shiny Venonat"] = {offense = 9.5, defense = 8.0, specialattack = 6.0, specialdefense = 7.0, vitality = 9.0, agility = 111, exp = 82.5, level = 1, wildLvl = 60, type = "bug", type2 = "poison"},

["Shiny Venomoth"] = {offense = 12.0, defense = 9.8, specialattack = 17.0, specialdefense = 12.5, vitality = 12.0, agility = 162, exp = 151.8, level = 1, wildLvl = 130, type = "bug", type2 = "poison"},

["Shiny Growlithe"] = {offense = 13.0, defense = 8.0, specialattack = 13.5, specialdefense = 8.0, vitality = 9.0, agility = 111, exp = 100.1, level = 1, wildLvl = 95, type = "fire", type2 = "no type"},

["Shiny Arcanine"] = {offense = 19.0, defense = 14.5, specialattack = 19.2, specialdefense = 14.5, vitality = 16.7, agility = 182, exp = 234.3, level = 1, wildLvl = 130, type = "fire", type2 = "no type"},

["Shiny Abra"] = {offense = 3.5, defense = 2.5, specialattack = 21.0, specialdefense = 9.0, vitality = 4.0, agility = 121, exp = 82.5, level = 1, wildLvl = 130, type = "psychic", type2 = "ghost"},

["Shiny Alakazam"] = {offense = 9.5, defense = 8.0, specialattack = 24.0, specialdefense = 14.5, vitality = 18.5, agility = 340, exp = 204.6, level = 1, wildLvl = 150, type = "psychic", type2 = "no type"},

["Shiny Tentacool"] = {offense = 6.0, defense = 5.5, specialattack = 9.0, specialdefense = 20.0, vitality = 6.0, agility = 111, exp = 115.5, level = 1, wildLvl = 95, type = "water", type2 = "poison"},

["Shiny Tentacruel"] = {offense = 13.0, defense = 11.0, specialattack = 14.5, specialdefense = 21.0, vitality = 14.5, agility = 122, exp = 225.5, level = 1, wildLvl = 150, type = "water", type2 = "poison"},

["Shiny Golem"] = {offense = 20.0, defense = 21.0, specialattack = 9.0, specialdefense = 12.0, vitality = 12.0, agility = 133, exp = 194.7, level = 1, wildLvl = 120, type = "rock", type2 = "ground"},

["Shiny Farfetch'd"] = {offense = 12.0, defense = 9.0, specialattack = 10.0, specialdefense = 11.0, vitality = 9.5, agility = 175, exp = 103.4, level = 1, wildLvl = 120, type = "normal", type2 = "flying"},

["Shiny Grimer"] = {offense = 12.0, defense = 8.0, specialattack = 5.0, specialdefense = 8.0, vitality = 12.0, agility = 111, exp = 99, level = 1, wildLvl = 65, type = "poison", type2 = "no type"},

["Shiny Muk"] = {offense = 19.0, defense = 13.5, specialattack = 11.5, specialdefense = 19.0, vitality = 18.0, agility = 122, exp = 172.7, level = 1, wildLvl = 120, type = "poison", type2 = "no type"},

["Supremo Gengar"] = {offense = 12.0, defense = 10.5, specialattack = 21.0, specialdefense = 20.0, vitality = 40.0, agility = 133, exp = 209, level = 1, wildLvl = 200, type = "ghost", type2 = "poison"},

["Giant Gengar"] = {offense = 16.0, defense = 70.5, specialattack = 31.0, specialdefense = 60.0, vitality = 80.0, agility = 133, exp = 209, level = 1, wildLvl = 200, type = "ghost", type2 = "poison"},

["Shiny Gengar"] = {offense = 12.0, defense = 10.5, specialattack = 21.0, specialdefense = 12.0, vitality = 11.0, agility = 133, exp = 209, level = 1, wildLvl = 150, type = "ghost", type2 = "poison"},

["Halloween Gengar"] = {offense = 16.0, defense = 60.0, specialattack = 21.8, specialdefense = 60.0, vitality = 70.0, agility = 133, exp = 209, level = 1, wildLvl = 300, type = "ghost", type2 = "poison"},

["Charizard Halloween"] = {offense = 16.0, defense = 60.0, specialattack = 21.8, specialdefense = 60.0, vitality = 70.0, agility = 170, exp = 900, level = 1, wildLvl = 200, type = "fire", type2 = "dark"},

["Furious Charizard"] = {offense = 26.0, defense = 60.0, specialattack = 30.8, specialdefense = 60.0, vitality = 70.0, agility = 170, exp = 900, level = 1, wildLvl = 100, type = "fire", type2 = "dark"},

["Marowak Halloween"] = {offense = 16.0, defense = 60.0, specialattack = 21.8, specialdefense = 60.0, vitality = 70.0, agility = 170, exp = 209, level = 1, wildLvl = 200, type = "ground", type2 = "dark"},

["Shiny Onix"] = {offense = 8.0, defense = 30.0, specialattack = 6.0, specialdefense = 8.0, vitality = 7.0, agility = 122, exp = 118.8, level = 1, wildLvl = 150, type = "rock", type2 = "ground"},

["Shiny Hypno"] = {offense = 12.0, defense = 12.0, specialattack = 12.6, specialdefense = 20.0, vitality = 15.0, agility = 122, exp = 181.5, level = 1, wildLvl = 120, type = "psychic", type2 = "no type"},

["Shiny Krabby"] = {offense = 20.0, defense = 12.0, specialattack = 2.5, specialdefense = 4.5, vitality = 5.0, agility = 111, exp = 126.5, level = 1, wildLvl = 35, type = "water", type2 = "no type"},

["Shiny Kingler"] = {offense = 24.0, defense = 14.0, specialattack = 5.0, specialdefense = 5.0, vitality = 7.9, agility = 122, exp = 226.6, level = 1, wildLvl = 90, type = "water", type2 = "no type"},

["Shiny Voltorb"] = {offense = 5.0, defense = 8.0, specialattack = 10.0, specialdefense = 9.0, vitality = 6.0, agility = 111, exp = 113.3, level = 1, wildLvl = 55, type = "electric", type2 = "no type"},

["Shiny Electrode"] = {offense = 7.0, defense = 12.0, specialattack = 14.0, specialdefense = 12.0, vitality = 11.0, agility = 122, exp = 165, level = 1, wildLvl = 100, type = "electric", type2 = "no type"},

["Shiny Cubone"] = {offense = 8.0, defense = 14.4, specialattack = 6.0, specialdefense = 9.0, vitality = 8.0, agility = 111, exp = 95.7, level = 1, wildLvl = 60, type = "ground", type2 = "no type"},

["Shiny Marowak"] = {offense = 14.0, defense = 20.0, specialattack = 8.0, specialdefense = 14.5, vitality = 10.0, agility = 122, exp = 136.4, level = 1, wildLvl = 120, type = "ground", type2 = "no type"},

["Shiny Hitmonlee"] = {offense = 21.0, defense = 10.0, specialattack = 6.0, specialdefense = 20.0, vitality = 10.0, agility = 159, exp = 152.9, level = 1, wildLvl = 130, type = "fighting", type2 = "no type"},

["Shiny Hitmonchan"] = {offense = 19.0, defense = 12.0, specialattack = 6.0, specialdefense = 22.0, vitality = 10.0, agility = 133, exp = 154, level = 1, wildLvl = 130, type = "fighting", type2 = "no type"},

["Shiny Tangela"] = {offense = 10.0, defense = 18.0, specialattack = 19.0, specialdefense = 8.0, vitality = 10.0, agility = 141, exp = 182.6, level = 1, wildLvl = 120, type = "grass", type2 = "no type"},

["Shiny Horsea"] = {offense = 7.0, defense = 12.0, specialattack = 12.0, specialdefense = 4.0, vitality = 5.0, agility = 111, exp = 91.3, level = 1, wildLvl = 45, type = "water", type2 = "no type"},

["Shiny Seadra"] = {offense = 11.0, defense = 16.5, specialattack = 16.5, specialdefense = 8.5, vitality = 9.9, agility = 122, exp = 170.5, level = 1, wildLvl = 90, type = "water", type2 = "no type"},

["Shiny Scyther"] = {offense = 21.0, defense = 14.0, specialattack = 8.0, specialdefense = 14.5, vitality = 12.0, agility = 133, exp = 205.7, level = 1, wildLvl = 190, type = "bug", type2 = "flying"},

["Shiny Jynx"] = {offense = 8.0, defense = 5.0, specialattack = 21.0, specialdefense = 16.0, vitality = 12.0, agility = 133, exp = 150.7, level = 1, wildLvl = 190, type = "ice", type2 = "psychic"},

["Shiny Electabuzz"] = {offense = 14.0, defense = 10.0, specialattack = 16.0, specialdefense = 14.5, vitality = 11.0, agility = 133, exp = 171.6, level = 1, wildLvl = 190, type = "electric", type2 = "no type"},

["Shiny Pinsir"] = {offense = 24.0, defense = 19.0, specialattack = 9.0, specialdefense = 12.5, vitality = 10.0, agility = 133, exp = 220, level = 1, wildLvl = 120, type = "bug", type2 = "no type"},

["Shiny Magikarp"] = {offense = 2.0, defense = 7.0, specialattack = 3.0, specialdefense = 4.0, vitality = 3.5, agility = 111, exp = 22, level = 1, wildLvl = 50, type = "water", type2 = "no type"},

["Shiny Gyarados"] = {offense = 22.0, defense = 12.0, specialattack = 11.0, specialdefense = 19.0, vitality = 19.5, agility = 133, exp = 235.4, level = 1, wildLvl = 220, type = "water", type2 = "flying"},

["Shiny Vaporeon"] = {offense = 12.0, defense = 11.0, specialattack = 19.0, specialdefense = 18.5, vitality = 12.0, agility = 133, exp = 215.6, level = 1, wildLvl = 100, type = "water", type2 = "no type"},

["Shiny Jolteon"] = {offense = 12.0, defense = 11.0, specialattack = 19.0, specialdefense = 17.5, vitality = 12.0, agility = 133, exp = 216.7, level = 1, wildLvl = 100, type = "electric", type2 = "no type"},

["Shiny Flareon"] = {offense = 20.0, defense = 11.0, specialattack = 17.0, specialdefense = 17.0, vitality = 12.0, agility = 133, exp = 217.8, level = 1, wildLvl = 100, type = "fire", type2 = "no type"},

["Shiny Snorlax"] = {offense = 20.5, defense = 11.0, specialattack = 11.0, specialdefense = 22.2, vitality = 25.0, agility = 133, exp = 169.4, level = 1, wildLvl = 120, type = "normal", type2 = "no type"},

["Shiny Dratini"] = {offense = 11.0, defense = 7.0, specialattack = 7.8, specialdefense = 5.0, vitality = 6.0, agility = 111, exp = 73.7, level = 1, wildLvl = 65, type = "dragon", type2 = "no type"},

["Shiny Dragonair"] = {offense = 13.0, defense = 11.0, specialattack = 12.0, specialdefense = 12.0, vitality = 11.0, agility = 122, exp = 158.4, level = 1, wildLvl = 110, type = "dragon", type2 = "no type"},

["Shiny Dragonite"] = {offense = 21.0, defense = 14.5, specialattack = 19.0, specialdefense = 19.0, vitality = 17.5, agility = 133, exp = 239.8, level = 1, wildLvl = 160, type = "dragon", type2 = "flying"},

["Chikorita"] = {offense = 4.9, defense = 6.5, specialattack = 4.9, specialdefense = 6.5, vitality = 4.5, agility = 106, exp = 64, level = 5, wildLvl = 20, type = "grass", type2 = "no type"},

["Bayleef"] = {offense = 6.2, defense = 8.0, specialattack = 6.3, specialdefense = 8.0, vitality = 6.0, agility = 123, exp = 141, level = 40, wildLvl = 40, type = "grass", type2 = "no type"},

["Meganium"] = {offense = 8.2, defense = 10.0, specialattack = 8.3, specialdefense = 10.0, vitality = 8.0, agility = 145, exp = 208, level = 85, wildLvl = 85, type = "grass", type2 = "no type"},

["Cyndaquil"] = {offense = 5.2, defense = 4.3, specialattack = 6.0, specialdefense = 5.0, vitality = 3.9, agility = 128, exp = 65, level = 5, wildLvl = 20, type = "fire", type2 = "no type"},

["Quilava"] = {offense = 6.4, defense = 5.8, specialattack = 8.0, specialdefense = 6.5, vitality = 5.8, agility = 145, exp = 142, level = 40, wildLvl = 40, type = "fire", type2 = "no type"},

["Typhlosion"] = {offense = 8.4, defense = 7.8, specialattack = 10.9, specialdefense = 8.5, vitality = 7.8, agility = 167, exp = 209, level = 85, wildLvl = 85, type = "fire", type2 = "no type"},

["Totodile"] = {offense = 6.5, defense = 6.4, specialattack = 4.4, specialdefense = 4.8, vitality = 5.0, agility = 104, exp = 66, level = 5, wildLvl = 20, type = "water", type2 = "no type"},

["Croconaw"] = {offense = 8.0, defense = 8.0, specialattack = 5.9, specialdefense = 6.3, vitality = 6.5, agility = 121, exp = 141, level = 40, wildLvl = 40, type = "water", type2 = "no type"},

["Feraligatr"] = {offense = 10.5, defense = 10.0, specialattack = 7.9, specialdefense = 8.3, vitality = 8.5, agility = 143, exp = 142, level = 85, wildLvl = 85, type = "water", type2 = "no type"},

["Sentret"] = {offense = 4.6, defense = 3.4, specialattack = 3.5, specialdefense = 4.5, vitality = 3.5, agility = 105, exp = 57, level = 15, wildLvl = 15, type = "normal", type2 = "no type"},

["Furret"] = {offense = 7.6, defense = 6.4, specialattack = 4.5, specialdefense = 5.5, vitality = 8.5, agility = 156, exp = 116, level = 35, wildLvl = 35, type = "normal", type2 = "no type"},

["Hoothoot"] = {offense = 3.0, defense = 3.0, specialattack = 3.6, specialdefense = 5.6, vitality = 6.0, agility = 112, exp = 58, level = 20, wildLvl = 20, type = "normal", type2 = "flying"},

["Noctowl"] = {offense = 5.0, defense = 5.0, specialattack = 7.6, specialdefense = 9.6, vitality = 10.0, agility = 134, exp = 162, level = 65, wildLvl = 65, type = "normal", type2 = "flying"},

["Shiny Noctowl"] = {offense = 8.0, defense = 8.0, specialattack = 14.0, specialdefense = 8.0, vitality = 18.0, agility = 200, exp = 162, level = 65, wildLvl = 65, type = "normal", type2 = "flying"},

["Ledyba"] = {offense = 2.0, defense = 3.0, specialattack = 4.0, specialdefense = 8.0, vitality = 4.0, agility = 117, exp = 54, level = 15, wildLvl = 15, type = "bug", type2 = "flying"},

["Ledian"] = {offense = 3.5, defense = 5.0, specialattack = 5.5, specialdefense = 11.0, vitality = 5.5, agility = 150, exp = 134, level = 35, wildLvl = 35, type = "bug", type2 = "flying"},

["Spinarak"] = {offense = 6.0, defense = 4.0, specialattack = 4.0, specialdefense = 4.0, vitality = 4.0, agility = 100, exp = 54, level = 10, wildLvl = 10, type = "bug", type2 = "poison"},

["Ariados"] = {offense = 9.0, defense = 7.0, specialattack = 6.0, specialdefense = 6.0, vitality = 7.0, agility = 120, exp = 134, level = 35, wildLvl = 35, type = "bug", type2 = "poison"},

["Crobat"] = {offense = 9.0, defense = 8.0, specialattack = 7.0, specialdefense = 8.0, vitality = 8.5, agility = 170, exp = 204, level = 80, wildLvl = 80, type = "poison", type2 = "flying"},

["Chinchou"] = {offense = 3.8, defense = 3.8, specialattack = 5.6, specialdefense = 5.6, vitality = 7.5, agility = 130, exp = 90, level = 15, wildLvl = 15, type = "water", type2 = "electric"},

["Lanturn"] = {offense = 5.8, defense = 5.8, specialattack = 7.6, specialdefense = 7.6, vitality = 12.5, agility = 145, exp = 156, level = 50, wildLvl = 50, type = "water", type2 = "electric"},

["Pichu"] = {offense = 4.0, defense = 1.5, specialattack = 3.5, specialdefense = 3.5, vitality = 2.0, agility = 123, exp = 42, level = 20, wildLvl = 20, type = "electric", type2 = "no type"},

["Cleffa"] = {offense = 2.5, defense = 2.8, specialattack = 4.5, specialdefense =5.5, vitality = 5.5, agility = 95, exp = 37, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Igglybuff"] = {offense = 3.0, defense = 1.5, specialattack = 4.0, specialdefense = 2.0, vitality = 9.0, agility = 95, exp = 39, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Togepi"] = {offense = 2.0, defense = 6.5, specialattack = 4.0, specialdefense = 6.5, vitality = 3.5, agility = 80, exp = 74, level = 5, wildLvl = 5, type = "normal", type2 = "no type"},

["Togetic"] = {offense = 4.0, defense = 8.5, specialattack = 8.0, specialdefense = 10.5, vitality = 5.5, agility = 115, exp = 114, level = 60, wildLvl = 60, type = "normal", type2 = "flying"},

["Natu"] = {offense = 5.0, defense = 4.5, specialattack = 7.0, specialdefense = 4.5, vitality = 4.0, agility = 134, exp = 73, level = 25, wildLvl = 25, type = "psychic", type2 = "flying"},

["Xatu"] = {offense = 7.5, defense = 7.0, specialattack = 9.5, specialdefense = 7.0, vitality = 6.5, agility = 161, exp = 171, level = 75, wildLvl = 75, type = "psychic", type2 = "flying"},

["Mareep"] = {offense = 4.0, defense = 4.0, specialattack = 6.5, specialdefense = 4.5, vitality = 5.5, agility = 95, exp = 59, level = 20, wildLvl = 20, type = "electric", type2 = "no type"},

["Flaaffy"] = {offense = 5.5, defense = 5.5, specialattack = 8.0, specialdefense = 6.0, vitality = 7.0, agility = 110, exp = 117, level = 40, wildLvl = 40, type = "electric", type2 = "no type"},

["Ampharos"] = {offense = 7.5, defense = 8.5, specialattack = 11.5, specialdefense = 9.0, vitality = 9.0, agility = 130, exp = 194, level = 85, wildLvl = 85, type = "electric", type2 = "no type"},

["Shiny Ampharos"] = {offense = 7.5, defense = 8.5, specialattack = 11.5, specialdefense = 9.0, vitality = 9.0, agility = 130, exp = 194, level = 85, wildLvl = 85, type = "electric", type2 = "no type"},

["Bellossom"] = {offense = 8.0, defense = 9.5, specialattack = 9.0, specialdefense = 10.0, vitality = 7.5, agility = 112, exp = 184, level = 50, wildLvl = 50, type = "grass", type2 = "no type"},

["Marill"] = {offense = 2.0, defense = 5.0, specialattack = 2.0, specialdefense = 5.0, vitality = 7.0, agility = 101, exp = 58, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Azumarill"] = {offense = 5.0, defense = 8.0, specialattack = 6.0, specialdefense = 8.0, vitality = 10.0, agility = 120, exp = 153, level = 65, wildLvl = 65, type = "water", type2 = "no type"},

["Sudowoodo"] = {offense = 10.0, defense = 11.5, specialattack = 3.0, specialdefense = 6.5, vitality = 7.0, agility = 110, exp = 135, level = 80, wildLvl = 80, type = "rock", type2 = "no type"},

["Politoed"] = {offense = 7.5, defense = 7.5, specialattack = 9.0, specialdefense = 10.0, vitality = 9.0, agility = 134, exp = 185, level = 65, wildLvl = 65, type = "water", type2 = "no type"},

["Hoppip"] = {offense = 3.5, defense = 4.0, specialattack = 3.5, specialdefense = 5.5, vitality = 3.5, agility = 112, exp = 74, level = 5, wildLvl = 5, type = "grass", type2 = "flying"},

["Skiploom"] = {offense = 4.5, defense = 5.0, specialattack = 4.5, specialdefense = 6.5, vitality = 5.5, agility = 135, exp = 136, level = 25, wildLvl = 25, type = "grass", type2 = "flying"},

["Jumpluff"] = {offense = 5.5, defense = 7.0, specialattack = 5.5, specialdefense = 9.5, vitality = 7.5, agility = 150, exp = 176, level = 50, wildLvl = 50, type = "grass", type2 = "flying"},

["Aipom"] = {offense = 7.0, defense = 5.5, specialattack = 4.0, specialdefense = 5.5, vitality = 5.5, agility = 140, exp = 94, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Sunkern"] = {offense = 3.0, defense = 3.0, specialattack = 3.0, specialdefense = 3.0, vitality = 3.0, agility = 100, exp = 52, level = 5, wildLvl = 5, type = "grass", type2 = "no type"},

["Sunflora"] = {offense = 7.5, defense = 5.5, specialattack = 10.5, specialdefense = 8.5, vitality = 7.5, agility = 100, exp = 146, level = 30, wildLvl = 30, type = "grass", type2 = "no type"},

["Yanma"] = {offense = 6.5, defense = 4.5, specialattack = 7.5, specialdefense = 4.5, vitality = 6.5, agility = 150, exp = 147, level = 50, wildLvl = 50, type = "bug", type2 = "flying"},

["Wooper"] = {offense = 4.5, defense = 4.5, specialattack = 2.5, specialdefense = 2.5, vitality = 5.5, agility = 95, exp = 52, level = 20, wildLvl = 20, type = "water", type2 = "ground"},

["Quagsire"] = {offense = 8.5, defense = 8.5, specialattack = 6.5, specialdefense = 6.5, vitality = 9.5, agility = 105, exp = 137, level = 65, wildLvl = 65, type = "water", type2 = "ground"},

["Shiny Quagsire"] = {offense = 14.0, defense = 14.0, specialattack = 11.5, specialdefense = 12.5, vitality = 14.0, agility = 105, exp = 137, level = 65, wildLvl = 150, type = "water", type2 = "ground"},

["Espeon"] = {offense = 6.5, defense = 6.0, specialattack = 13.0, specialdefense = 9.5, vitality = 6.5, agility = 155, exp = 197, level = 55, wildLvl = 55, type = "psychic", type2 = "no type"},

["Umbreon"] = {offense = 6.5, defense = 11.0, specialattack = 6.0, specialdefense = 13.0, vitality = 9.5, agility = 145, exp = 197, level = 55, wildLvl = 55, type = "dark", type2 = "no type"},

["Murkrow"] = {offense = 8.5, defense = 4.2, specialattack = 8.5, specialdefense = 4.2, vitality = 6.0, agility = 145, exp = 107, level = 55, wildLvl = 55, type = "dark", type2 = "flying"},

["Slowking"] = {offense = 7.5, defense = 8.0, specialattack = 10.0, specialdefense = 11.0, vitality = 9.5, agility = 125, exp = 164, level = 100, wildLvl = 100, type = "water", type2 = "psychic"},

["Misdreavus"] = {offense = 6.0, defense = 6.0, specialattack = 8.5, specialdefense = 8.5, vitality = 6.0, agility = 135, exp = 147, level = 80, wildLvl = 80, type = "ghost", type2 = "no type"},

["Unown"] = {offense = 7.2, defense = 4.8, specialattack = 7.2, specialdefense = 4.8, vitality = 4.8, agility = 110, exp = 61, level = 100, wildLvl = 100, type = "psychic", type2 = "no type"},

["Wobbuffet"] = {offense = 3.3, defense = 5.8, specialattack = 3.3, specialdefense = 5.8, vitality = 19.0, agility = 130, exp = 177, level = 80, wildLvl = 80, type = "psychic", type2 = "no type"},

["Shiny Wobbuffet"] = {offense = 5.0, defense = 8.0, specialattack = 6.0, specialdefense = 10.0, vitality = 34.0, agility = 130, exp = 177, level = 80, wildLvl = 150, type = "psychic", type2 = "no type"},

["Girafarig"] = {offense = 8.0, defense = 6.5, specialattack = 9.0, specialdefense = 6.5, vitality = 7.0, agility = 150, exp = 149, level = 80, wildLvl = 80, type = "normal", type2 = "psychic"},

["Pineco"] = {offense = 6.5, defense = 9.0, specialattack = 3.5, specialdefense = 3.5, vitality = 5.0, agility = 95, exp = 60, level = 15, wildLvl = 15, type = "bug", type2 = "no type"},

["Forretress"] = {offense = 9.0, defense = 14.0, specialattack = 6.0, specialdefense = 6.0, vitality = 7.5, agility = 110, exp = 118, level = 65, wildLvl = 65, type = "bug", type2 = "steel"},

["Dunsparce"] = {offense = 7.0, defense = 7.0, specialattack = 6.5, specialdefense = 6.5, vitality = 10.0, agility = 106, exp = 125, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Gligar"] = {offense = 7.5, defense = 10.5, specialattack = 3.5, specialdefense = 6.5, vitality = 6.5, agility = 135, exp = 108, level = 40, wildLvl = 40, type = "ground", type2 = "flying"},

["Steelix"] = {offense = 8.5, defense = 20.0, specialattack = 5.5, specialdefense = 6.5, vitality = 7.5, agility = 130, exp = 196, level = 100, wildLvl = 100, type = "steel", type2 = "ground"},

["Shiny Steelix"] = {offense = 21.0, defense = 40.0, specialattack = 12.0, specialdefense = 12.0, vitality = 19.0, agility = 250, exp = 196, level = 1, wildLvl = 150, type = "steel", type2 = "ground"},

["Snubbull"] = {offense = 8.0, defense = 5.0, specialattack = 4.0, specialdefense = 4.0, vitality = 6.0, agility = 100, exp = 63, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Granbull"] = {offense = 12.0, defense = 7.5, specialattack = 6.0, specialdefense = 6.0, vitality = 9.0, agility = 110, exp = 178, level = 65, wildLvl = 65, type = "normal", type2 = "no type"},

["Qwilfish"] = {offense = 9.5, defense = 7.5, specialattack = 5.5, specialdefense = 5.5, vitality = 6.5, agility = 135, exp = 100, level = 55, wildLvl = 55, type = "water", type2 = "poison"},

["Scizor"] = {offense = 13.0, defense = 10.0, specialattack = 5.5, specialdefense = 8.0, vitality = 7.0, agility = 210, exp = 200, level = 100, wildLvl = 100, type = "bug", type2 = "steel"},

["Shuckle"] = {offense = 1.0, defense = 23.0, specialattack = 1.0, specialdefense = 23.0, vitality = 2.0, agility = 95, exp = 80, level = 30, wildLvl = 30, type = "bug", type2 = "rock"},

["Heracross"] = {offense = 12.5, defense = 7.5, specialattack = 4.0, specialdefense = 9.5, vitality = 8.0, agility = 135, exp = 200, level = 80, wildLvl = 80, type = "bug", type2 = "fighting"},

["Sneasel"] = {offense = 9.5, defense = 5.5, specialattack = 3.5, specialdefense = 7.5, vitality = 5.5, agility = 160, exp = 132, level = 55, wildLvl = 55, type = "dark", type2 = "ice"},

["Teddiursa"] = {offense = 8.0, defense = 5.0, specialattack = 5.0, specialdefense = 5.0, vitality = 6.0, agility = 110, exp = 124, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Shiny Teddiursa"] = {offense = 15.5, defense = 9.0, specialattack = 9.0, specialdefense = 9.0, vitality = 11.5, agility = 110, exp = 124, level = 20, wildLvl = 20, type = "normal", type2 = "no type"},

["Ursaring"] = {offense = 13.0, defense = 7.5, specialattack = 7.5, specialdefense = 7.5, vitality = 9.0, agility = 120, exp = 189, level = 90, wildLvl = 90, type = "normal", type2 = "no type"},

["Shiny Ursaring"] = {offense = 21.0, defense = 12.0, specialattack = 12.0, specialdefense = 12.5, vitality = 14.0, agility = 120, exp = 189, level = 90, wildLvl = 150, type = "normal", type2 = "no type"},

["Slugma"] = {offense = 4.0, defense = 4.0, specialattack = 7.0, specialdefense = 7.5, vitality = 4.0, agility = 95, exp = 38, level = 15, wildLvl = 15, type = "fire", type2 = "no type"},

["Magcargo"] = {offense = 5.0, defense = 12.0, specialattack = 8.0, specialdefense = 4.0, vitality = 5.0, agility = 110, exp = 154, level = 60, wildLvl = 60, type = "fire", type2 = "rock"},

["Swinub"] = {offense = 5.0, defense = 4.0, specialattack = 3.0, specialdefense = 8.0, vitality = 5.0, agility = 112, exp = 78, level = 15, wildLvl = 15, type = "ice", type2 = "ground"},

["Piloswine"] = {offense = 10.0, defense = 8.0, specialattack = 6.0, specialdefense = 3.0, vitality = 10.0, agility = 125, exp = 160, level = 80, wildLvl = 80, type = "ice", type2 = "ground"},

["Corsola"] = {offense = 5.5, defense = 8.5, specialattack = 6.5, specialdefense = 6.0, vitality = 5.5, agility = 95, exp = 113, level = 50, wildLvl = 50, type = "water", type2 = "rock"},

["Remoraid"] = {offense = 6.5, defense = 3.5, specialattack = 6.5, specialdefense = 8.5, vitality = 3.5, agility = 120, exp = 78, level = 10, wildLvl = 10, type = "water", type2 = "no type"},

["Octillery"] = {offense = 10.5, defense = 7.5, specialattack = 10.5, specialdefense = 3.5, vitality = 7.5, agility = 115, exp = 164, level = 70, wildLvl = 70, type = "water", type2 = "no type"},

["Delibird"] = {offense = 5.5, defense = 4.5, specialattack = 6.5, specialdefense = 7.5, vitality = 4.5, agility = 130, exp = 183, level = 40, wildLvl = 40, type = "ice", type2 = "flying"},

["Mantine"] = {offense = 4.0, defense = 7.0, specialattack = 8.0, specialdefense = 4.5, vitality = 6.5, agility = 130, exp = 168, level = 80, wildLvl = 80, type = "water", type2 = "flying"},

["Skarmory"] = {offense = 8.0, defense = 14.0, specialattack = 4.0, specialdefense = 14.0, vitality = 6.5, agility = 169, exp = 168, level = 85, wildLvl = 85, type = "steel", type2 = "flying"},

["Houndour"] = {offense = 6.0, defense = 3.0, specialattack = 8.0, specialdefense = 7.0, vitality = 4.5, agility = 128, exp = 114, level = 20, wildLvl = 20, type = "dark", type2 = "fire"},

["Houndoom"] = {offense = 9.0, defense = 5.0, specialattack = 11.0, specialdefense = 8.0, vitality = 7.5, agility = 161, exp = 204, level = 80, wildLvl = 80, type = "dark", type2 = "fire"},

["Kingdra"] = {offense = 9.5, defense = 9.5, specialattack = 9.5, specialdefense = 9.5, vitality = 7.5, agility = 150, exp = 207, level = 90, wildLvl = 90, type = "water", type2 = "dragon"},

["Phanpy"] = {offense = 6.0, defense = 6.0, specialattack = 4.0, specialdefense = 4.0, vitality = 9.0, agility = 101, exp = 124, level = 20, wildLvl = 20, type = "ground", type2 = "no type"},

["Donphan"] = {offense = 12.0, defense = 12.0, specialattack = 6.0, specialdefense = 6.0, vitality = 9.0, agility = 112, exp = 189, level = 80, wildLvl = 80, type = "ground", type2 = "no type"},

["Porygon2"] = {offense = 8.0, defense = 9.0, specialattack = 10.5, specialdefense = 9.5, vitality = 8.5, agility = 123, exp = 180, level = 75, wildLvl = 75, type = "normal", type2 = "no type"},

["Stantler"] = {offense = 9.5, defense = 6.2, specialattack = 8.5, specialdefense = 6.5, vitality = 7.3, agility = 145, exp = 165, level = 55, wildLvl = 55, type = "normal", type2 = "no type"},

["Smeargle"] = {offense = 2.0, defense = 3.5, specialattack = 2.0, specialdefense = 4.5, vitality = 5.5, agility = 135, exp = 106, level = 80, wildLvl = 80, type = "normal", type2 = "no type"},

["Tyrogue"] = {offense = 3.5, defense = 3.5, specialattack = 3.5, specialdefense = 3.5, vitality = 3.5, agility = 120, exp = 91, level = 30, wildLvl = 30, type = "fighting", type2 = "no type"},

["Hitmontop"] = {offense = 9.5, defense = 9.5, specialattack = 3.5, specialdefense = 11.0, vitality = 5.0, agility = 135, exp = 138, level = 60, wildLvl = 60, type = "fighting", type2 = "no type"},

["Smoochum"] = {offense = 3.0, defense = 1.5, specialattack = 8.5, specialdefense = 6.5, vitality = 4.5, agility = 128, exp = 87, level = 30, wildLvl = 30, type = "ice", type2 = "psychic"},

["Elekid"] = {offense = 6.3, defense = 3.7, specialattack = 6.5, specialdefense = 5.5, vitality = 4.5, agility = 140, exp = 106, level = 30, wildLvl = 30, type = "electric", type2 = "no type"},

["Magby"] = {offense = 7.5, defense = 3.7, specialattack = 7.0, specialdefense = 5.5, vitality = 4.5, agility = 140, exp = 117, level = 30, wildLvl = 30, type = "fire", type2 = "no type"},

["Miltank"] = {offense = 8.0, defense = 10.5, specialattack = 4.0, specialdefense = 7.0, vitality = 6.0, agility = 167, exp = 200, level = 80, wildLvl = 80, type = "normal", type2 = "no type"},

["Shiny Miltank"] = {offense = 14.0, defense = 19.0, specialattack = 7.0, specialdefense = 13.5, vitality = 9.5, agility = 167, exp = 200, level = 80, wildLvl = 150, type = "normal", type2 = "no type"},

["Blissey"] = {offense = 1.0, defense = 1.0, specialattack = 7.5, specialdefense = 13.5, vitality = 12.0, agility = 117, exp = 255, level = 100, wildLvl = 5, type = "normal", type2 = "no type"},

["Raikou"] = {offense = 50.1, defense = 100.4, specialattack = 40.5, specialdefense = 80.0, vitality = 1000.0, agility = 180, exp = 216, level = 150, wildLvl = 300, type = "electric", type2 = "no type"},

["Entei"] = {offense = 50.2, defense = 100.5, specialattack = 40.6, specialdefense = 80.0, vitality = 1000.0, agility = 180, exp = 217, level = 150, wildLvl = 300, type = "fire", type2 = "no type"},

["Shaymin"] = {offense = 10.0, defense = 10.0, specialattack = 10.0, specialdefense = 9.0, vitality = 8.0, agility = 180, exp = 217, level = 150, wildLvl = 150, type = "fire", type2 = "no type"},

["Hoopa"] = {offense = 11.0, defense = 6.0, specialattack = 15.0, specialdefense = 6.0, vitality = 8.0, agility = 180, exp = 217, level = 150, wildLvl = 150, type = "fire", type2 = "no type"},

["Suicune"] = {offense = 50.3, defense = 101.5, specialattack = 49.0, specialdefense = 80.0, vitality = 1000.0, agility = 180, exp = 218, level = 150, wildLvl = 350, type = "water", type2 = "no type"},

["Mega Tyranitar"] = {offense = 15.0, defense = 20.0, specialattack = 15.5, specialdefense = 20.0, vitality = 19.0, agility = 135, exp = 218, level = 120, wildLvl = 200, type = "rock", type2 = "dark"},

["Larvitar"] = {offense = 6.4, defense = 5.0, specialattack = 4.5, specialdefense = 5.0, vitality = 5.0, agility = 110, exp = 67, level = 20, wildLvl = 20, type = "rock", type2 = "ground"},

["Pupitar"] = {offense = 8.4, defense = 7.0, specialattack = 6.5, specialdefense = 7.0, vitality = 7.0, agility = 120, exp = 144, level = 65, wildLvl = 65, type = "rock", type2 = "ground"},

["Tyranitar"] = {offense = 13.4, defense = 11.0, specialattack = 9.5, specialdefense = 10.0, vitality = 10.0, agility = 135, exp = 218, level = 100, wildLvl = 100, type = "rock", type2 = "dark"},

["Lugia"] = {offense = 60.4, defense = 101.0, specialattack = 40.0, specialdefense = 85.4, vitality = 1000.0, agility = 170, exp = 220, level = 150, wildLvl = 300, type = "psychic", type2 = "flying"},

["Ho-oh"] = {offense = 63.0, defense = 101.0, specialattack = 41.0, specialdefense = 85.4, vitality = 1000.0, agility = 170, exp = 220, level = 150, wildLvl = 300, type = "fire", type2 = "flying"},

["Celebi"] = {offense = 10.0, defense = 10.0, specialattack = 10.0, specialdefense = 10.0, vitality = 90.0, agility = 170, exp = 64, level = 150, wildLvl = 300, type = "psychic", type2 = "grass"},

["Shiny Hitmontop"] = {offense = 15.0, defense = 15.0, specialattack = 5.0, specialdefense = 15.0, vitality = 7.0, agility = 173, exp = 152.9, level = 1, wildLvl = 100, type = "fighting", type2 = "no type"},
 --alterado v1.9 \/
["Shiny Mr. Mime"] = {offense = 7.5, defense = 11.0, specialattack = 19.0, specialdefense = 14.5, vitality = 7.0, agility = 190, exp = 136, level = 1, wildLvl = 80, type = "psychic", type2 = "no type"},

["Shiny Rhydon"] = {offense = 22.0, defense = 21.0, specialattack = 9.0, specialdefense = 12.0, vitality = 18.0, agility = 127, exp = 204, level = 1, wildLvl = 75, type = "ground", type2 = "rock"},

["Shiny Ninetales"] = {offense = 13.0, defense = 12.0, specialattack = 15.0, specialdefense = 9.0, vitality = 12.0, agility = 167, exp = 178, level = 1, wildLvl = 70, type = "fire", type2 = "no type"},

["Shiny Ariados"] = {offense = 14.0, defense = 12.0, specialattack = 10.0, specialdefense = 10.0, vitality = 11.0, agility = 120, exp = 134, level = 1, wildLvl = 35, type = "bug", type2 = "poison"},

["Shiny Magneton"] = {offense = 11.0, defense = 14.0, specialattack = 20.0, specialdefense = 12.0, vitality = 8.0, agility = 134, exp = 161, level = 1, wildLvl = 40, type = "electric", type2 = "steel"},

["Shiny Espeon"] = {offense = 11.0, defense = 10.5, specialattack = 21.0, specialdefense = 9.0, vitality = 12.0, agility = 155, exp = 197, level = 1, wildLvl = 55, type = "psychic", type2 = "no type"},

["Shiny Politoed"] = {offense = 12.0, defense = 12.0, specialattack = 14.0, specialdefense = 8.0, vitality = 14.0, agility = 134, exp = 185, level = 1, wildLvl = 65, type = "water", type2 = "no type"},

["Shiny Umbreon"] = {offense = 11.0, defense = 20.0, specialattack = 11.5, specialdefense = 7.5, vitality = 14.0, agility = 145, exp = 197, level = 1, wildLvl = 55, type = "dark", type2 = "no type"},

["Shiny Stantler"] = {offense = 12.0, defense = 11.0, specialattack = 12.0, specialdefense = 10.0, vitality = 12.0, agility = 145, exp = 165, level = 1, wildLvl = 55, type = "normal", type2 = "no type"},

["Shiny Dodrio"] = {offense = 20.0, defense = 12.0, specialattack = 11.0, specialdefense = 12.0, vitality = 11.0, agility = 167, exp = 158, level = 1, wildLvl = 45, type = "normal", type2 = "flying"},

["Magmortar"] = {offense = 9.5, defense = 6.7, specialattack = 12.5, specialdefense = 12.0, vitality = 7.5, agility = 103, exp = 158, level = 100, wildLvl = 150, type = "fire", type2 = "no type"},

["Turtwig"] = {offense = 6.8, defense = 6.4, specialattack = 4.5, specialdefense = 5.5, vitality = 5.5, agility = 151, exp = 64, level = 5, wildLvl = 20, type = "grass", type2 = "no type"},

["Grotle"] = {offense = 8.9, defense = 8.5, specialattack = 5.5, specialdefense = 6.5, vitality = 7.5, agility = 156, exp = 141, level = 40, wildLvl = 40, type = "grass", type2 = "no type"},

["Torterra"] = {offense = 10.9, defense = 10.5, specialattack = 7.5, specialdefense = 8.5, vitality = 9.5, agility = 176, exp = 208, level = 85, wildLvl = 85, type = "grass", type2 = "ground"},

["Chimchar"] = {offense = 5.8, defense = 4.4, specialattack = 5.8, specialdefense = 4.4, vitality = 4.4, agility = 181, exp = 65, level = 5, wildLvl = 20, type = "fire", type2 = "no type"},

["Monferno"] = {offense = 7.8, defense = 5.2, specialattack = 7.8, specialdefense = 5.2, vitality = 6.4, agility = 201, exp = 142, level = 40, wildLvl = 40, type = "fire", type2 = "fighting"},

["Infernape"] = {offense = 10.4, defense = 7.1, specialattack = 10.4, specialdefense = 7.1, vitality = 7.6, agility = 228, exp = 209, level = 85, wildLvl = 85, type = "fire", type2 = "fighting"},

["Piplup"] = {offense = 5.1, defense = 5.3, specialattack = 6.1, specialdefense = 5.6, vitality = 5.3, agility = 160, exp = 66, level = 5, wildLvl = 20, type = "water", type2 = "no type"},

["Prinplup"] = {offense = 6.6, defense = 6.8, specialattack = 8.1, specialdefense = 7.6, vitality = 6.4, agility = 170, exp = 143, level = 40, wildLvl = 40, type = "water", type2 = "no type"},

["Empoleon"] = {offense = 8.6, defense = 8.8, specialattack = 11.1, specialdefense = 10.1, vitality = 8.4, agility = 180, exp = 210, level = 85, wildLvl = 85, type = "water", type2 = "steel"},

["Gible"] = {offense = 7.0, defense = 4.5, specialattack = 4.0, specialdefense = 3.0, vitality = 5.8, agility = 162, exp = 67, level = 40, wildLvl = 80, type = "dragon", type2 = "ground"},

["Gabite"] = {offense = 9.0, defense = 6.5, specialattack = 5.0, specialdefense = 4.0, vitality = 6.8, agility = 202, exp = 144, level = 80, wildLvl = 90, type = "dragon", type2 = "ground"},

["Garchomp"] = {offense = 13.0, defense = 9.5, specialattack = 8.0, specialdefense = 6.0, vitality = 10.8, agility = 222, exp = 218, level = 100, wildLvl = 150, type = "dragon", type2 = "ground"},

["Electivire"] = {offense = 12.3, defense = 6.7, specialattack = 9.5, specialdefense = 4.0, vitality = 7.5, agility = 215, exp = 156, level = 120, wildLvl = 150, type = "electric", type2 = "no type"},

["Darkrai"] = {offense = 54.0, defense = 100.0, specialattack = 43.5, specialdefense = 80.0, vitality = 1000.0, agility = 295, exp = 190, level = 200, wildLvl = 350, type = "ghost", type2 = "poison"},

["Darkrai Nightmare"] = {offense = 25.0, defense = 80.0, specialattack = 20.0, specialdefense = 90.8, vitality = 500.0, agility = 190, exp = 190, level = 200, wildLvl = 350, type = "ghost", type2 = "poison"},

["Togekiss"] = {offense = 9.0, defense = 14.5, specialattack = 16.0, specialdefense = 23.0, vitality = 12.5, agility = 190, exp = 220, level = 150, wildLvl = 150, type = "normal", type2 = "flying"},

["Mamoswine"] = {offense = 13.0, defense = 8.0, specialattack = 7.0, specialdefense = 12.0, vitality = 11.0, agility = 200, exp = 176, level = 65, wildLvl = 65, type = "ice", type2 = "ground"},

["Mega Lucario"] = {offense = 1.1, defense = 0.7, specialattack = 11.5, specialdefense = 21.0, vitality = .7, agility = 210, exp = 200, level = 120, wildLvl = 80, type = "fighting", type2 = "steel"},

["Riolu"] = {offense = 7.0, defense = 4.0, specialattack = 3.5, specialdefense = 10.0, vitality = 4.0, agility = 180, exp = 140, level = 60, wildLvl = 60, type = "fighting", type2 = "no type"},

["Lucario"] = {offense = 11.0, defense = 7.0, specialattack = 11.5, specialdefense = 21.0, vitality = 7.0, agility = 210, exp = 200, level = 80, wildLvl = 80, type = "fighting", type2 = "steel"},

["Starly"] = {offense = 5.5, defense = 3.0, specialattack = 3.0, specialdefense = 6.0, vitality = 4.0, agility = 180, exp = 55, level = 5, wildLvl = 5, type = "normal", type2 = "flying"},

["Staravia"] = {offense = 7.5, defense = 5.0, specialattack = 4.0, specialdefense = 4.0, vitality = 5.5, agility = 200, exp = 113, level = 20, wildLvl = 20, type = "normal", type2 = "flying"},

["Staraptor"] = {offense = 12.0, defense = 7.0, specialattack = 5.0, specialdefense = 12.0, vitality = 8.5, agility = 220, exp = 172, level = 75, wildLvl = 75, type = "normal", type2 = "flying"},

["Bidoof"] = {offense = 4.5, defense = 4.0, specialattack = 3.5, specialdefense = 4.0, vitality = 5.9, agility = 151, exp = 57, level = 15, wildLvl = 15, type = "normal", type2 = "no type"},

["Bibarel"] = {offense = 8.5, defense = 6.0, specialattack = 5.5, specialdefense = 6.0, vitality = 7.9, agility = 191, exp = 116, level = 35, wildLvl = 35, type = "normal", type2 = "water"},

["Kricketot"] = {offense = 2.5, defense = 4.1, specialattack = 2.5, specialdefense = 4.1, vitality = 3.7, agility = 145, exp = 60, level = 15, wildLvl = 15, type = "bug", type2 = "no type"},

["Kricketune"] = {offense = 8.5, defense = 5.1, specialattack = 5.5, specialdefense = 5.1, vitality = 7.7, agility = 185, exp = 118, level = 65, wildLvl = 65, type = "bug", type2 = "no type"},

["Shinx"] = {offense = 6.5, defense = 3.4, specialattack = 4.0, specialdefense = 3.4, vitality = 4.5, agility = 165, exp = 106, level = 30, wildLvl = 30, type = "electric", type2 = "no type"},

["Luxio"] = {offense = 8.5, defense = 4.9, specialattack = 6.0, specialdefense = 4.9, vitality = 6.0, agility = 180, exp = 117, level = 40, wildLvl = 60, type = "electric", type2 = "no type"},

["Luxray"] = {offense = 12.0, defense = 7.9, specialattack = 9.5, specialdefense = 7.9, vitality = 8.0, agility = 190, exp = 194, level = 85, wildLvl = 95, type = "electric", type2 = "no type"},

["Ambipom"] = {offense = 10.0, defense = 6.6, specialattack = 6.0, specialdefense = 6.6, vitality = 7.5, agility = 235, exp = 189, level = 90, wildLvl = 90, type = "normal", type2 = "no type"},

["Mismagius"] = {offense = 6.0, defense = 6.0, specialattack = 10.5, specialdefense = 10.5, vitality = 6.0, agility = 225, exp = 147, level = 80, wildLvl = 80, type = "ghost", type2 = "no type"},

["Drifloon"] = {offense = 5.0, defense = 3.4, specialattack = 6.0, specialdefense = 4.4, vitality = 9.0, agility = 190, exp = 126, level = 45, wildLvl = 45, type = "ghost", type2 = "flying"},

["Drifblim"] = {offense = 8.0, defense = 4.4, specialattack = 9.0, specialdefense = 5.4, vitality = 15.0, agility = 200, exp = 107, level = 55, wildLvl = 55, type = "ghost", type2 = "flying"},

["Shiny Drifblim"] = {offense = 16.0, defense = 8.5, specialattack = 17.0, specialdefense = 10.0, vitality = 29.0, agility = 200, exp = 107, level = 1, wildLvl = 55, type = "ghost", type2 = "flying"},

["Cranidos"] = {offense = 12.5, defense = 4.0, specialattack = 3.0, specialdefense = 3.0, vitality = 6.7, agility = 178, exp = 177, level = 70, wildLvl = 70, type = "rock", type2 = "no type"},

["Rampardos"] = {offense = 16.5, defense = 6.0, specialattack = 6.5, specialdefense = 5.0, vitality = 9.7, agility = 178, exp = 204, level = 75, wildLvl = 75, type = "rock", type2 = "no type"},

["Shieldon"] = {offense = 4.2, defense = 11.8, specialattack = 4.2, specialdefense = 8.8, vitality = 3.0, agility = 150, exp = 68, level = 40, wildLvl = 40, type = "rock", type2 = "steel"},

["Bastiodon"] = {offense = 5.2, defense = 16.8, specialattack = 4.7, specialdefense = 13.8, vitality = 6.0, agility = 150, exp = 59, level = 80, wildLvl = 50, type = "rock", type2 = "steel"},

["Burmy"] = {offense = 2.9, defense = 4.5, specialattack = 2.9, specialdefense = 4.5, vitality = 4.0, agility = 156, exp = 72, level = 15, wildLvl = 15, type = "bug", type2 = "no type"},

["Wormadam Grass"] = {offense = 5.9, defense = 8.5, specialattack = 7.9, specialdefense = 10.5, vitality = 6.0, agility = 156, exp = 72, level = 15, wildLvl = 15, type = "bug", type2 = "grass"},

["Wormadam Ground"] = {offense = 5.9, defense = 8.5, specialattack = 7.9, specialdefense = 10.5, vitality = 6.0, agility = 156, exp = 72, level = 15, wildLvl = 15, type = "bug", type2 = "ground"},

["Wormadam Steel"] = {offense = 5.9, defense = 8.5, specialattack = 7.9, specialdefense = 10.5, vitality = 6.0, agility = 156, exp = 72, level = 15, wildLvl = 15, type = "bug", type2 = "steel"},

["Mothim"] = {offense = 9.4, defense = 5.0, specialattack = 9.4, specialdefense = 5.0, vitality = 7.0, agility = 186, exp = 147, level = 50, wildLvl = 50, type = "bug", type2 = "flying"},

["Combee"] = {offense = 3.0, defense = 4.2, specialattack = 3.0, specialdefense = 4.2, vitality = 3.0, agility = 190, exp = 147, level = 30, wildLvl = 50, type = "bug", type2 = "flying"},

["Vespiquen"] = {offense = 8.0, defense = 10.2, specialattack = 8.0, specialdefense = 10.2, vitality = 7.0, agility = 160, exp = 147, level = 60, wildLvl = 50, type = "bug", type2 = "flying"},

["Pachirisu"] = {offense = 4.5, defense = 7.0, specialattack = 4.5, specialdefense = 9.0, vitality = 6.0, agility = 215, exp = 150, level = 35, wildLvl = 35, type = "electric", type2 = "no type"},

["Buizel"] = {offense = 6.5, defense = 3.5, specialattack = 6.0, specialdefense = 3.0, vitality = 5.5, agility = 205, exp = 141, level = 40, wildLvl = 40, type = "water", type2 = "no type"},

["Floatzel"] = {offense = 10.5, defense = 5.5, specialattack = 8.5, specialdefense = 5.0, vitality = 8.5, agility = 235, exp = 142, level = 85, wildLvl = 85, type = "water", type2 = "no type"},

["Cherubi"] = {offense = 3.5, defense = 4.5, specialattack = 6.2, specialdefense = 5.3, vitality = 4.5, agility = 155, exp = 78, level = 20, wildLvl = 40, type = "grass", type2 = "no type"},

["Cherrim"] = {offense = 6.0, defense = 7.0, specialattack = 8.7, specialdefense = 7.8, vitality = 7.0, agility = 205, exp = 78, level = 40, wildLvl = 40, type = "grass", type2 = "no type"},

["Honchkrow"] = {offense = 12.5, defense = 5.2, specialattack = 10.5, specialdefense = 6.2, vitality = 10.0, agility = 191, exp = 107, level = 85, wildLvl = 55, type = "dark", type2 = "flying"},

["Shiny Honchkrow"] = {offense = 12.5, defense = 5.2, specialattack = 10.5, specialdefense = 6.2, vitality = 10.0, agility = 191, exp = 107, level = 85, wildLvl = 55, type = "dark", type2 = "flying"},

["Shellos east"] = {offense = 4.8, defense = 4.8, specialattack = 5.7, specialdefense = 12.0, vitality = 7.6, agility = 154, exp = 66, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Shellos"] = {offense = 4.8, defense = 4.8, specialattack = 5.7, specialdefense = 12.0, vitality = 7.6, agility = 154, exp = 66, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Gastrodon east"] = {offense = 8.3, defense = 6.8, specialattack = 9.2, specialdefense = 13.5, vitality = 11.1, agility = 159, exp = 143, level = 40, wildLvl = 40, type = "water", type2 = "ground"},

["Gastrodon"] = {offense = 8.3, defense = 6.8, specialattack = 9.2, specialdefense = 13.5, vitality = 11.1, agility = 159, exp = 143, level = 40, wildLvl = 40, type = "water", type2 = "ground"},

["Buneary"] = {offense = 6.6, defense = 4.4, specialattack = 4.4, specialdefense = 5.6, vitality = 5.5, agility = 205, exp = 189, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Lopunny"] = {offense = 7.6, defense = 8.4, specialattack = 5.4, specialdefense = 9.6, vitality = 6.5, agility = 225, exp = 189, level = 80, wildLvl = 80, type = "normal", type2 = "no type"},

["Glameow"] = {offense = 5.5, defense = 4.2, specialattack = 4.2, specialdefense = 10.5, vitality = 4.9, agility = 205, exp = 189, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Purugly"] = {offense = 8.2, defense = 6.4, specialattack = 6.4, specialdefense = 5.9, vitality = 7.1, agility = 232, exp = 189, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Stunky"] = {offense = 6.3, defense = 4.7, specialattack = 4.1, specialdefense = 5.0, vitality = 6.3, agility = 194, exp = 114, level = 20, wildLvl = 20, type = "poison", type2 = "dark"},

["Skuntank"] = {offense = 9.3, defense = 6.7, specialattack = 7.1, specialdefense = 6.1, vitality = 10.3, agility = 204, exp = 114, level = 40, wildLvl = 40, type = "poison", type2 = "dark"},

["Bronzor"] = {offense = 2.4, defense = 8.6, specialattack = 2.4, specialdefense = 8.6, vitality = 5.7, agility = 143, exp = 87, level = 30, wildLvl = 30, type = "steel", type2 = "psychic"},

["Bronzong"] = {offense = 8.9, defense = 11.6, specialattack = 7.9, specialdefense = 11.6, vitality = 6.7, agility = 153, exp = 87, level = 70, wildLvl = 70, type = "steel", type2 = "psychic"},

["Shiny Bronzong"] = {offense = 15.0, defense = 22.0, specialattack = 14.0, specialdefense = 23.5, vitality = 12.0, agility = 153, exp = 87, level = 1, wildLvl = 150, type = "psychic", type2 = "steel"},

["Bonsly"] = {offense = 8.0, defense = 9.5, specialattack = 1.0, specialdefense = 4.5, vitality = 5.0, agility = 130, exp = 135, level = 50, wildLvl = 50, type = "rock", type2 = "no type"},

["Happiny"] = {offense = 0.5, defense = 0.5, specialattack = 1.5, specialdefense = 6.5, vitality = 10.0, agility = 150, exp = 255, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Chatot"] = {offense = 6.5, defense = 4.5, specialattack = 9.2, specialdefense = 4.2, vitality = 7.6, agility = 221, exp = 126, level = 45, wildLvl = 45, type = "normal", type2 = "flying"},

["Hippopotas"] = {offense = 7.2, defense = 7.8, specialattack = 3.8, specialdefense = 4.2, vitality = 6.8, agility = 152, exp = 153, level = 35, wildLvl = 35, type = "ground", type2 = "no type"},

["Hippowdon"] = {offense = 11.2, defense = 11.8, specialattack = 6.8, specialdefense = 7.2, vitality = 10.8, agility = 167, exp = 153, level = 60, wildLvl = 35, type = "ground", type2 = "no type"},

["Skorupi"] = {offense = 5.0, defense = 9.0, specialattack = 3.0, specialdefense = 5.5, vitality = 4.0, agility = 185, exp = 134, level = 40, wildLvl = 35, type = "poison", type2 = "bug"},

["Drapion"] = {offense = 9.0, defense = 11.0, specialattack = 6.0, specialdefense = 7.5, vitality = 7.0, agility = 215, exp = 147, level = 35, wildLvl = 100, type = "poison", type2 = "dark"},

["Croagunk"] = {offense = 6.1, defense = 4.0, specialattack = 6.1, specialdefense = 4.0, vitality = 4.8, agility = 170, exp = 126, level = 50, wildLvl = 80, type = "poison", type2 = "fighting"},

["Toxicroak"] = {offense = 10.6, defense = 6.5, specialattack = 8.6, specialdefense = 6.5, vitality = 8.3, agility = 205, exp = 126, level = 80, wildLvl = 100, type = "poison", type2 = "fighting"},

["Carnivine"] = {offense = 10.0, defense = 7.2, specialattack = 9.0, specialdefense = 7.2, vitality = 7.4, agility = 166, exp = 78, level = 70, wildLvl = 100, type = "grass", type2 = "no type"},

["Shiny Carnivine"] = {offense = 20.0, defense = 14.0, specialattack = 16.0, specialdefense = 14.0, vitality = 13.0, agility = 200, exp = 78, level = 70, wildLvl = 100, type = "grass", type2 = "no type"},

["Finneon"] = {offense = 4.9, defense = 5.6, specialattack = 4.9, specialdefense = 5.6, vitality = 4.9, agility = 186, exp = 66, level = 20, wildLvl = 20, type = "water", type2 = "no type"},

["Lumineon"] = {offense = 6.9, defense = 7.6, specialattack = 6.9, specialdefense = 7.6, vitality = 6.9, agility = 211, exp = 66, level = 40, wildLvl = 40, type = "water", type2 = "no type"},

["Mantyke"] = {offense = 2.0, defense = 5.0, specialattack = 6.0, specialdefense = 5.0, vitality = 4.5, agility = 170, exp = 105, level = 15, wildLvl = 20, type = "water", type2 = "flying"},

["Snover"] = {offense = 6.2, defense = 5.0, specialattack = 6.2, specialdefense = 5.0, vitality = 6.0, agility = 160, exp = 176, level = 40, wildLvl = 40, type = "grass", type2 = "ice"},

["Abomasnow"] = {offense = 9.2, defense = 7.5, specialattack = 9.2, specialdefense = 7.5, vitality = 9.0, agility = 180, exp = 176, level = 80, wildLvl = 80, type = "grass", type2 = "ice"},

["Shiny Abomasnow"] = {offense = 15.0, defense = 12.0, specialattack = 15.0, specialdefense = 12.0, vitality = 15.0, agility = 230, exp = 176, level = 1, wildLvl = 150, type = "grass", type2 = "ice"},

["Weavile"] = {offense = 12.0, defense = 6.5, specialattack = 4.5, specialdefense = 6.5, vitality = 7.0, agility = 245, exp = 176, level = 80, wildLvl = 80, type = "dark", type2 = "ice"},

["Gliscor"] = {offense = 9.5, defense = 12.5, specialattack = 4.5, specialdefense = 12.5, vitality = 7.5, agility = 215, exp = 176, level = 70, wildLvl = 70, type = "ground", type2 = "flying"},

["Lickilicky"] = {offense = 8.5, defense = 9.5, specialattack = 8.0, specialdefense = 9.5, vitality = 11.0, agility = 170, exp = 176, level = 70, wildLvl = 70, type = "normal", type2 = "no type"},

["Tangrowth"] = {offense = 10.0, defense = 12.5, specialattack = 11.0, specialdefense = 10.0, vitality = 10.0, agility = 170, exp = 176, level = 80, wildLvl = 80, type = "grass", type2 = "no type"},

["Shiny Tangrowth"] = {offense = 19.0, defense = 21.0, specialattack = 21.0, specialdefense = 9.0, vitality = 20.0, agility = 240, exp = 400, level = 1, wildLvl = 150, type = "grass", type2 = "no type"},

["Shiny Togekiss"] = {offense = 13.5, defense = 15.0, specialattack = 21.0, specialdefense = 23.0, vitality = 19.0, agility = 240, exp = 220, level = 1, wildLvl = 150, type = "normal", type2 = "flying"},

["Yanmega"] = {offense = 7.6, defense = 8.6, specialattack = 11.6, specialdefense = 8.6, vitality = 8.6, agility = 215, exp = 176, level = 80, wildLvl = 80, type = "bug", type2 = "flying"},
-----------------------------------------------------------Startos Pokemon Hoenn-----------------------------------------------------------

["Roselia"] = {offense = 6.0, defense = 4.5, specialattack = 10.0, specialdefense = 8.0, vitality = 5.0, agility = 105, exp = 92.4, level = 45, wildLvl = 45, type = "grass", type2 = "poison"},

["Anorith"] = {offense = 9.5, defense = 5.0, specialattack = 4.0, specialdefense = 5.0, vitality = 4.5, agility = 105, exp = 80, level = 20, wildLvl = 50, type = "rock", type2 = "bug"},

["Armaldo"] = {offense = 12.5, defense = 10.0, specialattack = 7.0, specialdefense = 10.0, vitality = 7.5, agility = 165, exp = 200, level = 60, wildLvl = 90, type = "rock", type2 = "bug"},

["Aron"] = {offense = 7.0, defense = 10.0, specialattack = 4.0, specialdefense = 4.0, vitality = 5.0, agility = 150, exp = 73, level = 15, wildLvl = 40, type = "steel", type2 = "rock"},

["Lairon"] = {offense = 9.0, defense = 14.0, specialattack = 5.0, specialdefense = 6.0, vitality = 6.0, agility = 160, exp = 118.8, level = 50, wildLvl = 60, type = "steel", type2 = "rock"},

["Aggron"] = {offense = 11.0, defense = 18.0, specialattack = 6.0, specialdefense = 9.2, vitality = 7.0, agility = 170, exp = 224.4, level = 75, wildLvl = 72, type = "steel", type2 = "rock"},

["Bagon"] = {offense = 7.5, defense = 6.0, specialattack = 4.0, specialdefense = 3.0, vitality = 4.5, agility = 170, exp = 158.4, level = 35, wildLvl = 40, type = "dragon", type2 = "no type"},

["Shelgon"] = {offense = 9.5, defense = 10.0, specialattack = 6.0, specialdefense = 5.5, vitality = 6.5, agility = 170, exp = 158.4, level = 55, wildLvl = 78, type = "dragon", type2 = "no type"},

["Giratina"] = {offense = 10.0, defense = 12.0, specialattack = 10.0, specialdefense = 20.0, vitality = 15.0, agility = 205, exp = 300, level = 150, wildLvl = 95, type = "flying", type2 = "dragon"},

["Dialga"] = {offense = 12.0, defense = 12.0, specialattack = 15.0, specialdefense = 20.0, vitality = 10.0, agility = 220, exp = 300, level = 120, wildLvl = 100, type = "dragon", type2 = "flying"},

["Salamence"] = {offense = 13.5, defense = 8.0, specialattack = 11.0, specialdefense = 8.0, vitality = 9.5, agility = 220, exp = 239.8, level = 85, wildLvl = 100, type = "dragon", type2 = "flying"},

["Barboach"] = {offense = 4.8, defense = 4.3, specialattack = 4.6, specialdefense = 4.1, vitality = 5.0, agility = 180, exp = 52, level = 18, wildLvl = 20, type = "water", type2 = "ground"},

["Whiscash"] = {offense = 7.8, defense = 7.3, specialattack = 7.6, specialdefense = 8.0, vitality = 11.0, agility = 180, exp = 137, level = 55, wildLvl = 68, type = "water", type2 = "ground"},

["Roserade"] = {offense = 7.0, defense = 6.5, specialattack = 12.5, specialdefense = 10.5, vitality = 6.0, agility = 210, exp = 166.1, level = 80, wildLvl = 82, type = "grass", type2 = "poison"},

["Shiny Roserade"] = {offense = 12.0, defense = 12.5, specialattack = 24.0, specialdefense = 21.0, vitality = 21.0, agility = 210, exp = 166.1, level = 1, wildLvl = 150, type = "grass", type2 = "poison"},

["Budew"] = {offense = 3.0, defense = 3.5, specialattack = 5.0, specialdefense = 3.5, vitality = 4.0, agility = 175, exp = 85.8, level = 10, wildLvl = 15, type = "grass", type2 = "poison"},

["Shiny Aron"] = {offense = 12.0, defense = 19.0, specialattack = 8.0, specialdefense = 10.0, vitality = 9.0, agility = 210, exp = 146, level = 1, wildLvl = 150, type = "steel", type2 = "rock"},

["Shiny Lairon"] = {offense = 14.5, defense = 26.0, specialattack = 9.0, specialdefense = 12.0, vitality = 11.0, agility = 210, exp = 320, level = 1, wildLvl = 150, type = "steel", type2 = "rock"},

["Shiny Aggron"] = {offense = 21.0, defense = 34.0, specialattack = 11.0, specialdefense = 14.5, vitality = 17.0, agility = 210, exp = 248.8, level = 1, wildLvl = 150, type = "steel", type2 = "rock"},

["Shiny Bagon"] = {offense = 12.5, defense = 11.0, specialattack = 7.0, specialdefense = 6.0, vitality = 8.0, agility = 210, exp = 164.8, level = 1, wildLvl = 150, type = "dragon", type2 = "no type"},

["Shiny Shelgon"] = {offense = 14.0, defense = 19.0, specialattack = 11.0, specialdefense = 10.0, vitality = 11.5, agility = 210, exp = 320, level = 1, wildLvl = 150, type = "dragon", type2 = "no type"},

["Shiny Salamence"] = {offense = 25.0, defense = 12.0, specialattack = 21.0, specialdefense = 14.5, vitality = 17.5, agility = 210, exp = 280, level = 1, wildLvl = 150, type = "dragon", type2 = "flying"},

["Cacnea"] = {offense = 8.5, defense = 4.0, specialattack = 8.5, specialdefense = 4.0, vitality = 5.0, agility = 155, exp = 64, level = 28, wildLvl = 34, type = "grass", type2 = "no type"},

["Cacturne"] = {offense = 11.5, defense = 6.0, specialattack = 11.5, specialdefense = 4.0, vitality = 7.0, agility = 175, exp = 141, level = 58, wildLvl = 68, type = "grass", type2 = "dark"},

["Castform"] = {offense = 7.0, defense = 7.0, specialattack = 7.0, specialdefense = 9.0, vitality = 7.0, agility = 190, exp = 39, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Chingling"] = {offense = 3.0, defense = 5.0, specialattack = 6.5, specialdefense = 4.5, vitality = 4.5, agility = 165, exp = 82.5, level = 20, wildLvl = 25, type = "psychic", type2 = "no type"},

["Chimecho"] = {offense = 5.0, defense = 8.0, specialattack = 9.5, specialdefense = 4.0, vitality = 6.5, agility = 185, exp = 159.5, level = 40, wildLvl = 50, type = "psychic", type2 = "no type"},

["Clamperl"] = {offense = 6.4, defense = 8.5, specialattack = 7.4, specialdefense = 9.0, vitality = 3.5, agility = 152, exp = 58, level = 14, wildLvl = 25, type = "water", type2 = "no type"},

["Huntail"] = {offense = 10.4, defense = 10.5, specialattack = 9.4, specialdefense = 12.0, vitality = 5.5, agility = 172, exp = 141, level = 48, wildLvl = 48, type = "water", type2 = "no type"},

["Gorebyss"] = {offense = 8.4, defense = 10.5, specialattack = 114 , specialdefense = 7.5, vitality = 5.5, agility = 172, exp = 168, level = 50, wildLvl = 68, type = "water", type2 = "flying"},

["Corphish"] = {offense = 8.0, defense = 6.5, specialattack = 5.0, specialdefense = 5.0, vitality = 4.3, agility = 155, exp = 66, level = 18, wildLvl = 23, type = "water", type2 = "no type"},

["Crawdaunt"] = {offense = 12.0, defense = 8.5, specialattack = 9.0, specialdefense = 9.0, vitality = 6.3, agility = 175, exp = 141, level = 40, wildLvl = 40, type = "water", type2 = "dark"},

["Duskull"] = {offense = 4.0, defense = 9.0, specialattack = 3.0, specialdefense = 9.0, vitality = 2.0, agility = 145, exp = 104.5, level = 16, wildLvl = 25, type = "ghost", type2 = "no type"},

["Dusclops"] = {offense = 7.0, defense = 13.0, specialattack = 6.0, specialdefense = 13.0, vitality = 4.0, agility = 145, exp = 138.6, level = 42, wildLvl = 40, type = "ghost", type2 = "no type"},

["Dusknoir"] = {offense = 10.0, defense = 13.5, specialattack = 6.5, specialdefense = 13.5, vitality = 4.5, agility = 165, exp = 209, level = 73, wildLvl = 80, type = "ghost", type2 = "no type"},

["Electrike"] = {offense = 4.5, defense = 4.0, specialattack = 6.5, specialdefense = 4.0, vitality = 4.0, agility = 185, exp = 90.2, level = 20, wildLvl = 30, type = "electric", type2 = "no type"},

["Manectric"] = {offense = 7.5, defense = 6.0, specialattack = 10.5, specialdefense = 6.0, vitality = 7.0, agility = 225, exp = 134.2, level = 50, wildLvl = 68, type = "electric", type2 = "no type"},

["Shiny Manectric"] = {offense = 12.0, defense = 11.0, specialattack = 20.0, specialdefense = 12.0, vitality = 17.0, agility = 225, exp = 134.2, level = 50, wildLvl = 150, type = "electric", type2 = "no type"},

["Gulpin"] = {offense = 4.3, defense = 5.3, specialattack = 4.3, specialdefense = 5.3, vitality = 7.0, agility = 160, exp = 99, level = 25, wildLvl = 25, type = "poison", type2 = "no type"},

["Swalot"] = {offense = 7.3, defense = 8.3, specialattack = 7.3, specialdefense = 8.3, vitality = 10.0, agility = 175, exp = 172.7, level = 65, wildLvl = 65, type = "poison", type2 = "no type"},

["Kecleon"] = {offense = 9.0, defense = 7.0, specialattack = 6.0, specialdefense = 7.0, vitality = 6.0, agility = 160, exp = 106, level = 30, wildLvl = 30, type = "normal", type2 = "no type"},

["Lileep"] = {offense = 4.1, defense = 7.7, specialattack = 6.1, specialdefense = 8.7, vitality = 6.6, agility = 143, exp = 64, level = 20, wildLvl = 20, type = "rock", type2 = "grass"},

["Cradily"] = {offense = 8.1, defense = 9.7, specialattack = 8.1, specialdefense = 10.7, vitality = 8.6, agility = 163, exp = 141, level = 80, wildLvl = 80, type = "rock", type2 = "grass"},

["Shiny Lileep"] = {offense = 8.0, defense = 12.0, specialattack = 11.0, specialdefense = 16.0, vitality = 11.0, agility = 286, exp = 168, level = 1, wildLvl = 20, type = "rock", type2 = "grass"},

["Shiny Cradily"] = {offense = 12.0, defense = 14.0, specialattack = 12.0, specialdefense = 21.4, vitality = 17.0, agility = 326, exp = 242, level = 1, wildLvl = 150, type = "rock", type2 = "grass"},

["Lotad"] = {offense = 3.0, defense = 3.0, specialattack = 4.0, specialdefense = 3.0, vitality = 4.0, agility = 150, exp = 64, level = 20, wildLvl = 28, type = "water", type2 = "grass"},

["Lombre"] = {offense = 5.0, defense = 5.0, specialattack = 6.0, specialdefense = 5.0, vitality = 6.0, agility = 170, exp = 141, level = 45, wildLvl = 50, type = "water", type2 = "grass"},

["Ludicolo"] = {offense = 7.0, defense = 7.0, specialattack = 9.0, specialdefense = 7.0, vitality = 8.0, agility = 190, exp = 208, level = 75, wildLvl = 80, type = "water", type2 = "grass"},

["Luvdisc"] = {offense = 3.0, defense = 5.5, specialattack = 4.0, specialdefense = 5.5, vitality = 4.3, agility = 217, exp = 78, level = 15, wildLvl = 20, type = "water", type2 = "no type"},

["Makuhita"] = {offense = 6.0, defense = 3.0, specialattack = 2.0, specialdefense = 3.0, vitality = 7.2, agility = 145, exp = 91, level = 15, wildLvl = 20, type = "fighting", type2 = "no type"},

["Hariyama"] = {offense = 12.0, defense = 6.0, specialattack = 4.0, specialdefense = 6.0, vitality = 14.4, agility = 170, exp = 138, level = 75, wildLvl = 80, type = "fighting", type2 = "no type"},

["Mawile"] = {offense = 8.5, defense = 8.5, specialattack = 5.5, specialdefense = 8.5, vitality = 5.0, agility = 170, exp = 118.8, level = 55, wildLvl = 50, type = "steel", type2 = "no type"},

["Meditite"] = {offense = 4.0, defense = 5.5, specialattack = 4.0, specialdefense = 5.5, vitality = 3.0, agility = 900, exp = 82.5, level = 20, wildLvl = 20, type = "fighting", type2 = "psychic"},

["Medicham"] = {offense = 6.0, defense = 7.5, specialattack = 6.0, specialdefense = 7.5, vitality = 6.0, agility = 1000, exp = 159.5, level = 50, wildLvl = 50, type = "fighting", type2 = "psychic"},

["Nincada"] = {offense = 4.5, defense = 9.0, specialattack = 3.0, specialdefense = 9.0, vitality = 3.1, agility = 160, exp = 79.2, level = 10, wildLvl = 20, type = "bug", type2 = "ground"},

["Ninjask"] = {offense = 9.0, defense = 4.5, specialattack = 5.0, specialdefense = 4.5, vitality = 6.1, agility = 500, exp = 54, level = 35, wildLvl = 35, type = "bug", type2 = "flying"},

["Shedinja"] = {offense = 9.0, defense = 4.5, specialattack = 3.0, specialdefense = 4.5, vitality = .1, agility = 160, exp = 134, level = 45, wildLvl = 55, type = "bug", type2 = "ghost"},

["Poochyena"] = {offense = 5.5, defense = 3.5, specialattack = 3.0, specialdefense = 3.5, vitality = 3.5, agility = 155, exp = 197, level = 25, wildLvl = 25, type = "dark", type2 = "no type"},

["Mightyena"] = {offense = 9.0, defense = 7.0, specialattack = 6.0, specialdefense = 7.0, vitality = 7.0, agility = 190, exp = 197, level = 60, wildLvl = 60, type = "dark", type2 = "no type"},

["Ralts"] = {offense = 2.5, defense = 2.5, specialattack = 4.5, specialdefense = 4.0, vitality = 2.8, agility = 160, exp = 82.5, level = 15, wildLvl = 15,  type = "psychic", type2 = "no type"},

["Kirlia"] = {offense = 3.5, defense = 3.5, specialattack = 6.5, specialdefense = 6.0, vitality = 3.8, agility = 170, exp = 159.5, level = 45, wildLvl = 45, type = "psychic", type2 = "no type"},

["Gardevoir"] = {offense = 6.5, defense = 6.5 , specialattack = 12.5, specialdefense = 11.5, vitality = 6.8, agility = 200, exp = 204.6, level = 70, wildLvl = 70, type = "psychic", type2 = "no type"},

["Shiny Gardevoir"] = {offense = 11.5, defense = 11.5, specialattack = 24.5, specialdefense = 23.0, vitality = 12.0, agility = 200, exp = 204.6, level = 1, wildLvl = 150, type = "psychic", type2 = "no type"},

["Gallade"] = {offense = 12.5, defense = 6.5, specialattack = 6.5, specialdefense = 11.5, vitality = 6.8, agility = 200, exp = 204.6, level = 90, wildLvl = 130,  type = "psychic", type2 = "fighting"},

["Relicanth"] = {offense = 9.0, defense = 13.0, specialattack = 4.5, specialdefense = 6.0, vitality = 10.0, agility = 175, exp = 218.9, level = 70, wildLvl = 78, type = "water", type2 = "rock"},

["Sableye"] = {offense = 7.5, defense = 7.5, specialattack = 6.5, specialdefense = 6.5, vitality = 5.0, agility = 170, exp = 147, level = 47, wildLvl = 50, type = "dark", type2 = "ghost"},

["Seedot"] = {offense = 4.0, defense = 5.0, specialattack = 3.0, specialdefense = 3.0, vitality = 4.0, agility = 150, exp = 64, level = 18, wildLvl = 18, type = "grass", type2 = "no type"},

["Nuzleaf"] = {offense = 7.0, defense = 4.0, specialattack = 6.0, specialdefense = 4.0, vitality = 7.0, agility = 180, exp = 141, level = 42, wildLvl = 46, type = "grass", type2 = "dark"},

["Shiftry"] = {offense = 8.0, defense = 9.0, specialattack = 9.0, specialdefense = 6.0, vitality = 11.0, agility = 200, exp = 208, level = 75, wildLvl = 80, type = "grass", type2 = "dark"},

["Seviper"] = {offense = 10.0, defense = 6.0, specialattack = 10.0, specialdefense = 6.0, vitality = 7.3, agility = 185, exp = 190.3, level = 45, wildLvl = 42, type = "poison", type2 = "no type"},

["Shroomish"] = {offense = 4.0, defense = 6.0, specialattack = 4.0, specialdefense = 6.0, vitality = 6.0, agility = 155, exp = 52, level = 22, wildLvl = 28, type = "grass", type2 = "no type"},

["Breloom"] = {offense = 13.0, defense = 8.0, specialattack = 6.0, specialdefense = 8.0, vitality = 6.0, agility = 190, exp = 146, level = 55, wildLvl = 58, type = "grass", type2 = "fighting"},

["Shuppet"] = {offense = 7.5, defense = 3.5, specialattack = 6.3, specialdefense = 3.0, vitality = 4.4, agility = 165, exp = 104.5, level = 20, wildLvl = 20, type = "ghost", type2 = "no type"},

["Banette"] = {offense = 11.5, defense = 6.5, specialattack = 8.3, specialdefense = 6.0, vitality = 6.4, agility = 185, exp = 138.6, level = 60, wildLvl = 70, type = "ghost", type2 = "no type"},

["Skitty"] = {offense = 4.5, defense = 4.5, specialattack = 3.5, specialdefense = 4.0, vitality = 5.0, agility = 170, exp = 75.9, level = 22, wildLvl = 30, type = "normal", type2 = "no type"},

["Delcatty"] = {offense = 6.5, defense = 6.5, specialattack = 5.5, specialdefense = 6.0, vitality = 7.0, agility = 190, exp = 162.8, level = 45, wildLvl = 52, type = "normal", type2 = "no type"},

["Slakoth"] = {offense = 6.0, defense = 6.0, specialattack = 3.5, specialdefense = 6.0, vitality = 6.0, agility = 150, exp = 124, level = 25, wildLvl = 28, type = "normal", type2 = "no type"},

["Vigoroth"] = {offense = 8.0, defense = 8.0, specialattack = 5.5, specialdefense = 8.0, vitality = 8.0, agility = 210, exp = 124, level = 55, wildLvl = 60, type = "normal", type2 = "no type"},

["Slaking"] = {offense = 16.0, defense = 10.0, specialattack = 9.5, specialdefense = 6.5, vitality = 15.0, agility = 220, exp = 189, level = 90, wildLvl = 100, type = "normal", type2 = "no type"},

["Spheal"] = {offense = 4.0, defense = 5.0, specialattack = 5.5, specialdefense = 6.5, vitality = 7.0, agility = 145, exp = 110, level = 30, wildLvl = 35, type = "ice", type2 = "water"},

["Glaceon"] = {offense = 6.0, defense = 11.0, specialattack = 13.0, specialdefense = 9.0, vitality = 6.5, agility = 165, exp = 193.6, level = 55, wildLvl = 58, type = "ice", type2 = "Ice"},

["Shiny Glaceon"] = {offense = 6.0, defense = 11.0, specialattack = 13.0, specialdefense = 9.0, vitality = 6.5, agility = 165, exp = 193.6, level = 55, wildLvl = 58, type = "ice", type2 = "Ice"},

["Sealeo"] = {offense = 6.0, defense = 7.0, specialattack = 7.5, specialdefense = 10.0, vitality = 9.0, agility = 165, exp = 193.6, level = 55, wildLvl = 58, type = "ice", type2 = "water"},

["Walrein"] = {offense = 8.0, defense = 9.0, specialattack = 9.5, specialdefense = 9.0, vitality = 11.0, agility = 185, exp = 223.3, level = 75, wildLvl = 80, type = "ice", type2 = "water"},

["Spinda"] = {offense = 6.0, defense = 6.0, specialattack = 6.0, specialdefense = 6.0, vitality = 6.0, agility = 180, exp = 106, level = 40, wildLvl = 40, type = "normal", type2 = "no type"},

["Spoink"] = {offense = 2.5, defense = 3.5, specialattack = 7.0, specialdefense = 3.5, vitality = 6.0, agility = 180, exp = 112.2, level = 20, wildLvl = 28, type = "psychic", type2 = "no type"},

["Grumpig"] = {offense = 4.5, defense = 6.5, specialattack = 9.0, specialdefense = 6.5, vitality = 8.0, agility = 200, exp = 181.5, level = 50, wildLvl = 52, type = "psychic", type2 = "no type"},

["Surskit"] = {offense = 3.0, defense = 3.2, specialattack = 5.0, specialdefense = 3.2, vitality = 4.0, agility = 185, exp = 82.5, level = 14, wildLvl = 22, type = "bug", type2 = "water"},

["Masquerain"] = {offense = 6.0, defense = 6.2, specialattack = 10.0, specialdefense = 6.2, vitality = 7.0, agility = 180, exp = 151.8, level = 40, wildLvl = 42, type = "bug", type2 = "flying"},

["Taillow"] = {offense = 5.5, defense = 3.0, specialattack = 3.0, specialdefense = 3.0, vitality = 4.0, agility = 205, exp = 58, level = 10, wildLvl = 12, type = "normal", type2 = "flying"},

["Swellow"] = {offense = 8.5, defense = 6.0, specialattack = 7.5, specialdefense = 6.0, vitality = 6.0, agility = 245, exp = 162, level = 38, wildLvl = 45, type = "normal", type2 = "flying"},

["Shiny Swellow"] = {offense = 8.5, defense = 6.0, specialattack = 7.5, specialdefense = 6.0, vitality = 10/.0, agility = 245, exp = 162, level = 38, wildLvl = 45, type = "normal", type2 = "flying"},

["Torkoal"] = {offense = 8.5, defense = 14.0, specialattack = 8.5, specialdefense = 14.0, vitality = 7.0, agility = 140, exp = 211.2, level = 55, wildLvl = 62, type = "fire", type2 = "no type"},

["Trapinch"] = {offense = 10.0, defense = 4.5, specialattack = 4.5, specialdefense = 4.5, vitality = 4.5, agility = 130, exp = 73.7, level = 20, wildLvl = 20, type = "ground", type2 = "no type"},

["Vibrava"] = {offense = 7.0, defense = 5.0, specialattack = 5.0, specialdefense = 5.0, vitality = 5.0, agility = 190, exp = 158.4, level = 50, wildLvl = 58, type = "ground", type2 = "dragon"},

["Flygon"] = {offense = 10.0, defense = 8.0, specialattack = 8.0, specialdefense = 8.0, vitality = 8.0, agility = 220, exp = 239.8, level = 85, wildLvl = 95, type = "ground", type2 = "dragon"},

["Illumise"] = {offense = 4.7, defense = 7.5, specialattack = 7.3, specialdefense = 7.5, vitality = 6.5, agility = 105, exp = 54, level = 30, wildLvl = 30, type = "bug", type2 = "no type"},

["Volbeat"] = {offense = 7.3, defense = 7.5, specialattack = 4.7, specialdefense = 7.0, vitality = 6.5, agility = 105, exp = 134, level = 30, wildLvl = 30, type = "bug", type2 = "no type"},

["Wingull"] = {offense = 3.0, defense = 3.0, specialattack = 5.5, specialdefense = 3.0, vitality = 4.0, agility = 205, exp = 66, level = 18, wildLvl = 27, type = "water", type2 = "flying"},

["Pelipper"] = {offense = 5.0, defense = 10.0, specialattack = 9.5, specialdefense = 10.0, vitality = 6.0, agility = 185, exp = 141, level = 52, wildLvl = 62, type = "water", type2 = "flying"},

["Whismur"] = {offense = 5.1, defense = 2.3, specialattack = 5.1, specialdefense = 2.3, vitality = 6.4, agility = 148, exp = 124, level = 25, wildLvl = 32, type = "normal", type2 = "no type"},

["Loudred"] = {offense = 7.1, defense = 4.3, specialattack = 7.1, specialdefense = 4.3, vitality = 8.4, agility = 168, exp = 189, level = 50, wildLvl = 55, type = "normal", type2 = "no type"},

["Exploud"] = {offense = 9.1, defense = 6.3, specialattack = 9.1, specialdefense = 6.3, vitality = 10.4, agility = 188, exp = 189, level = 85, wildLvl = 90, type = "normal", type2 = "no type"},

["Wurmple"] = {offense = 4.5, defense = 3.5, specialattack = 2.0, specialdefense = 3.5, vitality = 4.5, agility = 140, exp = 58.3, level = 10, wildLvl = 10, type = "bug", type2 = "no type"},

["Silcoon"] = {offense = 3.5, defense = 5.5, specialattack = 2.5, specialdefense = 5.5, vitality = 5.0, agility = 135, exp = 79.2, level = 20, wildLvl = 28, type = "bug", type2 = "no type"},

["Cascoon"] = {offense = 3.5, defense = 5.5, specialattack = 2.5, specialdefense = 5.5, vitality = 5.0, agility = 135, exp = 79.2, level = 20, wildLvl = 28, type = "bug", type2 = "no type"},

["Beautifly"] = {offense = 7.0, defense = 5.0, specialattack = 10.0, specialdefense = 5.0, vitality = 6.0, agility = 185, exp = 176, level = 45, wildLvl = 52, type = "bug", type2 = "flying"},

["Dustox"] = {offense = 5.0, defense = 7.0, specialattack = 5.0, specialdefense = 7.0, vitality = 6.0, agility = 185, exp = 154.9, level = 45, wildLvl = 42, type = "bug", type2 = "poison"},

["Zigzagoon"] = {offense = 3.0, defense = 4.1, specialattack = 3.0, specialdefense = 4.1, vitality = 3.8, agility = 180, exp = 57, level = 60, wildLvl = 90, type = "normal", type2 = "no type"},

["Linoone"] = {offense = 7.0, defense = 6.1, specialattack = 5.0, specialdefense = 6.1, vitality = 7.8, agility = 220, exp = 116, level = 40, wildLvl = 50, type = "normal", type2 = "no type"},

["Nosepass"] = {offense = 4.5, defense = 13.5, specialattack = 4.5, specialdefense = 13.5, vitality = 3.0, agility = 150, exp = 80.3, level = 45, wildLvl = 55, type = "rock", type2 = "no type"},

["Magnezone"] = {offense = 14.0, defense = 20.0, specialattack = 19.0, specialdefense = 14.5, vitality = 7.0, agility = 180, exp = 134.2, level = 100, wildLvl = 110, type = "electric", type2 = "steel"},

["Numel"] = {offense = 6.0, defense = 4.0, specialattack = 6.5, specialdefense = 4.0, vitality = 6.0, agility = 155, exp = 71.5, level = 25, wildLvl = 22, type = "fire", type2 = "ground"},

["Minun"] = {offense = 4.0, defense = 5.0, specialattack = 7.5, specialdefense = 5.0, vitality = 6.0, agility = 115, exp = 42, level = 15, wildLvl = 24, type = "electric", type2 = "no type"},

["Swablu"] = {offense = 4.0, defense = 6.0, specialattack = 4.0, specialdefense = 6.0, vitality = 4.5, agility = 170, exp = 58, level = 30, wildLvl = 38, type = "normal", type2 = "flying"},

["Milotic"] = {offense = 6.0, defense = 7.9, specialattack = 10.0, specialdefense = 12.5, vitality = 9.5, agility = 201, exp = 235.4, level = 75, wildLvl = 80, type = "water", type2 = "no type"},

["Wailord"] = {offense = 9.0, defense = 4.5, specialattack = 9.0, specialdefense = 4.5, vitality = 17.0, agility = 180, exp = 231, level = 90, wildLvl = 100, type = "water",  type2 = "no type"},

["Beldum"] = {offense = 5.5, defense = 8.0, specialattack = 3.5, specialdefense = 6.0, vitality = 4.0, agility = 150, exp = 100, level = 25, wildLvl = 25, type = "steel", type2 = "psychic"},

["Shiny Beldum"] = {offense = 8.0, defense = 13.0, specialattack = 6.5, specialdefense = 11.0, vitality = 7.0, agility = 150, exp = 200, level = 25, wildLvl = 150, type = "steel", type2 = "psychic"},

["Feebas"] = {offense = 1.5, defense = 2.0, specialattack = 1.0, specialdefense = 7.0, vitality = 2.0, agility = 200, exp = 22, level = 10, wildLvl = 58, type = "water", type2 = "no type"},

["Solrock"] = {offense = 9.5, defense = 8.5, specialattack = 5.5, specialdefense = 6.5, vitality = 9.0, agility = 190, exp = 177, level = 42, wildLvl = 50, type = "rock", type2 = "psychic"},

["Metagross"] = {offense = 13.5, defense = 13.0, specialattack = 9.5, specialdefense = 9.0, vitality = 9.8, agility = 190, exp = 200, level = 80, wildLvl = 128, type = "steel", type2 = "psychic"},

["Shiny Metagross"] = {offense = 26.0, defense = 25.0, specialattack = 12.0, specialdefense = 14.5, vitality = 18.0, agility = 250, exp = 400, level = 1, wildLvl = 150, type = "steel", type2 = "psychic"},

["Lunatone"] = {offense = 5.5, defense = 6.5, specialattack = 9.5, specialdefense = 6.5, vitality = 9.0, agility = 190, exp = 177, level = 42, wildLvl = 50, type = "rock", type2 = "psychic"},

["Shiny Lunatone"] = {offense = 8.0, defense = 9.0, specialattack = 14.5, specialdefense = 12.5, vitality = 16.0, agility = 300, exp = 177, level = 42, wildLvl = 50, type = "rock", type2 = "psychic"},

["Froslass"] = {offense = 8.0, defense = 7.0, specialattack = 8.0, specialdefense = 7.0, vitality = 7.0, agility = 230, exp = 170, level = 60, wildLvl = 65, type = "ice", type2 = "ghost"},

["Mega Blaziken"] = {offense = 12.0, defense = 7.0, specialattack = 11.0, specialdefense = 7.0, vitality = 8.0, agility = 200, exp = 209, level = 1200, wildLvl = 90, type = "fire", type2 = "fighting"},

["Glalie"] = {offense = 8.0, defense = 8.0, specialattack = 8.0, specialdefense = 8.0, vitality = 8.0, agility = 200, exp = 160, level = 55, wildLvl = 50, type = "ice", type2 = "no type"},

["Snorunt"] = {offense = 5.0, defense = 5.0, specialattack = 5.0, specialdefense = 5.0, vitality = 5.0, agility = 170, exp = 78, level = 25, wildLvl = 25, type = "ice", type2 = "no type"},

["Combusken"] = {offense = 8.5, defense = 6.0, specialattack = 8.5, specialdefense = 6.0, vitality = 6.0, agility = 175, exp = 142, level = 40, wildLvl = 50, type = "fire", type2 = "fighting"},

["Blaziken"] = {offense = 12.0, defense = 7.0, specialattack = 11.0, specialdefense = 7.0, vitality = 8.0, agility = 200, exp = 209, level = 85, wildLvl = 90, type = "fire", type2 = "fighting"},

["Swampert"] = {offense = 11.0, defense = 9.0, specialattack = 8.5, specialdefense = 9.0, vitality = 10.0, agility = 180, exp = 142, level = 85, wildLvl = 90, type = "water", type2 = "ground"},

["Marshtomp"] = {offense = 8.5, defense = 7.0, specialattack = 6.0, specialdefense = 7.0, vitality = 7.0, agility = 170, exp = 141, level = 40, wildLvl = 50, type = "water", type2 = "ground"},

["Grovyle"] = {offense = 6.5, defense = 4.5, specialattack = 8.5, specialdefense = 4.5, vitality = 5.0, agility = 205, exp = 141, level = 40, wildLvl = 50, type = "grass", type2 = "no type"},

["Torchic"] = {offense = 6.0, defense = 4.0, specialattack = 7.0, specialdefense = 4.0, vitality = 4.5, agility = 165, exp = 65, level = 5, wildLvl = 40, type = "fire", type2 = "no type"},

["Treecko"] = {offense = 2.5, defense = 1.5, specialattack = 2.5, specialdefense = 1.5, vitality = 4.0, agility = 190, exp = 64, level = 5, wildLvl = 46, type = "grass", type2 = "no type"},

["Mudkip"] = {offense = 2.5, defense = 1.5, specialattack = 2.5, specialdefense = 1.5, vitality = 4.0, agility = 160, exp = 66, level = 5, wildLvl = 46, type = "water", type2 = "no type"},

["Plusle"] = {offense = 5.0, defense = 4.0, specialattack = 8.5, specialdefense = 4.0, vitality = 6.0, agility = 115, exp = 42, level = 15, wildLvl = 24, type = "electric", type2 = "no type"},

["Probopass"] = {offense = 6.0, defense = 5.5, specialattack = 14.5, specialdefense = 15.0, vitality = 7.5, agility = 160, exp = 218, level = 85, wildLvl = 98, type = "rock", type2 = "steel"},

["Metang"] = {offense = 7.5, defense = 10.0, specialattack = 5.5, specialdefense = 8.0, vitality = 6.0, agility = 170, exp = 196, level = 65, wildLvl = 79, type = "steel", type2 = "psychic"},

["Shiny Metang"] = {offense = 12.0, defense = 19.0, specialattack = 9.0, specialdefense = 12.5, vitality = 11.0, agility = 340, exp = 400, level = 1, wildLvl = 150, type = "steel", type2 = "psychic"},

["Carvanha"] = {offense = 9.0, defense = 2.0, specialattack = 6.5, specialdefense = 4.0, vitality = 4.5, agility = 185, exp = 58, level = 24, wildLvl = 35, type = "water", type2 = "dark"},

["Claydol"] = {offense = 7.0, defense = 10.5, specialattack = 7.0, specialdefense = 12.0, vitality = 10.0, agility = 195, exp = 204.6, level = 70, wildLvl = 78, type = "ground", type2 = "psychic"},

["Shiny Claydol"] = {offense = 7.0, defense = 10.5, specialattack = 7.0, specialdefense = 12.0, vitality = 19.0, agility = 195, exp = 204.6, level = 70, wildLvl = 78, type = "ground", type2 = "psychic"},

["Shiny Tropius"] = {offense = 15.0, defense = 17.0, specialattack = 16.0, specialdefense = 19.0, vitality = 19.5, agility = 210, exp = 400, level = 1, wildLvl = 150, type = "grass", type2 = "flying"},

["Sceptile"] = {offense = 8.5, defense = 6.5, specialattack = 10.5, specialdefense = 8.5, vitality = 7.0, agility = 240, exp = 208, level = 85, wildLvl = 90, type = "grass", type2 = "no type"},

["Tropius"] = {offense = 6.8, defense = 8.3, specialattack = 7.2, specialdefense = 8.7, vitality = 9.9, agility = 190, exp = 200, level = 90, wildLvl = 110, type = "grass", type2 = "flying"},

["Camerupt"] = {offense = 10.0, defense = 7.0, specialattack = 10.5, specialdefense = 7.5, vitality = 7.0, agility = 160, exp = 154, level = 60, wildLvl = 75, type = "fire", type2 = "ground"},

["Shiny Camerupt"] = {offense = 19.0, defense = 14.5, specialattack = 20.5, specialdefense = 12.0, vitality = 12.0, agility = 160, exp = 154, level = 1, wildLvl = 150, type = "fire", type2 = "ground"},

["Altaria"] = {offense = 7.0, defense = 9.0, specialattack = 7.0, specialdefense = 10.5, vitality = 7.5, agility = 200, exp = 124.3, level = 70, wildLvl = 75, type = "dragon", type2 = "flying"},

["Absol"] = {offense = 13.0, defense = 6.0, specialattack = 7.5, specialdefense = 6.0, vitality = 6.5, agility = 500, exp = 124.3, level = 70, wildLvl = 75, type = "dark", type2 = "no type"},

["Baltoy"] = {offense = 4.0, defense = 5.5, specialattack = 4.0, specialdefense = 8.0, vitality = 4.0, agility = 175, exp = 180, level = 15, wildLvl = 15, type = "ground", type2 = "psychic"},

["Jirachi"] = {offense = 50.0, defense = 100.0, specialattack = 40.0, specialdefense = 80.0, vitality = 1000.0, agility = 175, exp = 100, level = 100, wildLvl = 150, type = "steel", type2 = "Psychic"},

["Palkia"] = {offense = 50.0, defense = 100.0, specialattack = 45.0, specialdefense = 80.0, vitality = 1000.0, agility = 175, exp = 100, level = 100, wildLvl = 150, type = "ice", type2 = "no type"},

["Regice"] = {offense = 50.5, defense = 100.0, specialattack = 45.0, specialdefense = 80.0, vitality = 1000.0, agility = 170, exp = 2, level = 50, wildLvl = 50, type = "ice", type2 = "no type"},

["Regirock"] = {offense = 50.0, defense = 100.0, specialattack = 45.0, specialdefense = 80.0, vitality = 1000.0, agility = 170, exp = 2, level = 50, wildLvl = 50, type = "rock", type2 = "no type"},

["Registeel"] = {offense = 50.5, defense = 100.0, specialattack = 45.5, specialdefense = 80.0, vitality = 1000.0, agility = 170, exp = 2, level = 50, wildLvl = 50, type = "steel", type2 = "no type"},

["Rayquaza"] = {offense = 50.0, defense = 100.0, specialattack = 45.0, specialdefense = 80.0, vitality = 1000.0, agility = 170, exp = 64, level = 100, wildLvl = 150, type = "dragon", type2 = "flying"},

["Groudon"] = {offense = 50.0, defense = 100.0, specialattack = 40.0, specialdefense = 80.0, vitality = 1000.0, agility = 170, exp = 200, level = 100, wildLvl = 150, type = "groud", type2 = "no type"},

["Kyogre"] = {offense = 50.0, defense = 100.0, specialattack = 45.0, specialdefense = 80.0, vitality = 1000.0, agility = 170, exp = 200, level = 100, wildLvl = 150, type = "water", type2 = "no type"},

["Shiny Magby"] = {offense = 14.0, defense = 6.0, specialattack = 12.0, specialdefense = 6.0, vitality = 7.0, agility = 100, exp = 154, level = 1, wildLvl = 150, type = "fire", type2 = "no type"},

["Heatran"] = {offense = 50.0, defense = 100.1, specialattack = 45.0, specialdefense = 80.0, vitality = 1000.0, agility = 170, exp = 150, level = 100, wildLvl = 500, type = "fire", type2 = "steel"},

["Gothorita"] = {offense = 4.5, defense = 7.0, specialattack = 7.5, specialdefense = 7.0, vitality = 6.0, agility = 230, exp = 190, level = 80, wildLvl = 80, type = "ghost", type2 = "poison"},

["Gothitelle"] = {offense = 5.5, defense = 9.5, specialattack = 9.5, specialdefense = 9.5, vitality = 7.0, agility = 133, exp = 209, level = 100, wildLvl = 150, type = "ghost", type2 = "poison"},

["Hydreigon"] = {offense = 10.5, defense = 9.0, specialattack = 12.5, specialdefense = 9.0, vitality = 9.2, agility = 133, exp = 209, level = 100, wildLvl = 150, type = "ghost", type2 = "poison"},

["Inkay"] = {offense = 5.4, defense = 5.3, specialattack = 3.7, specialdefense = 5.3, vitality = 5.3, agility = 230, exp = 190, level = 80, wildLvl = 80, type = "ghost", type2 = "poison"},

["Shiny Flygon"] = {offense = 20.0, defense = 14.0, specialattack = 14.0, specialdefense = 14.0, vitality = 17.0, agility = 230, exp = 500, level = 1, wildLvl = 150, type = "ground", type2 = "dragon"},

["Shiny Porygon"] = {offense = 11.0, defense = 12.0, specialattack = 14.0, specialdefense = 7.5, vitality = 15.0, agility = 320, exp = 260, level = 1, wildLvl = 150, type = "normal", type2 = "no type"},

["Shiny Milotic"] = {offense = 18.0, defense = 19.0, specialattack = 21.0, specialdefense = 25.0, vitality = 16.0, agility = 211, exp = 500, level = 1, wildLvl = 150, type = "water", type2 = "ice"},

["Shiny Blissey"] = {offense = 2.0, defense = 19.0, specialattack = 14.0, specialdefense = 29.0, vitality = 30.0, agility = 211, exp = 500, level = 1, wildLvl = 5, type = "normal", type2 = "no type"},

["Shiny Chansey"] = {offense = 1.0, defense = 1.0, specialattack = 6.0, specialdefense = 25.0, vitality = 12.0, agility = 211, exp = 500, level = 1, wildLvl = 150, type = "normal", type2 = "no type"},

["Shiny Rhyperior"] = {offense = 26.0, defense = 24.0, specialattack = 9.0, specialdefense = 10.0, vitality = 20.0, agility = 211, exp = 500, level = 1, wildLvl = 150, type = "ground", type2 = "steel"},

["Shiny Lucario"] = {offense = 20.0, defense = 12.0, specialattack = 20.0, specialdefense = 7.0, vitality = 16.0, agility = 211, exp = 500, level = 1, wildLvl = 150, type = "ground", type2 = "normal"},

["Shiny Lapras"] = {offense = 14.0, defense = 12.0, specialattack = 12.0, specialdefense = 16.0, vitality = 25.0, agility = 200, exp = 500, level = 1, wildLvl = 150, type = "water", type2 = "ice"},

["Shiny Slaking"] = {offense = 30.0, defense = 18.0, specialattack = 15.0, specialdefense = 12.0, vitality = 25.0, agility = 218, exp = 500, level = 1, wildLvl = 150, type = "normal", type2 = "no type"},

["Shiny Sceptile"] = {offense = 14.0, defense = 12.0, specialattack = 19.5, specialdefense = 16.0, vitality = 13.0, agility = 212, exp = 500, level = 1, wildLvl = 150, type = "grass", type2 = "no type"},

["Shiny Gliscor"] = {offense = 14.5, defense = 21.0, specialattack = 8.0, specialdefense = 7.5, vitality = 13.5, agility = 212, exp = 500, level = 1, wildLvl = 150, type = "grass", type2 = "no type"},

["Shiny Probopass"] = {offense = 14.0, defense = 29.0, specialattack = 20.0, specialdefense = 30.0, vitality = 17.0, agility = 212, exp = 500, level = 1, wildLvl = 150, type = "rock", type2 = "steel"},

["Shiny Shiftry"] = {offense = 19.0, defense = 11.0, specialattack = 14.0, specialdefense = 12.0, vitality = 16.0, agility = 212, exp = 500, level = 1, wildLvl = 150, type = "grass", type2 = "dark"},

["Shiny Drapion"] = {offense = 14.0, defense = 21.0, specialattack = 11.0, specialdefense = 13.5, vitality = 14.5, agility = 212, exp = 500, level = 1, wildLvl = 150, type = "grass", type2 = "no type"},

["Shiny Rapidash"] = {offense = 19.0, defense = 12.0, specialattack = 14.0, specialdefense = 14.5, vitality = 16.5, agility = 500, exp = 192, level = 50, wildLvl = 150, type = "fire", type2 = "no type"},

["Boss Togekiss"] = {offense =15.0, defense = 30.0, specialattack = 35.0, specialdefense = 30.0, vitality = 700.0, agility = 212, exp = 500, level = 1, wildLvl = 100, type = "grass", type2 = "no type"},
["Boss Metagross"] = {offense = 35.0, defense = 35.0, specialattack = 25.0, specialdefense = 35.0, vitality = 700.0, agility = 212, exp = 500, level = 1, wildLvl = 100, type = "grass", type2 = "no type"},
["Rocket Machine"] = {offense = 30.0, defense = 100.0, specialattack = 35.0, specialdefense = 105.0, vitality = 700.0, agility = 212, exp = 700, level = 1, wildLvl = 100, type = "grass", type2 = "no type"},
["Natal Machine"] = {offense = 35.0, defense = 35.0, specialattack = 35.0, specialdefense = 35.0, vitality = 300.0, agility = 340, exp = 700, level = 1, wildLvl = 100, type = "psychic", type2 = "no type"},
["Guardian Magmar"] = {offense = 15.0, defense = 15.0, specialattack = 35.0, specialdefense = 15.0, vitality = 300.0, agility = 212, exp = 500, level = 1, wildLvl = 100, type = "fire", type2 = "no type"},

}
