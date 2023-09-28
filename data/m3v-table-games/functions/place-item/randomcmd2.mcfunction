scoreboard players remove $temp m3vtg-temp 1
data modify storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.randomCMD append from storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.randomCMD[0]
data remove storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.randomCMD[0]

execute if score $temp m3vtg-temp matches 1.. run function m3v-table-games:place-item/randomcmd2