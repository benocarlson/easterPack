# Run this function once in the world you plan to use

team add hunters "Hunters"
team add gatherers "Gatherers"

scoreboard objectives remove total_blocks_broken
scoreboard objectives add total_blocks_broken dummy "Total Eggs Found"

scoreboard objectives remove has_chorus
scoreboard objectives add has_chorus dummy

scoreboard objectives remove has_pick
scoreboard objectives add has_pick dummy

scoreboard objectives remove ate_chorus_fruit
scoreboard objectives add ate_chorus_fruit minecraft.used:minecraft.chorus_fruit

scoreboard objectives remove in_zone
scoreboard objectives add in_zone dummy