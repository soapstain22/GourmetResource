data modify storage m3vtg:storage PlayerItem set from entity @s SelectedItem

summon armor_stand ~ ~ ~ {Silent:1b,Marker:1b,Invisible:1b,Small:1b,Tags:["m3vtg-temp"]}
item replace entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..0.01] armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with air

data modify storage m3vtg:storage Inventory set from entity @s Inventory
data remove storage m3vtg:storage Inventory[].Slot

execute store result score $temp m3vtg-temp if data storage m3vtg:storage Inventory[]
execute if score $temp m3vtg-temp matches 1.. run function m3v-table-games:adv/creative/eq-item

execute if entity @s[tag=!m3vtg-del-item] run function m3v-table-games:adv/creative/give

kill @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..0.01]
tag @s remove m3vtg-del-item