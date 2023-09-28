data modify storage m3vtg:storage PlayerItem set from entity @s SelectedItem

summon item_display ~ ~ ~ {Tags:["m3vtg-item-armst","m3vtg-temp"],item_display:"head"}

data modify entity @e[type=item_display,limit=1,distance=..0.1,tag=m3vtg-temp] item set from entity @s SelectedItem
execute as @e[type=item_display,limit=1,distance=..0.1,tag=m3vtg-temp] run function m3v-table-games:place-item/data-save

item modify entity @s[gamemode=!creative] weapon.mainhand m3v-table-games:sub_count

#angles
data modify entity @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..0.1] Rotation[0] set from entity @s Rotation[0]
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles as @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..0.1] run function m3v-table-games:place-item/angles/1

#mat
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.mat unless data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data{mat:""} run function m3v-table-games:place-item/mat

#hiddenModel
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.temp.hidden as @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..0.1] run function m3v-table-games:place-item/show

#shiftCMD
execute if predicate m3v-table-games:sneak if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.shiftCMD as @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..0.1] run function m3v-table-games:place-item/shift-cmd

#randomCMD
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.randomCMD unless data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data{randomCMD:[]} as @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..0.01] run function m3v-table-games:place-item/randomcmd

#contactStep
execute if entity @e[type=item_display,tag=!m3vtg-temp,distance=..0.63,tag=m3vtg-item-armst] if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.contactStep unless data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data{contactStep:0} run function m3v-table-games:place-item/contact-step

#grid
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.grid as @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..1] run function m3v-table-games:place-item/grid/1

execute unless entity @e[type=item_display,limit=1,distance=..2,tag=m3vtg-temp-allowed] as @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..2] at @s if block ~ ~ ~ #m3v-table-games:carpet run tp @s ~ ~0.055 ~
execute as @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..2] at @s run function m3v-table-games:place-item/tp

execute at @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..2] run summon interaction ~ ~ ~ {Tags:["m3vtg-temp","m3vtg-hitbox"],width:0.01f,height:0.01f,response:1b}

#set ID
scoreboard players operation @e[type=item_display,limit=1,distance=..2,tag=m3vtg-temp] m3vtg-ID = $tg-globalID m3vtg-ID
scoreboard players operation @e[type=interaction,limit=1,distance=..2,tag=m3vtg-temp] m3vtg-ID = $tg-globalID m3vtg-ID
scoreboard players add $tg-globalID m3vtg-ID 1
#hitbox
execute as @e[type=interaction,limit=1,distance=..2,tag=m3vtg-temp] run function m3v-table-games:place-item/hitbox

execute as @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..2] at @s if block ~ ~-0.6 ~ #m3v-table-games:disabled_blocks run function m3v-table-games:item-drop

tag @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..2] remove m3vtg-temp
tag @e[type=interaction,limit=1,tag=m3vtg-temp,distance=..2] remove m3vtg-temp
tag @e[type=item_display,distance=..2,tag=m3vtg-temp-allowed] remove m3vtg-temp-allowed

tag @s remove m3vtg-rc.checkblock

scoreboard players set $distance m3vtg-temp 99999