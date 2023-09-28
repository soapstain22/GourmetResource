execute store result score $random m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.random 1
scoreboard players add $random m3vtg-temp 1
loot spawn ~ ~ ~ loot m3v-table-games:temp/random-score-plus
execute store result score $temp m3vtg-temp run data get entity @e[type=item,limit=1,nbt={Age:0s},distance=..0.01] Item.tag.AttributeModifiers[0].Amount
execute store result score $temp2 m3vtg-temp run data get entity @s Rotation[0]
scoreboard players operation $temp m3vtg-temp += $temp2 m3vtg-temp
kill @e[type=item,limit=1,nbt={Age:0s},distance=..0.01]
execute store result entity @s Rotation[0] float 1 run scoreboard players get $temp m3vtg-temp