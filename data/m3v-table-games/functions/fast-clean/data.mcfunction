execute store result score $temp m3vtg-temp run data get entity @s Item.tag.m3vtg-bundle-data.maxItems
execute store result score $temp3 m3vtg-temp run data get entity @s Item.tag.m3vtg-bundle-data.itemId
execute store result score $temp5 m3vtg-temp run data get entity @s Pos[1] 1000
tag @s add m3vtg-fast-clean-temp
execute as @e[type=item_display,distance=..1.5,tag=m3vtg-item-armst] at @s run function m3v-table-games:fast-clean/armstd
tag @s remove m3vtg-fast-clean-temp
execute if data entity @s[tag=m3vtg-fast-clean-temp-sound] Item.tag.m3vtg-bundle-data.putSound unless data entity @s Item.tag.m3vtg-bundle-data{putSound:""} run function m3v-table-games:fast-clean/sounds
execute in m3v-table-games:temp run function m3v-table-games:fast-clean/lore
tag @s remove m3vtg-fast-clean-temp-sound