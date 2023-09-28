execute store result score $temp m3vtg-temp run data get entity @s item.tag.m3vtg-field-data.size

execute if score $temp m3vtg-temp matches 0..1 unless block ~ ~ ~ #m3v-table-games:carpet positioned ~ ~0.1 ~ run function m3v-table-games:field/drop
execute if entity @s if score $temp m3vtg-temp matches 2 run function m3v-table-games:field/1s/2
execute if score $temp m3vtg-temp matches 3.. run function m3v-table-games:field/1s/3