tag @s add m3vtg-raycaster
scoreboard players set $distance m3vtg-temp 0
execute anchored eyes positioned ^ ^ ^ run function m3v-table-games:place-item/rc-loop
tag @s remove m3vtg-raycaster