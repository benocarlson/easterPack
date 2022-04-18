# Base Reward gives an average of about 3 Easter Coins, 2 Easter Dollars

execute if score Timer_5 timer matches 0..2 run give @s axolotl_spawn_egg{display:{Name:'"Easter Coin"'}} 2
execute if score Timer_5 timer matches 3..4 run give @s axolotl_spawn_egg{display:{Name:'"Easter Coin"'}} 3
execute if score Timer_5 timer matches 5 run give @s axolotl_spawn_egg{display:{Name:'"Easter Coin"'}} 5

execute if score Timer_7 timer matches 0..2 run give @s glow_squid_spawn_egg{display:{Name:'"Easter Dollar"'}} 1
execute if score Timer_7 timer matches 3..5 run give @s glow_squid_spawn_egg{display:{Name:'"Easter Dollar"'}} 2
execute if score Timer_7 timer matches 6..7 run give @s glow_squid_spawn_egg{display:{Name:'"Easter Dollar"'}} 3

execute if score Timer_11 timer matches 10 run give @s blaze_spawn_egg{display:{Name:'"Spectator Token"'}} 1