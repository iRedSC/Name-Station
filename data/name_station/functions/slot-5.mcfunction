clear @a #name_station:ns-clear{NS:{}}
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 0 1

execute if data block ~ ~-1 ~ Items[{Slot:4b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
execute if data block ~ ~-1 ~ Items[{Slot:4b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:4b}]


execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name set from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[0]

execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore set value []
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[0]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[1]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[2]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[3]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[4]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[5]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[6]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[7]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[8]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[9]

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Name","color":"aqua","italic":false}'},NS:{Function:"Set.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Lore","color":"aqua","italic":false}'},NS:{Function:"Set.Lore"}}}
