# By (i)RedSC

# Add 1 to the switch scoreboard (to cycle through items)
scoreboard players add @s NS-s2-switch 1
# If the switch scoreboard is over 2, will reset it back to 0
execute if score @s NS-s2-switch matches 2.. run scoreboard players set @s NS-s2-switch 0

# This will play the click sound if the NS tagged item was removed from the slot (implying it was clicked)
execute as @a if score @s NS.usedItem matches 2 run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1 1

## This ensures that if the player put an item in the button slot, its not just replaced and lost
## If (after the function was called by saying the item was removed) an item still remains, this means it would have been placed there and shouldn't be there
# Summons an item on top of the dropper
execute if data block ~ ~-1 ~ Items[{Slot:1b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
# Shoves the data of the misplaced item on the item entity (so now the item in the dropper can be replaced and not lost)
execute if data block ~ ~-1 ~ Items[{Slot:1b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:1b}]

## Replacing the items (and cycling)
# When the switch score has reached 2 or more and has been reset, this item will be placed in the 2nd slot
execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:1b,id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'[{"text":"Name","color":"gold","bold":true,"italic":false,"underlined":true},{"text":" | ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"Lore","color":"gray","bold":false,"italic":false,"underlined":false}]',Lore:['{"text":" "}','[{"text":"Editing the item\'s ","color":"gray","italic":false},{"text":"Name","color":"dark_aqua"}]']},NS:{Function:"Select.Name"}}}
# When the switch score is at 1, this item will be place in the slot 2nd
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:1b,id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'[{"text":"Name","color":"gray","bold":false,"italic":false,"underlined":false},{"text":" | ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"Lore","color":"light_purple","bold":true,"italic":false,"underlined":true}]',Lore:['{"text":" "}','[{"text":"Editing the item\'s ","color":"gray","italic":false},{"text":"Lore","color":"dark_purple"}]','{"text":" "}','{"text":"Each book page is a","color":"gray","italic":false}','{"text":"new line of lore","color":"gray","italic":false}']},NS:{Function:"Select.Lore"}}}

### These items will change their name depending on which text type (Name/Lore) is currently being edited

## 3rd Slot (Reset Name/Lore)
# When the switch score has reached 2 or more and has been reset, this item will be placed in the 3rd slot
execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Name","color":"dark_red","italic":false}'},NS:{Function:"Reset.Name"}}}
# When the switch score is at 1, this item will be place in the slot 3rd
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Lore","color":"dark_red","italic":false}'},NS:{Function:"Reset.Lore"}}}

## 5th Slot (Set Name/Lore)
# When the switch score has reached 2 or more and has been reset, this item will be placed in the 5th slot
execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Name","color":"aqua","italic":false}'},NS:{Function:"Set.Name"}}}
# When the switch score is at 1, this item will be place in the slot 5th
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Lore","color":"aqua","italic":false}'},NS:{Function:"Set.Lore"}}}

# This will remove the slot 1 switch score by a value of 1 (because it's added back when its function is called below)
scoreboard players remove @s NS-s1-switch 1
# If, when the score is removed, it's below the minimum of 0, it will be set to 2 (being cycled backward)
execute if score @s NS-s1-switch matches ..-1 run scoreboard players set @s NS-s1-switch 2

# If the score is at 0 (meaning the Name is being edited), this will run the correct "Slot 1" function
execute if score @s NS-s2-switch matches 0 run function name_station:slot-1_0
# If the score is at 1 (meaning the Lore is being edited), this will run the correct "Slot 1" function
execute if score @s NS-s2-switch matches 1 run function name_station:slot-1_1
