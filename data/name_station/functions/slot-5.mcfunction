execute as @a if score @s NS.usedItem matches 2 run playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1 0 1

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

execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[10]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[11]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[12]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[13]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[14]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[15]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[16]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[17]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[18]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[19]

execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[20]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[21]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[22]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[23]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[24]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[25]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[26]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[27]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[28]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[29]

execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[30]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[31]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[32]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[33]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[34]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[35]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[36]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[37]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[38]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[39]

execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[40]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[41]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[42]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[43]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[44]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[45]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[46]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[47]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[48]
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore append from block ~ ~-1 ~ Items[{Slot:3b}].tag.pages[49]

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Name","color":"aqua","italic":false}'},NS:{Function:"Set.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Lore","color":"aqua","italic":false}'},NS:{Function:"Set.Lore"}}}
