# This function is run every tick to ensure that all mobs are on the gatherers team

execute as @e[team=!gatherers,team=!hunters,team=!builders] run team join gatherers @s