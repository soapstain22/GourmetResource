execute store result score $random m3vtg-temp if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.randomCMD[]
loot spawn ~ ~ ~ loot m3v-table-games:temp/random-score
execute store result score $temp m3vtg-temp run data get entity @e[type=item,limit=1,nbt={Age:0s},distance=..0.01] Item.Count
kill @e[type=item,limit=1,nbt={Age:0s},distance=..0.01]
function m3v-table-games:place-item/randomcmd2
data modify entity @s item.tag.CustomModelData set from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.randomCMD[0]