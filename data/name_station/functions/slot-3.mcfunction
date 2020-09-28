# By (i)RedSC

# This will play the click sound if the NS tagged item was removed from the slot (implying it was clicked)
execute as @a if score @s NS.usedItem matches 2 run playsound minecraft:block.chain.break master @a ~ ~ ~ 1 0.7 1

## Resetting Name/Lore
# If the slot 2 switch score is at 0 (meaning the Name is being edited), this will reset the item in the 6th slot's name
execute if score @s NS-s2-switch matches 0 unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name set value {}
  # If the slot 2 switch score is at 1 (meaning the Lore is being edited), this will reset the item in the 6th slot's lore
execute if score @s NS-s2-switch matches 1 unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore set value {}

## This ensures that if the player put an item in the button slot, its not just replaced and lost
## If (after the function was called by saying the item was removed) an item still remains, this means it would have been placed there and shouldn't be there
# Summons an item on top of the dropper
execute if data block ~ ~-1 ~ Items[{Slot:2b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
# Shoves the data of the misplaced item on the item entity (so now the item in the dropper can be replaced and not lost)
execute if data block ~ ~-1 ~ Items[{Slot:2b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:2b}]

# Does the same thing as `name_station:slot-2` line 28 & 30
execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Name","color":"dark_red","italic":false}'},NS:{Function:"Reset.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Lore","color":"dark_red","italic":false}'},NS:{Function:"Reset.Lore"}}}
