# This function is run every tick to track whether players are in the correct zone

scoreboard players remove @a[scores={in_zone=0..}] in_zone 1
execute as @a[scores={in_zone=400}] run tell @s "You have gone out of bounds. Teleporting home in 20 seconds"
execute as @a[scores={in_zone=..0}] run function easter-general:return_home
