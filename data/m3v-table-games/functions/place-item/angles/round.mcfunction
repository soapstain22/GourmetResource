execute store result score $playerAngle m3vtg-temp run data get entity @s Rotation[0]
execute if score $playerAngle m3vtg-temp matches ..-1 run scoreboard players add $playerAngle m3vtg-temp 360
execute store result score $roundA m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.angles.round

scoreboard players operation $fraction m3vtg-temp = $playerAngle m3vtg-temp
scoreboard players operation $fraction m3vtg-temp %= $roundA m3vtg-temp
scoreboard players operation $playerAngle m3vtg-temp /= $roundA m3vtg-temp
execute if score $fraction m3vtg-temp matches 50.. run scoreboard players add $playerAngle m3vtg-temp 1
scoreboard players operation $playerAngle m3vtg-temp *= $roundA m3vtg-temp

execute store result entity @s Rotation[0] float 1 run scoreboard players get $playerAngle m3vtg-temp