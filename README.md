# easterPack
A Minecraft Datapack for running an Easter Egg Hunt game

## Easter Egg Hunt Game
This game supports a mix of younger, less experienced players and older, more experienced players.

Players search in Adventure Mode for colored blocks (terracotta and concrete) and mine them for special rewards.

## How this Datapack is organized
This datapack has a large set of Minecraft Functions that are used to run an Easter Egg Hunt game. These functions are organized into three namespaces:

### [easter-exe](/data/easter-exe/)
This namespace holds all functions that should be executed by operators or command blocks.

### [easter-general](/data//easter-general/)
This namespace holds general functions for setting up and running the game. DO NOT run these functions directly. They are run by the functions in the easter-exe namespace.

### [easter-eggs](/data/easter-eggs/)
This namespace holds functions that run the egg counting and rewards logic. DO NOT run these functions directly. They are run by the functions in the easter-exe namespace.

## Setting Up the World
Required setup is relatively simple. 

Set up your Easter Egg hunt world by building a "home" area and choosing any areas in which you want people to be allowed to hunt.

Then, do any customizations to this datapack that you desire. You can customize the rewards for finding individual colored blocks by modifying the functions in the [easter-eggs](/data/easter-eggs/) namespace. Customizable parts of the functions are marked by comments.

YOU MUST customize the "home" coordinates in the [easter-general:return_home](/data/easter-general/functions/return_home.mcfunction) function.

After all customizations have been done, run as an operator the following command: 
```
/function easter-exe:one_time_setup
```

Next, in all of the areas you wish to allow players to be in, place command blocks set to repeating, unconditional, always active with the following command:
```
/execute as @a[distance=..200] run function easter-exe:refresh_zone
```
Make sure that there is at least one of these command blocks within 200 blocks of anywhere you wish the players to be allowed to go. You can alternatively modify the distance requirement to change the shape or range as desired.

Finally, in a force-loaded chunk, place a hidden command block set to repeating, unconditional, always active with the following command:
```
/function easter-exe:global_tick
```
This must be the last step, because after this point the game is being run and players outside of allowed zones will be returned home, which will make it difficult to make any more changes.
