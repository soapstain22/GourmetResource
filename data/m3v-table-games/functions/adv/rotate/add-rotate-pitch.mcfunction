execute store result score $temp16 m3vtg-temp run data get entity @s Rotation[1]
execute store result score $temp17 m3vtg-temp run data get entity @s item.tag.m3vtg-item-data.angles.shift.add.pitch[0]
scoreboard players operation $temp16 m3vtg-temp += $temp17 m3vtg-temp

execute store result entity @s Rotation[1] float 1 run scoreboard players get $temp16 m3vtg-temp

data modify entity @s item.tag.m3vtg-item-data.angles.shift.add.pitch append from entity @s item.tag.m3vtg-item-data.angles.shift.add.pitch[0]
data remove entity @s item.tag.m3vtg-item-data.angles.shift.add.pitch[0]