tag @s add m3vtga-comp
data modify entity @s item.tag.m3vtga-identifier set from block ~ ~ ~ Items[{Slot:14b}].tag.m3vtga-identifier-UIID
scoreboard players set @s m3vtga-mode 1

summon item ~ ~0.4 ~ {Tags:["m3vtga-temp"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{m3vtga-del:1b,CustomModelData:29999}}}
data modify entity @e[type=item,limit=1,tag=m3vtga-temp,distance=..1] Item set from block ~ ~ ~ Items[{Slot:14b}]
tag @e[type=item,limit=1,tag=m3vtga-temp,distance=..1] remove m3vtga-temp
kill @e[type=item,nbt={Item:{tag:{m3vtga-del:1b}}},distance=..2]
particle minecraft:happy_villager ~ ~ ~ 0.25 0.25 0.25 0 20 normal @a[distance=..6]
playsound minecraft:block.note_block.bass block @a[distance=..6] ~ ~ ~ 1 2

data remove block ~ ~ ~ Items
data modify block ~ ~ ~ CustomName set value '[{"text":"\\uF808","color":"white"},{"text":"1","font":"m3vtg:gui"},{"text":"\\uF80C\\uF80A\\uF808\\uF802"},{"translate":"m3vtg.chips_exchanger","color":"#3f3f3f"}]'