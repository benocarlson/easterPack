# This function is run every tick to track when players mine easter egg blocks

execute as @a if score @s blue_concrete_broken matches 1.. run function easter-eggs:blue_concrete
execute as @a if score @s red_concrete_broken matches 1.. run function easter-eggs:red_concrete