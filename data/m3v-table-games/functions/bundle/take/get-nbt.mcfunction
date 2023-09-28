data modify storage m3vtg:storage PlayerItem set from entity @s SelectedItem

execute unless predicate m3v-table-games:sneak unless data entity @s Inventory[{Slot:-106b}] unless data storage m3vtg:storage PlayerItem.tag{m3vtg-Items:[]} run function m3v-table-games:bundle/take/1
execute if predicate m3v-table-games:sneak if data storage m3vtg:storage PlayerItem.tag.m3vtg-bundle-data{allowPutAsItem:1b} run function m3v-table-games:place-item/rc-begin