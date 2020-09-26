# A loop function that is called by #minecraft:tick
tag @e[nbt={Item:{tag:{NameStation:1}}}] remove active
execute as @e[nbt={Item:{tag:{NameStation:1}}}] at @s if block ~ ~-1 ~ dropper run tag @s add active
execute as @e[nbt={Item:{tag:{NameStation:1}}},tag=active] at @s run function name_station:text-editor
execute unless entity @e[nbt={Item:{tag:{NameStation:1}}},tag=active] run clear @a #name_station:ns-clear{NS:{}}
kill @e[type=item,nbt={Item:{tag:{NS:{}}}}]
