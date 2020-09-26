# A loop function that is called by #minecraft:tick
execute as @a store success score @s NS.usedItem run clear @s #name_station:buttons{NS:{}}
execute as @a if score @s NS.usedItem matches 1 run scoreboard players set @s NS.usedItem 2

clear @a #name_station:placeholders{NS:{}}

execute as @a unless score @s NS.usedItem matches 2 store success score @s NS.usedItem run clear @s minecraft:activator_rail{NS:{}}
execute as @a if score @s NS.usedItem matches 1 run scoreboard players set @s NS.usedItem 3

execute as @a unless score @s NS.usedItem matches 2..3 store success score @s NS.usedItem run clear @s minecraft:detector_rail{NS:{}}
execute as @a if score @s NS.usedItem matches 1 run scoreboard players set @s NS.usedItem 4

execute as @e[nbt={Item:{tag:{NameStation:1}}}] at @s if block ~ ~-1 ~ dropper run function name_station:text-editor

kill @e[type=item,nbt={Item:{tag:{NS:{}}}}]
