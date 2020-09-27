# By (i)RedSC
# (This function is call by `minecraft/tags/functions/load.json`)

## Sets up the scoreboards

# This objective is used to determine how the items will cycle in the 1st slot (Prepend, Set, and Append modifiers) [Mainly used in `slot-1(_0)(_1)`]
scoreboard objectives add NS-s1-switch dummy

# This objective is used to determine how the items will cycle in the 2nd slot (Edit Name/Lore) [Mainly used in `name_station:slot-2`]
scoreboard objectives add NS-s2-switch dummy

# This scoreboard is set to a value when a specific tagged item is clear from their inventory (items tagges as buttons/placeholders) [Used in `name_station:loop`]
scoreboard objectives add NS.usedItem dummy
