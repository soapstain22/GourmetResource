scoreboard objectives add m3vtg-temp dummy
scoreboard players set $auto-fix1 m3vtg-temp 0
scoreboard players set $auto-fix2 m3vtg-temp 0
say -----------------
say Table Games v3.1 | 1.20 +
execute store result score $auto-fix1 m3vtg-temp run function m3v-table-games:load
execute unless score $auto-fix1 m3vtg-temp matches 1 run say m3v-table-games:load - Function loading error
execute unless score $auto-fix1 m3vtg-temp matches 1 run scoreboard players add $auto-fix2 m3vtg-temp 1
scoreboard players set $auto-fix1 m3vtg-temp 0
execute store result score $auto-fix1 m3vtg-temp run function cards_and_more-m3vtg-addon:load
execute unless score $auto-fix1 m3vtg-temp matches 1 run say cards_and_more-m3vtg-addon:load - Function loading error
execute unless score $auto-fix1 m3vtg-temp matches 1 run scoreboard players add $auto-fix2 m3vtg-temp 1
execute if score $auto-fix2 m3vtg-temp matches 0 run say No errors
say -----------------