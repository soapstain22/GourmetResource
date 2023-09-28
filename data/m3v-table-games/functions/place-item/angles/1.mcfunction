#initial
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.initial run function m3v-table-games:place-item/angles/initial

#random
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.random run function m3v-table-games:place-item/angles/random

#round
execute if data storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.round run function m3v-table-games:place-item/angles/round

#shift
execute if entity @p[tag=m3vtg-raycaster,predicate=m3v-table-games:sneak] run function m3v-table-games:place-item/angles/shift
