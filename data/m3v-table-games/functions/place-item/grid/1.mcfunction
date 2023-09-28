execute store result score $temp m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.grid.n
execute store result score $temp8 m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.grid.ox
execute store result score $temp9 m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.grid.oz

execute store result score $temp1 m3vtg-temp run data get entity @s Pos[0]
execute store result score $temp2 m3vtg-temp run data get entity @s Pos[2]
execute store result score $temp3 m3vtg-temp run data get entity @s Pos[0] 100
execute store result score $temp4 m3vtg-temp run data get entity @s Pos[2] 100
scoreboard players operation $temp5 m3vtg-temp = $temp1 m3vtg-temp
scoreboard players operation $temp6 m3vtg-temp = $temp2 m3vtg-temp
scoreboard players set $temp7 m3vtg-temp 1000

scoreboard players operation $temp1 m3vtg-temp *= 100 m3vtg-const
scoreboard players operation $temp2 m3vtg-temp *= 100 m3vtg-const

scoreboard players operation $temp7 m3vtg-temp /= $temp m3vtg-temp

scoreboard players operation $temp3 m3vtg-temp -= $temp1 m3vtg-const
scoreboard players operation $temp4 m3vtg-temp -= $temp2 m3vtg-const

scoreboard players operation $temp3 m3vtg-temp /= $temp7 m3vtg-temp
scoreboard players operation $temp4 m3vtg-temp /= $temp7 m3vtg-temp

scoreboard players operation $temp3 m3vtg-temp *= $temp7 m3vtg-temp
scoreboard players operation $temp4 m3vtg-temp *= $temp7 m3vtg-temp

scoreboard players operation $temp3 m3vtg-temp += $temp8 m3vtg-temp
scoreboard players operation $temp4 m3vtg-temp += $temp9 m3vtg-temp

execute store result entity @s Pos[0] double 0.01 run scoreboard players get $temp3 m3vtg-temp
execute store result entity @s Pos[2] double 0.01 run scoreboard players get $temp4 m3vtg-temp

execute store result score $c m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.grid.c
execute if score $c m3vtg-temp matches 1.. run function m3v-table-games:place-item/grid/c