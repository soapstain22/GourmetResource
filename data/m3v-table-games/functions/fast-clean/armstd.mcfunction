#summon item ~ ~1 ~ {Tags:["m3vtg-temp"],Item:{id:"minecraft:stone_button",Count:1b}}
#data modify entity @e[type=item,limit=1,tag=m3vtg-temp,distance=..2] Item set from entity @s ArmorItems[3]
#tag @e[type=item,limit=1,tag=m3vtg-temp,distance=..2] remove m3vtg-temp
#kill @s

execute store result score $temp2 m3vtg-temp if data entity @e[type=item,tag=m3vtg-fast-clean-temp,distance=..1.5,limit=1] Item.tag.m3vtg-Items[]
execute store result score $temp4 m3vtg-temp run data get entity @s item.tag.m3vtg-item-data.item-id
execute store result score $temp6 m3vtg-temp run data get entity @s Pos[1] 1000
scoreboard players operation $temp6 m3vtg-temp -= $temp5 m3vtg-temp

execute if score $temp6 m3vtg-temp matches -20..20 if score $temp4 m3vtg-temp = $temp3 m3vtg-temp if score $temp2 m3vtg-temp < $temp m3vtg-temp run function m3v-table-games:fast-clean/put