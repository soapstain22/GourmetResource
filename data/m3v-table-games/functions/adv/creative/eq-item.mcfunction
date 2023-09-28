scoreboard players remove $temp m3vtg-temp 1
execute store success score $temp2 m3vtg-temp run data modify storage m3vtg:storage Inventory[0] set from storage m3vtg:storage PlayerItem
data remove storage m3vtg:storage Inventory[0]
execute if score $temp2 m3vtg-temp matches 0 run tag @s add m3vtg-del-item
execute if score $temp m3vtg-temp matches 1.. unless entity @s[tag=m3vtg-del-item] run function m3v-table-games:adv/creative/eq-item