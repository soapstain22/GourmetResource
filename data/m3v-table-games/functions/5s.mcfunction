execute as @e[tag=m3vtg-item-armst,type=item_display,sort=random,tag=!m3vtg-drop,limit=20] at @s if entity @p[distance=..10] if block ~ ~-0.6 ~ #m3v-table-games:disabled_blocks run function m3v-table-games:item-drop

schedule function m3v-table-games:5s 5s