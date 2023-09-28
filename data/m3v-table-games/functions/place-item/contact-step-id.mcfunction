execute store result score $temp2 m3vtg-temp run data get entity @s item.tag.m3vtg-item-data.item-id
execute if score $temp2 m3vtg-temp = $temp m3vtg-temp run tag @s add m3vtg-temp-allowed