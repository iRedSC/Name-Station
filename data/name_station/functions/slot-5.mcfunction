execute as @a if score @s NS.usedItem matches 2 run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 0 1

execute if score @s NS-s2-switch matches 0 if data block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name{} run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display set value {Name:'[]'}
execute if score @s NS-s2-switch matches 0 if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name prepend from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[0]
execute if score @s NS-s2-switch matches 0 if score @s NS-s1-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name set from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[0]
execute if score @s NS-s2-switch matches 0 if score @s NS-s1-switch matches 2 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[0]

execute if score @s NS-s2-switch matches 1 if score @s NS-s1-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore set value []
execute if score @s NS-s2-switch matches 1 if data block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore{} run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore set value []
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
