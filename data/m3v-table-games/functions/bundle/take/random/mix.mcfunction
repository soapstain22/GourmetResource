data modify storage m3vtg:storage PlayerItem.tag.m3vtg-Items append from storage m3vtg:storage PlayerItem.tag.m3vtg-Items[0]
data remove storage m3vtg:storage PlayerItem.tag.m3vtg-Items[0]

scoreboard players remove $massive-random m3vtg-temp 1
execute if score $massive-random m3vtg-temp matches 1.. run function m3v-table-games:bundle/take/random/mix