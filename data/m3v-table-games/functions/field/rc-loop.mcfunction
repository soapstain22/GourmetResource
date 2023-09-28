scoreboard players add $distance m3vtg-temp 1

execute align xyz unless block ~ ~ ~ #m3v-table-games:rc-allow positioned ~ ~1 ~ if block ~ ~ ~ #m3v-table-games:carpet run function m3v-table-games:field/check-blocks

execute if block ~ ~ ~ #m3v-table-games:rc-allow if score $distance m3vtg-temp matches ..60 positioned ^ ^ ^0.05 run function m3v-table-games:field/rc-loop