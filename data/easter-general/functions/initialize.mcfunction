# This function is run once for each player that joins the game

# FIXME change these coordinates to the "home" coordinates
spawnpoint @s 1233 13 -12660
gamemode adventure @s
scoreboard players set @s initialized 1
function easter-general:return_home