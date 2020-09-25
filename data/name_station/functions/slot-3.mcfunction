clear @a #name_station:ns-clear{NS:{}}
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1 1
execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name set value {}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore set value {}

execute if data block ~ ~-1 ~ Items[{Slot:2b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
execute if data block ~ ~-1 ~ Items[{Slot:2b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:2b}]

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Name","color":"dark_red","italic":false}'},NS:{Function:"Reset.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Lore","color":"dark_red","italic":false}'},NS:{Function:"Reset.Lore"}}}
