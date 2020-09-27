# By (i)RedSC
#### ANNOTATION NOTICE: If you want annotations please read `name_station:slot-1_0`, as this is basically the same with slight differences (stated below)

### The number after the "_" (slot-1_0*) represents the value of NS-s2-switch (because the lore of the items will change depending on whether the Name or Lore is being edited)
## This is the Lore type file

scoreboard players add @s NS-s1-switch 1
execute if score @s NS-s1-switch matches 3.. run scoreboard players set @s NS-s1-switch 0

execute unless data block ~ ~-1 ~ Items[{Slot:0b}].tag.NS as @a if score @s NS.usedItem matches 2 run playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 1 1.3 1

execute if data block ~ ~-1 ~ Items[{Slot:0b}] run summon item ~ ~ ~ {Tags:["NSDrop"],Item:{id:"minecraft:dirt",Count:1b}}
execute if data block ~ ~-1 ~ Items[{Slot:0b}] run data modify entity @e[type=item,tag=NSDrop,limit=1,sort=nearest,distance=..1] Item set from block ~ ~-1 ~ Items[{Slot:0b}]

execute if score @s NS-s1-switch matches 0 run data modify block ~ ~-1 ~ Items append value {Slot:0b,id:"minecraft:emerald",Count:1b,tag:{display:{Name:'[{"text":"Prepend","color":"yellow","bold":true,"italic":false,"underlined":true},{"text":" | ","color":"white","italic":false,"underlined":false},{"text":"Set","color":"gray","italic":false,"underlined":false},{"text":" | ","color":"white","italic":false,"underlined":false},{"text":"Append","color":"gray","italic":false,"underlined":false}]',Lore:['{"text":" "}','[{"text":"Adds a new line of ","color":"gray","italic":false},{"text":"Lore","color":"dark_purple","italic":false}]','[{"text":"as the ","color":"gray","italic":false},{"text":"Top Line","color":"gold"}]']},NS:{Function:"Select.Prepend"}}}

execute if score @s NS-s1-switch matches 1 run data modify block ~ ~-1 ~ Items append value {Slot:0b,id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'[{"text":"Prepend ","color":"gray","italic":false},{"text":"| ","color":"white","italic":false},{"text":"Set","color":"aqua","bold":true,"italic":false,"underlined":true},{"text":" | ","color":"white","italic":false},{"text":"Append","color":"gray","italic":false}]',Lore:['{"text":" "}','[{"text":"Replaces ","color":"dark_aqua","italic":false},{"text":"all lines","color":"gray","italic":false}]','[{"text":"of ","color":"gray","italic":false},{"text":"Lore","color":"dark_purple","italic":false}]']},NS:{Function:"Select.Set"}}}

execute if score @s NS-s1-switch matches 2 run data modify block ~ ~-1 ~ Items append value {Slot:0b,id:"minecraft:diamond",Count:1b,tag:{display:{Name:'[{"text":"Prepend ","color":"gray","italic":false},{"text":"| ","color":"white","italic":false},{"text":"Set ","color":"gray","italic":false},{"text":"| ","color":"white","italic":false},{"text":"Append","color":"green","bold":true,"italic":false,"underlined":true}]',Lore:['{"text":" "}','[{"text":"Adds a new line of ","color":"gray","italic":false},{"text":"Lore","color":"dark_purple","italic":false}]','[{"text":"at the ","color":"gray","italic":false},{"text":"Bottom","color":"dark_green"}]']},NS:{Function:"Select.Append"}}}
