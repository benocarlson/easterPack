execute as @a if score @s spectator_time matches 1.. run scoreboard players remove @s spectator_time 1
execute as @a if score @s spectator_time matches 1 run gamemode adventure
execute as @a if score @s spectator_time matches 1 in overworld run tp @s 1208.0 22 -12660.0
tell @a[scores={spectator_time=600}] "30 seconds remaining"
tell @a[scores={spectator_time=300}] "15 seconds remaining"
tell @a[scores={spectator_time=100}] "5 seconds remaining"