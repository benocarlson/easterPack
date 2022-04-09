# Base Reward gives an average of about 3 Easter Coins, 2 Easter Dollars

execute if score Timer_5 timer matches 0..2 run give @s axolotl_spawn_egg{display:{Name:"\"Easter Coin\""}} 4
execute if score Timer_5 timer matches 3..4 run give @s axolotl_spawn_egg{display:{Name:"\"Easter Coin\""}} 6
execute if score Timer_5 timer matches 5 run give @s axolotl_spawn_egg{display:{Name:"\"Easter Coin\""}} 10

execute if score Timer_7 timer matches 0..2 run give @s glow_squid_spawn_egg{display:{Name:"\"Easter Dollar\""}} 2
execute if score Timer_7 timer matches 3..5 run give @s glow_squid_spawn_egg{display:{Name:"\"Easter Dollar\""}} 4
execute if score Timer_7 timer matches 6..7 run give @s glow_squid_spawn_egg{display:{Name:"\"Easter Dollar\""}} 6

execute if score Timer_11 timer matches 10 run give @s blaze_spawn_egg{display:{Name:"\"Spectator Token\""}} 1

execute if score Timer_4 timer matches 0 run give @s diamond_sword{Enchantments:[{id:sharpness,lvl:5},{id:unbreaking,lvl:3},{id:knockback,lvl:2}]} 1
execute if score Timer_4 timer matches 1 run give @s trident{Enchantments:[{id:loyalty,lvl:3},{id:impaling,lvl:5},{id:unbreaking,lvl:3}]} 1
execute if score Timer_4 timer matches 2 run give @s trident{Enchantments:[{id:riptide,lvl:1},{id:impaling,lvl:5},{id:unbreaking,lvl:3}]} 1
execute if score Timer_4 timer matches 3 run give @s diamond_helmet{Enchantments:[{id:protection,lvl:4},{id:unbreaking,lvl:3},{id:aqua_affinity,lvl:1},{id:respiration,lvl:3}]} 1
execute if score Timer_4 timer matches 4 run give @s diamond_boots{Enchantments:[{id:protection,lvl:4},{id:feather_falling,lvl:4},{id:depth_strider,lvl:3},{id:unbreaking,lvl:3}]} 1