# All global tick functions are executed from this function
# Have a command block running this function every tick in a force loaded chunk

function easter:general/global_scoring
function easter:general/constant_items
function easter:general/mobteams
function easter:general/track_zone
function easter:general/run_timer
function easter:general/spectator_countdown


execute as @a unless score @s initialized matches 1 run function easter:general/initialize
