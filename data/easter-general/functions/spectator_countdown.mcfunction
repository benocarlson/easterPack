execute as @a if score @s spectator_time matches 1.. run scoreboard players remove @s spectator_time 1
execute as @a if score @s spectator_time matches 1 run gamemode adventure
execute as @a if score @s spectator_time matches 1 run function easter-general:return_home