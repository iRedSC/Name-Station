scoreboard players add @s NS-s2-switch 1
execute if score @s NS-s2-switch matches 2.. run scoreboard players set @s NS-s2-switch 0
clear @a #name_station:ns-clear{NS:{}}
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1 1

execute if data block ~ ~-1 ~ Items[{Slot:1b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
execute if data block ~ ~-1 ~ Items[{Slot:1b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:1b}]

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:1b,id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'[{"text":"Name ","color":"gold","italic":false},{"text":"| ","color":"white"},{"text":"Lore","color":"gray","italic":false}]',Lore:['{"text":"Editing the item\'s Name","color":"gray","italic":false}']},NS:{Function:"Select.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:1b,id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'[{"text":"Name ","color":"gray","italic":false},{"text":"| ","color":"white"},{"text":"Lore","color":"light_purple","italic":false}]',Lore:['{"text":"Editing the item\'s Lore","color":"gray","italic":false}','{"text":"Each page on the book will make a new line.","color":"gray","italic":false}']},NS:{Function:"Select.Lore"}}}

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Name","color":"dark_red","italic":false}'},NS:{Function:"Reset.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Lore","color":"dark_red","italic":false}'},NS:{Function:"Reset.Lore"}}}

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Name","color":"aqua","italic":false}'},NS:{Function:"Set.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Lore","color":"aqua","italic":false}'},NS:{Function:"Set.Lore"}}}
