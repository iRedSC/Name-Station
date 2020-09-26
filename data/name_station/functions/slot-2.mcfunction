

scoreboard players add @s NS-s2-switch 1
execute if score @s NS-s2-switch matches 2.. run scoreboard players set @s NS-s2-switch 0

execute as @a if score @s NS.usedItem matches 2 run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1 1

execute if data block ~ ~-1 ~ Items[{Slot:1b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
execute if data block ~ ~-1 ~ Items[{Slot:1b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:1b}]

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:1b,id:"minecraft:iron_ingot",Count:1b,tag:{display:{Name:'[{"text":"Name","color":"gold","bold":true,"italic":false,"underlined":true},{"text":" | ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"Lore","color":"gray","bold":false,"italic":false,"underlined":false}]',Lore:['{"text":" "}','[{"text":"Editing the item\'s ","color":"gray","italic":false},{"text":"Name","color":"dark_aqua"}]']},NS:{Function:"Select.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:1b,id:"minecraft:gold_ingot",Count:1b,tag:{display:{Name:'[{"text":"Name","color":"gray","bold":false,"italic":false,"underlined":false},{"text":" | ","color":"white","bold":false,"italic":false,"underlined":false},{"text":"Lore","color":"light_purple","bold":true,"italic":false,"underlined":true}]',Lore:['{"text":" "}','[{"text":"Editing the item\'s ","color":"gray","italic":false},{"text":"Lore","color":"dark_purple"}]','{"text":" "}','{"text":"Each book page is a","color":"gray","italic":false}','{"text":"new line of lore","color":"gray","italic":false}']},NS:{Function:"Select.Lore"}}}

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Name","color":"dark_red","italic":false}'},NS:{Function:"Reset.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:2b,id:"minecraft:tnt_minecart",Count:1b,tag:{display:{Name:'{"text":"Reset Lore","color":"dark_red","italic":false}'},NS:{Function:"Reset.Lore"}}}

execute if score @s NS-s2-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Name","color":"aqua","italic":false}'},NS:{Function:"Set.Name"}}}
execute if score @s NS-s2-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:4b,id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Set Lore","color":"aqua","italic":false}'},NS:{Function:"Set.Lore"}}}
