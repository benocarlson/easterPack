# Run this function once in the world you plan to use

team add hunters "Hunters"
team add gatherers "Gatherers"

scoreboard objectives remove blue_concrete_broken
scoreboard objectives add blue_concrete_broken minecraft.mined:minecraft.blue_concrete "Blue Eggs Found"

scoreboard objectives remove red_concrete_broken
scoreboard objectives add red_concrete_broken minecraft.mined:minecraft.red_concrete "Red Eggs Found"

scoreboard objectives remove total_blocks_broken
scoreboard objectives add total_blocks_broken dummy "Total Eggs Found"

scoreboard objectives remove has_chorus
scoreboard objectives add has_chorus dummy

scoreboard objectives remove has_pick
scoreboard objectives add has_pick dummy