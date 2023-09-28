execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
execute at @e[type=hopper_minecart,distance=..1.5] run summon item ~ ~ ~ {Item:{id:"minecraft:hopper_minecart",Count:1b}}
kill @e[type=hopper_minecart,distance=..1.5]
tellraw @a[distance=..6] {"translate":"m3vtg.chips_exchanger.hopper","color":"red"}