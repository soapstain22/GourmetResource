execute store result score $temp m3vtg-temp run data get entity @s SelectedItem.tag.m3vtg-field-data.size

execute if score $temp m3vtg-temp matches ..1 positioned ~0.5 ~ ~0.5 run function m3v-table-games:field/rc-end

execute unless entity @s[tag=m3vtg-rc-end] if score $temp m3vtg-temp matches 2 run function m3v-table-games:field/check-blocks/2
execute unless entity @s[tag=m3vtg-rc-end] if score $temp m3vtg-temp matches 3.. positioned ~0.5 ~ ~0.5 if block ~1 ~ ~1 #m3v-table-games:carpet if block ~1 ~ ~ #m3v-table-games:carpet if block ~1 ~ ~-1 #m3v-table-games:carpet if block ~-1 ~ ~1 #m3v-table-games:carpet if block ~-1 ~ ~ #m3v-table-games:carpet if block ~-1 ~ ~-1 #m3v-table-games:carpet if block ~ ~ ~-1 #m3v-table-games:carpet if block ~ ~ ~1 #m3v-table-games:carpet run function m3v-table-games:field/rc-end