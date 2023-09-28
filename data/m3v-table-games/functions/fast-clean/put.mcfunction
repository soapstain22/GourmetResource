data modify entity @e[type=item,tag=m3vtg-fast-clean-temp,distance=..2,limit=1] Item.tag.m3vtg-Items append from entity @s item
scoreboard players operation $temp7 m3vtg-temp = @s m3vtg-ID
execute as @e[type=interaction,tag=m3vtg-hitbox,distance=..1.5] if score @s m3vtg-ID = $temp7 m3vtg-temp run kill @s
kill @s
tag @e[type=item,tag=m3vtg-fast-clean-temp,distance=..2,limit=1] add m3vtg-fast-clean-temp-sound