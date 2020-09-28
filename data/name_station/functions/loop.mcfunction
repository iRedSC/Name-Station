# By (i)RedSC
# (This function is called by `minecraft/tags/functions/tick.json`)

## The loop function. The base for the entire datapack

## Setting the NS.usedItem scoreboard (this scoreboard is really only used to play sounds on button use)
# Clears all `#name_station:buttons` tagged items with the nbt of `{NS:{}}` (the empty bracket means with anything inside) and sets the success of the operation to either a 1 (items were cleared) or a 0 (items were not cleared) (the reason the items are in a tag is so the clear command can group different items together)
execute as @a store success score @s NS.usedItem run clear @s #name_station:buttons{NS:{}}
# Is the previous operation was a success, this will set the scoreboard to a "functioning" value (each number 2-4 will be used in a different context)
execute as @a if score @s NS.usedItem matches 1 run scoreboard players set @s NS.usedItem 2

# Clears all items tagged as placeholders
clear @a #name_station:placeholders{NS:{}}

# This runs basically the same as the first set with a few differences. 1: this will not run if the other set has already run, bc its already clear that the item type is not an activator rail (because activator_rail is not in the buttons item tag)
execute as @a unless score @s NS.usedItem matches 2 store success score @s NS.usedItem run clear @s minecraft:activator_rail{NS:{}}
# if the 1st set did NOT run however, this will set the "functioning" value to 3
execute as @a if score @s NS.usedItem matches 1 run scoreboard players set @s NS.usedItem 3

# Same as the 2nd set, but tests for the first 2 before trying to run.
execute as @a unless score @s NS.usedItem matches 2..3 store success score @s NS.usedItem run clear @s minecraft:detector_rail{NS:{}}
execute as @a if score @s NS.usedItem matches 1 run scoreboard players set @s NS.usedItem 4

# The main function of the datapack, if the custom "Text Editor" item if thrown on top of a dropper, it will start running the GUI commands
execute as @e[nbt={Item:{tag:{NameStation:1}}}] at @s if block ~ ~-1 ~ dropper run function name_station:text-editor

# This just kills all `{NS:{}}` tag items
kill @e[type=item,nbt={Item:{tag:{NS:{}}}}]

## Lock commands

# This works by grabbing the players rotation, then running a test and grabbing it again to see if it changed

# Stores the players y rotation to the moveCamDif scoreboard
execute as @a store result score @s NS.moveCamDif run data get entity @s Rotation[0] 10000

# resets the players openDropper score if the moved their camera
execute as @a unless score @s NS.moveCam = @s NS.moveCamDif run scoreboard players reset @s NS.openDropper
# resets the players openDropper score if they didn't move but tried to open it twice
execute as @a[scores={NS.openDropper=2..}] run scoreboard players reset @s NS.openDropper

# stores the players y rotation to the moveCam scoreboard
execute as @a store result score @s NS.moveCam run data get entity @s Rotation[0] 10000

# Runs the raycast if dropper has been opened
execute as @a[scores={NS.openDropper=1..}] at @s anchored eyes run function name_station:movecam
