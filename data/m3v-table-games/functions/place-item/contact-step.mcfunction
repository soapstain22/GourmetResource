execute store result score $temp m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.item-id
execute as @e[type=item_display,tag=!m3vtg-temp,distance=..0.63,tag=m3vtg-item-armst] run function m3v-table-games:place-item/contact-step-id
execute if entity @e[type=item_display,distance=..0.63,tag=m3vtg-temp-allowed] run function m3v-table-games:place-item/contact-step2