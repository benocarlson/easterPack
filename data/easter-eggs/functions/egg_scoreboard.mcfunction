# This function is run once to set up easter egg objectives for the colored blocks

scoreboard objectives remove blue_concrete_broken
scoreboard objectives add blue_concrete_broken minecraft.mined:minecraft.blue_concrete "Blue Eggs Found"

scoreboard objectives remove red_concrete_broken
scoreboard objectives add red_concrete_broken minecraft.mined:minecraft.red_concrete "Red Eggs Found"
