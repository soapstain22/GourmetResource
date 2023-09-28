scoreboard players set $id m3vtg-temp 0
execute as @e[type=item_display,distance=..0.63,tag=m3vtg-temp-allowed] store result score @s m3vtg-id run scoreboard players add $id m3vtg-temp 1
execute as @e[type=item_display,distance=..0.63,tag=m3vtg-temp-allowed] if score @s m3vtg-id = $id m3vtg-temp store result score $y m3vtg-temp run data get entity @s Pos[1] 1000000
execute store result score $contactStep m3vtg-temp run data get storage m3vtg:storage PlayerItem.tag.m3vtg-item-data.contactStep
scoreboard players operation $y m3vtg-temp += $contactStep m3vtg-temp
execute store result entity @e[type=item_display,limit=1,tag=m3vtg-temp,distance=..0.1] Pos[1] double 0.000001 run scoreboard players get $y m3vtg-temp