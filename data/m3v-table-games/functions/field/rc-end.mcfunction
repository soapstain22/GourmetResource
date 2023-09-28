tag @s add m3vtg-rc-end

data modify storage m3vtg:storage PlayerItem set from entity @s SelectedItem

summon item_display ~ ~ ~ {Tags:["m3vtg-temp","m3vtg-field"],item_display:"head"}
item replace entity @e[type=item_display,distance=..0.01,tag=m3vtg-temp,limit=1] container.0 from entity @s weapon.mainhand
item modify entity @s weapon.mainhand m3v-table-games:sub_count

data modify entity @e[type=item_display,distance=..0.01,tag=m3vtg-temp,limit=1] item.Count set value 1b

execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-field-data.placeSound unless data storage m3vtg:storage PlayerItem.tag.m3vtg-field-data{placeSound:""} run function m3v-table-games:field/places

tag @e[type=item_display,distance=..0.01,tag=m3vtg-temp,limit=1] remove m3vtg-temp
scoreboard players set $distance m3vtg-temp 9999