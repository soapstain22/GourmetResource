scoreboard players operation $m3vtg-temp m3vtg-temp = @s m3vtg-ID
execute as @e[type=item_display,distance=..2,tag=m3vtg-item-armst] if score @s m3vtg-ID = $m3vtg-temp m3vtg-temp run tag @s add m3vtg-temp

execute if entity @p[tag=m3vtg-player,predicate=m3v-table-games:sneak] as @e[type=item_display,distance=..2,tag=m3vtg-temp] if data entity @s item.tag.m3vtg-item-data.angles.shift run function m3v-table-games:adv/rotate/shift

tag @p[tag=m3vtg-player,predicate=!m3v-table-games:sneak,nbt=!{SelectedItem:{}}] add m3vtg-player-temp
execute at @p[tag=m3vtg-player-temp] run function m3v-table-games:adv/give
tag @p[tag=m3vtg-player-temp] remove m3vtg-player-temp

execute as @p[tag=m3vtg-player,gamemode=creative] run function m3v-table-games:adv/creative

tag @e[type=item_display,distance=..2,tag=m3vtg-temp] remove m3vtg-temp
data remove entity @s interaction
execute if entity @s[tag=m3vtg-kill] run kill @s