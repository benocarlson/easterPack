# All global tick functions are executed from this function
# Have a command block running this function every tick in a force loaded chunk

function easter-eggs:global_scoring

function easter-general:constant_items
function easter-general:mobteams
function easter-general:track_zone


execute as @a[scores={initialized=..0}] run function easter-general:initialize