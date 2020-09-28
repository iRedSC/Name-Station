# By (i)RedSC
### The number after the "_" (slot-1_0*) represents the value of NS-s2-switch (because the lore of the items will change depending on whether the Name or Lore is being edited)
## This is the Name type file

# Add 1 to the switch scoreboard (to cycle through items)
scoreboard players add @s NS-s1-switch 1
# If the switch scoreboard is over 3, will reset it back to 0
execute if score @s NS-s1-switch matches 3.. run scoreboard players set @s NS-s1-switch 0

# This will play the click sound if the NS tagged item was removed from the slot (implying it was clicked)
execute unless data block ~ ~-1 ~ Items[{Slot:0b}].tag.NS as @a if score @s NS.usedItem matches 2 run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.3 1

## This ensures that if the player put an item in the button slot, its not just replaced and lost
## If (after the function was called by saying the item was removed) an item still remains, this means it would have been placed there and shouldn't be there
# Summons an item on top of the dropper
execute if data block ~ ~-1 ~ Items[{Slot:0b}] unless data block ~ ~-1 ~ Items[{Slot:0b}].tag.NS run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
# Shoves the data of the misplaced item on the item entity (so now the item in the dropper can be replaced and not lost)
execute if data block ~ ~-1 ~ Items[{Slot:0b}] unless data block ~ ~-1 ~ Items[{Slot:0b}].tag.NS run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:0b}]

## Replacing the item (and cycling)
# When the switch score has reached 3 or more and has been reset, this item will be placed in the slot
execute if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:0b,id:"minecraft:emerald",Count:1b,tag:{display:{Name:'[{"text":"Prepend","color":"yellow","bold":true,"italic":false,"underlined":true},{"text":" | ","color":"white","italic":false,"underlined":false},{"text":"Set","color":"gray","italic":false,"underlined":false},{"text":" | ","color":"white","italic":false,"underlined":false},{"text":"Append","color":"gray","italic":false,"underlined":false}]',Lore:['{"text":" "}','[{"text":"Adds text to the ","color":"gray","italic":false},{"text":"Beginning","color":"gold","italic":false}]','{"text":"of the current name","color":"gray","italic":false}']},NS:{Function:"Select.Prepend"}}}

# When the switch score is at 1, this item will be place in the slot
execute if score @s NS-s1-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:0b,id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'[{"text":"Prepend ","color":"gray","italic":false},{"text":"| ","color":"white","italic":false},{"text":"Set","color":"aqua","bold":true,"italic":false,"underlined":true},{"text":" | ","color":"white","italic":false},{"text":"Append","color":"gray","italic":false}]',Lore:['{"text":" "}','[{"text":"Replaces ","color":"dark_aqua","italic":false},{"text":"all of the text","color":"gray","italic":false}]','{"text":"in the current name","color":"gray","italic":false}']},NS:{Function:"Select.Set"}}}

# When the switch score is at 2, this item will be place in the slot
execute if score @s NS-s1-switch matches 2 run data modify block ~ ~-1 ~ Items append value {Slot:0b,id:"minecraft:diamond",Count:1b,tag:{display:{Name:'[{"text":"Prepend ","color":"gray","italic":false},{"text":"| ","color":"white","italic":false},{"text":"Set ","color":"gray","italic":false},{"text":"| ","color":"white","italic":false},{"text":"Append","color":"green","bold":true,"italic":false,"underlined":true}]',Lore:['{"text":" "}','[{"text":"Adds text to the ","color":"gray","italic":false},{"text":"End ","color":"dark_green","italic":false}]','{"text":"of the current name","color":"gray","italic":false}']},NS:{Function:"Select.Append"}}}
