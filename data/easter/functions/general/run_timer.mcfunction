# This function is run every tick to track the random timer


scoreboard players remove Timer_5 timer 1
execute if score Timer_5 timer matches ..0 run scoreboard players set Timer_5 timer 5

scoreboard players remove Timer_11 timer 1
execute if score Timer_11 timer matches ..0 run scoreboard players set Timer_11 timer 11

scoreboard players remove Timer_7 timer 1
execute if score Timer_7 timer matches ..0 run scoreboard players set Timer_7 timer 7

scoreboard players remove Timer_4 timer 1
execute if score Timer_4 timer matches ..0 run scoreboard players set Timer_4 timer 4
