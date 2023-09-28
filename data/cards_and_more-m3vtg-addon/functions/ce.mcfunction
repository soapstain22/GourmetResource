execute store result score $temp10 m3vtg-temp run data get entity @s Rotation[0]
execute as @e[type=item_frame,tag=chips_exchanger,distance=..6,limit=1] at @s run function cards_and_more-m3vtg-addon:chips_e/check-air
advancement revoke @s only cards_and_more-m3vtg-addon:chips_exchanger