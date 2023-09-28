execute as @e[type=item_display,distance=..6,tag=m3vtg-temp,limit=1] run data modify entity @s item.tag.m3vtg-item-data.angles.shift set from entity @s item.tag.m3vtg-item-data.temp.angles.shift
item replace entity @p[tag=m3vtg-player-temp] weapon.mainhand from entity @e[type=item_display,distance=..6,tag=m3vtg-temp,limit=1] container.0
execute as @p[tag=m3vtg-player-temp] if entity @s[nbt={Inventory:[{Slot:-106b,tag:{m3vtg-bundle:1b}}]}] at @s run function m3v-table-games:bundle/put/get-nbt
kill @e[type=item_display,distance=..6,tag=m3vtg-temp,limit=1]
tag @s add m3vtg-kill