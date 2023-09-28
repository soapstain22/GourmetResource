data modify entity @s Rotation[1] set from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.pitch[0]
data modify storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.pitch append from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.pitch[0]
data remove storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.pitch[0]
data modify entity @s item.tag.m3vtg-item-data.angles.shift.set.pitch set from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set.pitch