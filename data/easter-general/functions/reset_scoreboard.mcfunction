# This function is run once in the world to set up general scoreboard objectives and teams

team add hunters "Hunters"
team add gatherers "Gatherers"
team add builders "Builders"

scoreboard objectives remove initialized
scoreboard objectives add initialized dummy

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

scoreboard objectives remove timer
scoreboard objectives add timer dummy

scoreboard objectives remove spectator_time
scoreboard objectives add spectator_time dummy