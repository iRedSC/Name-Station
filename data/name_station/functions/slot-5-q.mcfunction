# By (i)RedSC
## This is the (pre) set name/lore function

# Will only run the actual "Set Name/Lore" if an item (not tagged with NS) is in the 6th slot
execute unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS run function name_station:slot-5

# Will play an "error" sound if an item is missing from either the 4th or 6th slots
execute as @a if score @s NS.usedItem matches 2 if data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2 1
execute as @a if score @s NS.usedItem matches 2 if data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2 1

## This ensures that if the player put an item in the button slot, its not just replaced and lost
## If (after the function was called by saying the item was removed) an item still remains, this means it would have been placed there and shouldn't be there
# Summons an item on top of the dropper
execute if data block ~ ~-1 ~ Items[{Slot:4b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
# Shoves the data of the misplaced item on the item entity (so now the item in the dropper can be replaced and not lost)
execute if data block ~ ~-1 ~ Items[{Slot:4b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:4b}]


# Does the same thing as `name_station:slot-2` line 34 & 36
execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Name","color":"aqua","italic":false}'},NS:{Function:"Set.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Lore","color":"aqua","italic":false}'},NS:{Function:"Set.Lore"}}}
