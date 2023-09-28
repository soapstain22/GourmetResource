summon item ~ ~ ~ {Tags:["m3vtg-temp"],Item:{id:"minecraft:stone_button",Count:1b}}
data modify entity @e[type=item,limit=1,distance=..1,tag=m3vtg-temp] Item set from storage m3vtg:storage PlayerItem.tag.m3vtg-Items[-1]
execute if predicate m3v-table-games:sneak if data storage m3vtg:storage PlayerItem.tag.m3vtg-bundle-data{shiftHideModel:1b} as @e[type=item,limit=1,tag=m3vtg-temp,distance=..1] run function m3v-table-games:bundle/take/hide
tag @e[type=item,limit=1,distance=..1,tag=m3vtg-temp] remove m3vtg-temp
data remove entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] ArmorItems[3].tag.m3vtg-Items[-1]