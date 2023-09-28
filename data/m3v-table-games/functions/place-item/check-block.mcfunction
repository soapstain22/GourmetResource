tag @s add m3vtg-rc.checkblock
execute if block ~ ~ ~ #slabs[type=bottom] align y positioned ~ ~0.51 ~ run function m3v-table-games:place-item/rc-end
execute if block ~ ~ ~ #trapdoors[open=false,half=bottom] align y positioned ~ ~0.31 ~ run function m3v-table-games:place-item/rc-end

execute if entity @s[tag=m3vtg-rc.checkblock] align y positioned ~ ~1.01 ~ run function m3v-table-games:place-item/rc-end

tag @s remove m3vtg-rc.checkblock