# easterPack
A Minecraft Datapack for running an Easter Egg Hunt game

## Easter Egg Hunt Game
This game supports a mix of younger, less experienced players and older, more experienced players.

Players search in Adventure Mode for colored blocks (terracotta and concrete) and mine them for special rewards. These rewards are used as currency in a mall to buy gear and tools that will help them in their hunt.

## How this Datapack is organized
This datapack has a large set of Minecraft Functions that are used to run an Easter Egg Hunt game. These functions are organized into two namespaces:
---
### [easter](/data/easter/)
The easter namespace has functions for operating the game itself. These functions are organized into three sub-directories:

#### [exe](/data/easter/functions/exe/)
This directory holds all functions that should be executed by operators or command blocks.

#### [general](/data/easter/functions/general/)
This directory holds general functions for setting up and running the game. DO NOT run these functions directly. They are run by the functions in the easter-exe namespace.

#### [eggs](/data/easter/functions/eggs/)
This directory holds functions that run the egg counting and rewards logic. DO NOT run these functions directly. They are run by the functions in the easter-exe namespace.
---
### [mall](/data/mall/)
The mall namespace has tags specifying the items that are accepted as currency and functions for running the mall. These functions are organized into two sub-directories.

#### [setup](/data/mall/functions/setup/)
The setup directory has functions that are used to set the scoreboard for the mall as well as set up some custom villager trades.

#### [buy](/data/mall/functions/buy/)
The buy directory has functions that perform the operation of purchasing an item. There is one for each item that can be purchased.

## Setting Up the World
Required setup is relatively simple. 

Set up your Easter Egg hunt world by building a "mall" area and choosing any areas in which you want people to be allowed to hunt.

Then, do any customizations to this datapack that you desire. You can customize the rewards for finding individual colored blocks by modifying the functions in the [easter-eggs](/data/eastereggs/) namespace. Customizable parts of the functions are marked by comments.

YOU MUST customize the "mall" coordinates in the [easter:general/return_home](/data/easter/functions/general/return_home.mcfunction) function, and [easter:general/initialize](/data/easter/functions/general/initialize.mcfunction) function.

After all customizations have been done, run as an operator the following command: 
```
/function easter:exe/one_time_setup
```

Next, in all of the areas you wish to allow players to be in, place command blocks set to repeating, unconditional, always active with the following command:
```
/execute as @a[distance=..200] run function easter:exe/refresh_zone
```
Make sure that there is at least one of these command blocks within 200 blocks of anywhere you wish the players to be allowed to go. You can alternatively modify the distance requirement to change the shape or range as desired.

Finally, in a force-loaded chunk, place a hidden command block set to repeating, unconditional, always active with the following command:
```
/function easter:exe/global_tick
```
This must be the last step, because after this point the game is being run and players outside of allowed zones will be returned home, which will make it inconvenient (though not very difficult) to make any more changes to the zone sizes.

To set up the mall, have a redstone operated command block associated with each item that can be purchased. Have the price clearly displayed and have a button to activate the block. The command block should run the following command when triggered:
```
execute as @p if score <currency score> matches <price>.. run function mall:buy/<item>
```

For the currency score use coin_count or dollar_count based on what currency the item costs. For items that cost more than one type of currency, you can add another if clause to the execute command. For example, for purchasing a netherite sword, the command block would have the following command:
```
execute as @p if score dollar_count matches 40.. if score nether_token_count matches 1.. run function mall:buy/netherite_sword
```

