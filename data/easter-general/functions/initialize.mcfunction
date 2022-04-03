# This function is run once for each player that joins the game

# FIXME change these coordinates to the "home" coordinates
spawnpoint @s ~ ~ ~
scoreboard players set @s initialized 1
function easter-general:return_home