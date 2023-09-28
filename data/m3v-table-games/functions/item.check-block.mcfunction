execute if block ~ ~ ~ #slabs[type=top] run tag @s add m3vtg.temp
execute if block ~ ~ ~ #trapdoors[open=false,half=top] run tag @s add m3vtg.temp
execute if block ~ ~ ~ #stairs[half=top] run tag @s add m3vtg.temp
execute if block ~ ~ ~ #m3v-table-games:allowed_full_blocks run tag @s add m3vtg.temp

execute if entity @s[tag=!m3vtg.temp] run function m3v-table-games:item-drop
