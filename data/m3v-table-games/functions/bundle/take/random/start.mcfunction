execute store result score $random m3vtg-temp if data storage m3vtg:storage PlayerItem.tag.m3vtg-Items[]

execute if score $random m3vtg-temp matches 1.. run function m3v-table-games:bundle/take/random/1