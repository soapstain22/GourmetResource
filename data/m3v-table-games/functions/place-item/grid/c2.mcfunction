scoreboard players set $id m3vtg-temp 0
execute as @e[type=item_display,distance=..1.5,tag=m3vtg-temp-allowed] store result score @s m3vtg-id run scoreboard players add $id m3vtg-temp 1
execute as @e[type=item_display,distance=..1.5,tag=m3vtg-temp-allowed] if score @s m3vtg-id = $id m3vtg-temp store result score $y m3vtg-temp run data get entity @s Pos[1] 1000000
scoreboard players operation $y m3vtg-temp += $c m3vtg-temp
execute store result entity @s Pos[1] double 0.000001 run scoreboard players get $y m3vtg-temp