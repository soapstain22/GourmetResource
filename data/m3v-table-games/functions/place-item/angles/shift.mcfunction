data modify entity @s item.tag.m3vtg-item-data.temp.angles.shift set from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.roundYaw run function m3v-table-games:place-item/angles/shift/round
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.add run function m3v-table-games:place-item/angles/shift/add
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.shift.set run function m3v-table-games:place-item/angles/shift/set