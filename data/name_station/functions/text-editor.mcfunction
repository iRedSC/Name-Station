execute unless data block ~ ~-1 ~ Items[{Slot:1b}].tag.NS run function name_station:slot-2
execute unless data block ~ ~-1 ~ Items[{Slot:2b}].tag.NS run function name_station:slot-3
execute unless data block ~ ~-1 ~ Items[{Slot:4b}].tag.NS run function name_station:slot-5
execute unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:3b,id:"minecraft:activator_rail",Count:1b,tag:{display:{Name:'[{"text":"Place ","color":"yellow","italic":false},{"text":"Book & Quill ","color":"aqua","italic":false},{"text":"here","color":"yellow","italic":false}]'},NS:{Function:"Slot.Placeholder"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:5b,id:"minecraft:detector_rail",Count:1b,tag:{display:{Name:'[{"text":"Place ","color":"yellow","italic":false},{"text":"Item ","color":"aqua","italic":false},{"text":"here","color":"yellow","italic":false}]'},NS:{Function:"Slot.Placeholder"}}}
execute align x align z run tp @s ~0.5 ~ ~0.5
data merge entity @s {CustomNameVisible:1b,Age:0,Health:99999999,PickupDelay:10,CustomName:'{"text":"Name Station","color":"gold","bold":true,"italic":false}',Item:{}}
