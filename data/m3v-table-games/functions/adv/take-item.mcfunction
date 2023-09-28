execute if data entity @s SelectedItem.tag.m3vtg-item-data{overlap:1b} run function m3v-table-games:adv/overlap
execute unless data entity @s SelectedItem.tag.m3vtg-item-data{overlap:1b} run function m3v-table-games:adv/item-manipulation
advancement revoke @s only m3v-table-games:take-item