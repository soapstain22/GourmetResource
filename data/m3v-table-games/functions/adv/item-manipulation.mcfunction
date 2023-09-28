tag @s add m3vtg-player
execute at @s as @e[type=interaction,distance=..6,tag=m3vtg-hitbox] if data entity @s interaction at @s run function m3v-table-games:adv/interaction
tag @s remove m3vtg-player