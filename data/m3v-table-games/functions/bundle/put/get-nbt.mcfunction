data modify storage m3vtg:storage OffHandItem set from entity @s Inventory[{Slot:-106b}]
data modify storage m3vtg:storage PlayerItem set from entity @s SelectedItem

execute store result score $temp m3vtg-temp run data get storage m3vtg:storage OffHandItem.tag.m3vtg-bundle-data.itemId
execute store result score $temp2 m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.item-id

execute store result score $temp3 m3vtg-temp run data get storage m3vtg:storage OffHandItem.tag.m3vtg-bundle-data.maxItems
execute store result score $temp4 m3vtg-temp if data storage m3vtg:storage OffHandItem.tag.m3vtg-Items[]

execute if score $temp m3vtg-temp = $temp2 m3vtg-temp if score $temp4 m3vtg-temp < $temp3 m3vtg-temp run function m3v-table-games:bundle/put/1
execute if score $temp m3vtg-temp matches ..-1 if score $temp4 m3vtg-temp < $temp3 m3vtg-temp run function m3v-table-games:bundle/put/1