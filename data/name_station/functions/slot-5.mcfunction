# By (i)RedSC

# This will play the click sound if the NS tagged item was removed from the slot (implying it was clicked)
execute as @a if score @s NS.usedItem matches 2 run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 0 1

## Setting the Name (This will only run if the slot 2 switch score is set to 0 (Name))
# If the slot 1 switch score is set to 0 (prepend), it will set a sign above the dropper with nbt selector text (book page nbt -> Item name)
execute if score @s NS-s2-switch matches 0 if score @s NS-s1-switch matches 0 run setblock ~ ~ ~ oak_sign{Text1:"[\"\",{\"nbt\":\"Items[{Slot:3b}].tag.pages[0]\",\"block\":\"~ ~-1 ~\",\"interpret\":true},{\"nbt\":\"Items[{Slot:5b}].tag.display.Name\",\"block\":\"~ ~-1 ~\",\"interpret\":true}]"}
# Sign text is set back as the item's new name
execute if score @s NS-s2-switch matches 0 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name set from block ~ ~ ~ Text1
# If the slot 1 switch score is set to 1 (set), it will just replace the items name with the books page nbt
execute if score @s NS-s2-switch matches 0 if score @s NS-s1-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name set from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[0]
# If the slot 1 switch score is set to 2 (append), it will set a sign above the dropper with nbt selector text (Item name -> book page nbt)
execute if score @s NS-s2-switch matches 0 if score @s NS-s1-switch matches 2 run setblock ~ ~ ~ oak_sign{Text1:"[\"\",{\"nbt\":\"Items[{Slot:5b}].tag.display.Name\",\"block\":\"~ ~-1 ~\",\"interpret\":true},{\"nbt\":\"Items[{Slot:3b}].tag.pages[0]\",\"block\":\"~ ~-1 ~\",\"interpret\":true}]"}
# Sign text is set back as the item's new name
execute if score @s NS-s2-switch matches 0 if score @s NS-s1-switch matches 2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name set from block ~ ~ ~ Text1
# removes sign
setblock ~ ~ ~ air

## Setting the Lore (This will only run if the slot 2 switch score is set to 1 (Lore))
# If the slot 1 switch score is set to 1 (set), it will just reset the items lore so it can be added back below
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore set value []
# Converts the lore object into a list (which it will need to do if the item's lore was reset)
execute if score @s NS-s2-switch matches 1 if data block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore{} run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore set value []
# Appends each book page to a new lore line
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[0]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[1]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[2]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[3]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[4]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[5]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[6]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[7]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[8]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1..2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[9]

# If the slot 1 switch score is set to 0 (prepend), it will add all the lore line to the beginning/top of the rest.
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[9]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[8]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[7]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[6]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[5]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[4]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[3]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[2]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[1]
execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[0]
