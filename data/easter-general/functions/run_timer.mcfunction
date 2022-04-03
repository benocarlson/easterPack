# This function is run every tick to track the random timer


scoreboard players remove Timer timer 1
execute if score Timer timer matches ..0 run scoreboard players set Timer timer 5

