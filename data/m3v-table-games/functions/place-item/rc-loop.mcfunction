scoreboard players add $distance m3vtg-temp 1

execute unless block ~ ~ ~ #m3v-table-games:rc-allow run function m3v-table-games:place-item/check-block
execute if score $distance m3vtg-temp matches 60 if block ~ ~ ~ #m3v-table-games:rc-allow at @s unless data entity @s Inventory[{Slot:-106b}] if data entity @s SelectedItem.tag{m3vtg-bundle:1b} unless data entity @s SelectedItem.tag{m3vtg-Items:[]} run function m3v-table-games:bundle/take/1

execute if block ~ ~ ~ #m3v-table-games:rc-allow if score $distance m3vtg-temp matches ..59 positioned ^ ^ ^0.05 run function m3v-table-games:place-item/rc-loop