# This function is run once in the world to set up gamerules

# These rules are necessary for game integrity. Do not revert these.
gamerule keepInventory true
gamerule mobGriefing false
gamerule doTileDrops false
gamerule doEntityDrops false

# So that the operators don't constantly have their chats full
gamerule commandBlockOutput false

# rules dealing with mob events. Optionally, you can revert these.
gamerule doInsomnia false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false

# rules dealing with environment. Optionally, you can revert these.
gamerule doWeatherCycle false
gamerule doDaylightCycle false
time set day
weather clear