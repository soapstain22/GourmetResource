execute store result score $temp4 m3vtg-temp run data get entity @s item.tag.m3vtg-item-data.item-id
execute store result score $temp5 m3vtg-temp run data get entity @s Pos[0] 100
execute store result score $temp6 m3vtg-temp run data get entity @s Pos[2] 100
execute if score $temp4 m3vtg-temp = $temp m3vtg-temp if score $temp5 m3vtg-temp = $temp2 m3vtg-temp if score $temp6 m3vtg-temp = $temp3 m3vtg-temp run tag @s add m3vtg-temp-allowed