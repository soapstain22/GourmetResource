loot spawn ~ ~ ~ loot m3v-table-games:temp/random-score
execute store result score $massive-random m3vtg-temp run data get entity @e[type=item,limit=1,nbt={Age:0s},distance=..0.01] Item.Count
kill @e[type=item,limit=1,nbt={Age:0s},distance=..0.01]

function m3v-table-games:bundle/take/random/mix

summon item ~ ~ ~ {Tags:["m3vtg-temp"],Item:{id:"minecraft:stone_button",Count:1b}}
data modify entity @e[type=item,limit=1,tag=m3vtg-temp,distance=..1] Item set from storage m3vtg:storage PlayerItem.tag.m3vtg-Items[0]
execute if predicate m3v-table-games:sneak if data storage m3vtg:storage PlayerItem.tag.m3vtg-bundle-data{shiftHideModel:1b} as @e[type=item,limit=1,tag=m3vtg-temp,distance=..1] run function m3v-table-games:bundle/take/hide
data remove storage m3vtg:storage PlayerItem.tag.m3vtg-Items[0]
tag @e[type=item,tag=m3vtg-temp,limit=1,distance=..1] remove m3vtg-temp
data modify entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] ArmorItems[3].tag.m3vtg-Items set from storage m3vtg:storage PlayerItem.tag.m3vtg-Items