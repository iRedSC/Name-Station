# A loop function that is called by #minecraft:tick
execute as @e[nbt={Item:{tag:{NameStation:1}}}] at @s if block ~ ~-1 ~ dropper run function name_station:text-editor
kill @e[type=item,nbt={Item:{tag:{NS:{}}}}]
clear @a #name_station:ns-clear{NS:{}}
