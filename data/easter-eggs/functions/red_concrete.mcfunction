# This function defines the rewards for finding a red concrete block

scoreboard players remove @s red_concrete_broken 1
scoreboard players add @s total_blocks_broken 1
give @s minecraft:chicken_spawn_egg 5
