summon marker ~ ~ ~ {Tags:["m3vtg-massive-random","m3vtg-temp"]}
scoreboard players operation @e[type=marker,tag=m3vtg-temp,distance=..1,limit=1] m3vtg-temp = $massive-summon m3vtg-temp
tag @e[type=marker,tag=m3vtg-temp,distance=..1,limit=1] remove m3vtg-temp
scoreboard players remove $massive-summon m3vtg-temp 1
execute if score $massive-summon m3vtg-temp matches 1.. run function m3v-table-games:bundle/take/random/summon