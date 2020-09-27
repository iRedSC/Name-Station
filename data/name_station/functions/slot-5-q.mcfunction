execute unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run function name_station:slot-5

execute as @a if score @s NS.usedItem matches 2 if data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run playsound minecraft:item.trident.return master @a ~ ~ ~ 1 2 1

execute if data block ~ ~-1 ~ Items[{Slot:4b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
execute if data block ~ ~-1 ~ Items[{Slot:4b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:4b}]


execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Name","color":"aqua","italic":false}'},NS:{Function:"Set.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Lore","color":"aqua","italic":false}'},NS:{Function:"Set.Lore"}}}
