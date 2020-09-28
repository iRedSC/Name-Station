# By (i)RedSC
## This is a raycast function, which means it will repeat itself until it is canceled or has reached command chain limit
## This function is only called when a player looks in a dropper

# If the dropper the player is looking at is a Name Station, it will be locked
execute if block ^ ^ ^0.5 dropper{Items:[{Slot:1b,tag:{NS:{}}}]} run data modify block ^ ^ ^0.5 Lock set value "veviuewhevfewcfifewiuhfewhuniefwnuhifwehnuifcnhufcehinufcenuihfenuhifewuinhfcuhin"

# This will step the ray forward if no dropper has been found yet
execute positioned ^ ^ ^0.5 unless block ~ ~ ~ dropper{Items:[{Slot:1b,tag:{NS:{}}}]} unless block ~ ~ ~ dropper run function name_station:movecam
