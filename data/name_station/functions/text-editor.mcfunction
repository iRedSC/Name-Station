
# Will run the functions when the selet item has been removed
execute unless data block ~ ~-1 ~ Items[{Slot:1b}].tag.NS run function name_station:slot-2
execute unless data block ~ ~-1 ~ Items[{Slot:2b}].tag.NS run function name_station:slot-3
execute unless data block ~ ~-1 ~ Items[{Slot:4b}].tag.NS run function name_station:slot-5

# This runs a playsound when an item is placed into the correct slots
execute if data block ~ ~-1 ~ Items[{Slot:3b}] unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS run playsound minecraft:block.end_portal_frame.fill master @a[scores={NS.usedItem=3}] ~ ~ ~ 1 0 1
execute if data block ~ ~-1 ~ Items[{Slot:5b}] unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run playsound minecraft:block.end_portal_frame.fill master @a[scores={NS.usedItem=4}] ~ ~ ~ 1 0 1

# Places the filler items
execute unless data block ~ ~-1 ~ Items[{Slot:3b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:3b,id:"minecraft:activator_rail",Count:1b,tag:{display:{Name:'[{"text":"Place ","color":"yellow","italic":false},{"text":"Book ","color":"aqua","italic":false},{"text":"here"}]',Lore:['{"text":" "}','[{"text":"Use a ","color":"gray","italic":false},{"text":"Signed Book ","color":"green","italic":false}]','{"text":"for non-formatted text","color":"gray","italic":false}','{"text":" "}','[{"text":"Use a ","color":"gray","italic":false},{"text":"Book & Quill ","color":"dark_aqua","italic":false}]','{"text":"for formatted text","color":"gray","italic":false}']},NS:{Function:"Slot.Placeholer"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:5b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:5b,id:"minecraft:detector_rail",Count:1b,tag:{display:{Name:'[{"text":"Place ","color":"yellow","italic":false},{"text":"Item ","color":"aqua","italic":false},{"text":"here","color":"yellow","italic":false}]'},NS:{Function:"Slot.Placeholder"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:6b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:6b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" ","italic":false}'},NS:{Function:"Null"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:7b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:7b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" ","italic":false}'},NS:{Function:"Null"}}}
execute unless data block ~ ~-1 ~ Items[{Slot:8b}].tag.NS run data modify block ~ ~-1 ~ Items prepend value {Slot:8b,id:"minecraft:black_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":" ","italic":false}'},NS:{Function:"Null"}}}


execute align x align z run tp @s ~0.5 ~ ~0.5
data merge entity @s {CustomNameVisible:1b,Age:0,Health:99999999,PickupDelay:10,CustomName:'{"text":"Name Station","color":"gold","bold":true,"italic":false}',Item:{}}
data merge block ~ ~-1 ~ {CustomName:'{"text":"Name Station","color":"#C79200","bold":true}'}
