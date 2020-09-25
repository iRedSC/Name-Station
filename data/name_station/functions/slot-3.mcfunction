clear @a #name_station:ns-clear{NS:{}}
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1 1
execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Name set value {}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items[{Slot:5b}].tag.display.Lore set value {} 

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Name","color":"dark_red","italic":false}'},NS:{Function:"Reset.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Lore","color":"dark_red","italic":false}'},NS:{Function:"Reset.Lore"}}}
