#execute unless entity @s[tag=m3vtg-drop] run 
summon item ~ ~ ~ {Tags:["m3vtg-temp"],Item:{id:"minecraft:stone_button",Count:1b}}

execute if data entity @s item.tag.m3vtg-field-data.breakSound unless data entity @s item.tag.m3vtg-field-data{breakSound:""} run function m3v-table-games:field/break

data modify entity @e[type=item,distance=..0.01,tag=m3vtg-temp,limit=1] Item set from entity @s item
tag @e[type=item,distance=..0.01,tag=m3vtg-temp,limit=1] remove m3vtg-temp
tag @s add m3vtg-drop
kill @s