data modify entity @s Rotation[0] set from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.yaw[0]
data modify storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.yaw append from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.yaw[0]
data remove storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.yaw[0]
data modify entity @s item.tag.m3vtg-item-data.angles.shift.set.yaw set from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.yaw