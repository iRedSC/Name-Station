execute unless data block ~ ~-1 ~ Items[{Slot:1b}].tag.NS run function name_station:slot-2
execute unless data block ~ ~-1 ~ Items[{Slot:2b}].tag.NS run function name_station:slot-3
execute unless data block ~ ~-1 ~ Items[{Slot:4b}].tag.NS run function name_station:slot-5

execute as @a store success score @s NS.usedItem run clear @a #name_station:ns-clear{NS:{}}
execute if data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS if entity @s[tag=Slot-4] run tag @s remove Slot-4
execute if data block ~ ~-1 ~ Items[{Slot:3b,id:"minecraft:writable_book"}] unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS unless entity @s[tag=Slot-4] run playsound minecraft:block.stone_button.click_on master @a[scores={NS.usedItem=1..}] ~ ~ ~ 1 1 1
execute if data block ~ ~-1 ~ Items[{Slot:3b}] unless data block ~ ~-1 ~ Items[{Slot:3b,id:"minecraft:writable_book"}] unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS unless entity @s[tag=Slot-4] run playsound minecraft:entity.villager.no master @a[scores={NS.usedItem=1..}] ~ ~ ~ 1 1 1
execute if data block ~ ~-1 ~ Items[{Slot:3b}] unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS unless entity @s[tag=Slot-4] run tag @s add Slot-3

execute if data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS if entity @s[tag=Slot-6] run tag @s remove Slot-6
execute if data block ~ ~-1 ~ Items[{Slot:5b}] unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS unless entity @s[tag=Slot-6] run playsound minecraft:block.stone_button.click_on master @a[scores={NS.usedItem=1..}] ~ ~ ~ 1 1 1
execute if data block ~ ~-1 ~ Items[{Slot:5b}] unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS unless entity @s[tag=Slot-6] run tag @s add Slot-6


execute unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:3b,id:"minecraft:activator_rail",Count:1b,tag:{display:{Name:'[{"text":"Place ","color":"yellow","italic":false},{"text":"Book & Quill ","color":"aqua","italic":false},{"text":"here","color":"yellow","italic":false}]'},NS:{Function:"Slot.Placeholder"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:5b,id:"minecraft:detector_rail",Count:1b,tag:{display:{Name:'[{"text":"Place ","color":"yellow","italic":false},{"text":"Item ","color":"aqua","italic":false},{"text":"here","color":"yellow","italic":false}]'},NS:{Function:"Slot.Placeholder"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:6b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:6b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" ","italic":false}'},NS:{Function:"Null"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:7b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:7b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" ","italic":false}'},NS:{Function:"Null"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:8b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:8b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" ","italic":false}'},NS:{Function:"Null"}}}


execute align x align z run tp @s ~0.5 ~ ~0.5
data merge entity @s {CustomNameVisible:1b,Age:0,Health:99999999,PickupDelay:10,CustomName:'{"text":"Name Station","color":"gold","bold":true,"italic":false}',Item:{}}

scoreboard players reset @a NS.usedItem
