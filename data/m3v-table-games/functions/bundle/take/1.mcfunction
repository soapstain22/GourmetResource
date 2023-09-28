data modify storage m3vtg:storage PlayerItem set from entity @s SelectedItem

summon armor_stand ~ ~ ~ {Tags:["m3vtg-temp"],Small:1b,Marker:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}]}
item replace entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] armor.head from entity @s weapon.mainhand

execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-bundle-data{random:1b} run function m3v-table-games:bundle/take/random/start
execute unless data storage m3vtg:storage PlayerItem.tag.m3vtg-bundle-data{random:1b} run function m3v-table-games:bundle/take/get

execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-bundle-data.getSound unless data storage m3vtg:storage PlayerItem.tag.m3vtg-bundle-data{getSound:""} run function m3v-table-games:bundle/take/sound

execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-bundle-data{showCount:1b} as @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] in m3v-table-games:temp run function m3v-table-games:bundle/lore
item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=m3vtg-temp,limit=1,distance=..1] armor.head
kill @e[tag=m3vtg-temp,limit=1,distance=..1,type=armor_stand]