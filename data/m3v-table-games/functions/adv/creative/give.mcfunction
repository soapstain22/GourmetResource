summon item ~ ~ ~ {Tags:["m3vtg-temp"],Item:{id:"minecraft:stone_button",Count:1b}}
data modify entity @e[type=item,distance=..0.01,limit=1,tag=m3vtg-temp] Item set from entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..0.01] ArmorItems[3]
tag @e[type=item,distance=..0.01,limit=1,tag=m3vtg-temp] remove 3vtg-temp