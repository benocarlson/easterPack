# This function defines the rewards for finding a red_concrete block

# Do not modify these commands
scoreboard players remove @s red_concrete_broken 1
scoreboard players add @s total_blocks_broken 1

# Customize the following as desired.
# You can add/remove give commands or even add effects or other rewards.
function easter:general/random_reward