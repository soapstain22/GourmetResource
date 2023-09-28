summon item ~ ~ ~ {Tags:["m3vtg-temp"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:29999}}}
data modify entity @s item.tag.m3vtg-item-data.angles.shift set from entity @s item.tag.m3vtg-item-data.temp.angles.shift
data modify entity @e[type=item,limit=1,tag=m3vtg-temp,distance=..0.1] Item set from entity @s item
tag @e[type=item,limit=1,tag=m3vtg-temp,distance=..0.1] remove m3vtg-temp
scoreboard players operation $m3vtg-temp m3vtg-temp = @s m3vtg-ID
execute as @e[type=interaction,tag=m3vtg-hitbox,distance=..2] if score @s m3vtg-ID = $m3vtg-temp m3vtg-temp run kill @s
tag @s add m3vtg-drop
kill @s