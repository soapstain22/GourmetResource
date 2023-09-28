execute store result score $temp m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.item-id
execute store result score $temp2 m3vtg-temp run data get entity @s Pos[0] 100
execute store result score $temp3 m3vtg-temp run data get entity @s Pos[2] 100
execute as @e[type=item_display,tag=!m3vtg-temp,distance=..1.5,tag=m3vtg-item-armst] run function m3v-table-games:place-item/grid/c-id
execute if entity @e[type=item_display,distance=..1.5,tag=m3vtg-temp-allowed] run function m3v-table-games:place-item/grid/c2