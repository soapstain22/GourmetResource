execute unless block ~ ~ ~ #m3v-table-games:carpet run tag @s add m3vtg-temp
execute unless block ~1 ~ ~ #m3v-table-games:carpet run tag @s add m3vtg-temp
execute unless block ~1 ~ ~1 #m3v-table-games:carpet run tag @s add m3vtg-temp
execute unless block ~1 ~ ~-1 #m3v-table-games:carpet run tag @s add m3vtg-temp
execute unless block ~-1 ~ ~ #m3v-table-games:carpet run tag @s add m3vtg-temp
execute unless block ~-1 ~ ~1 #m3v-table-games:carpet run tag @s add m3vtg-temp
execute unless block ~-1 ~ ~-1 #m3v-table-games:carpet run tag @s add m3vtg-temp
execute unless block ~ ~ ~-1 #m3v-table-games:carpet run tag @s add m3vtg-temp
execute unless block ~ ~ ~1 #m3v-table-games:carpet run tag @s add m3vtg-temp
execute if entity @s[tag=m3vtg-temp] positioned ~ ~0.1 ~ run function m3v-table-games:field/drop