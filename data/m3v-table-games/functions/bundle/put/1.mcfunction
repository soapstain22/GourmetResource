scoreboard players set $temp m3vtg-temp 0
summon armor_stand ~ ~ ~ {Tags:["m3vtg-temp"],Small:1b,Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}

item replace entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] armor.head from entity @s weapon.offhand
data modify entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] ArmorItems[3].tag.m3vtg-Items append from storage m3vtg:storage PlayerItem
data modify entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] ArmorItems[3].Count set value 1b

item modify entity @s weapon.mainhand m3v-table-games:sub_count

execute if data storage m3vtg:storage OffHandItem.tag.m3vtg-bundle-data.putSound unless data storage m3vtg:storage OffHandItem.tag.m3vtg-bundle-data{putSound:""} run function m3v-table-games:bundle/put/sound

execute if data storage m3vtg:storage OffHandItem.tag.m3vtg-bundle-data{showCount:1b} as @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] in m3v-table-games:temp run function m3v-table-games:bundle/lore
item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] armor.head
kill @e[tag=m3vtg-temp,limit=1,distance=..1,type=armor_stand]