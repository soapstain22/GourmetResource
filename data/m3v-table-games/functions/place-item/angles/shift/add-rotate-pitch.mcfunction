execute store result score $temp-16 m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.add.pitch[0]
execute store result score $temp-17 m3vtg-temp run data get entity @s Rotation[1]
scoreboard players operation $temp-17 m3vtg-temp += $temp-16 m3vtg-temp
execute store result entity @s Rotation[1] float 1 run scoreboard players get $temp-17 m3vtg-temp
data modify storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.add.pitch append from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.add.pitch[0]
data remove storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.add.pitch[0]
data modify entity @s item.tag.m3vtg-item-data.angles.shift.add.pitch set from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.add.pitch