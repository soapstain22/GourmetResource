summon item ~ ~0.4 ~ {Tags:["m3vtga-temp"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{m3vtga-del:1b,CustomModelData:29999}}}
data modify entity @e[type=item,limit=1,tag=m3vtga-temp,distance=..1] Item set from block ~ ~ ~ Items[{Slot:12b}]
tag @e[type=item,limit=1,tag=m3vtga-temp,distance=..1] remove m3vtga-temp