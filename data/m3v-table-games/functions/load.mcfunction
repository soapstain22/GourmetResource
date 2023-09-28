scoreboard objectives add m3vtg-const dummy
scoreboard objectives add m3vtg-temp dummy
scoreboard objectives add m3vtg-wfoas minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add m3vtg-id dummy
scoreboard objectives add m3vtg-ID dummy
scoreboard objectives add m3vtg-clean-delay dummy

scoreboard players set 100 m3vtg-const 100

execute in m3v-table-games:temp run forceload add 0 0

schedule clear m3v-table-games:5s
schedule function m3v-table-games:5s 5s

schedule clear m3v-table-games:1s
schedule function m3v-table-games:1s 1s

execute unless score $tg-globalID m3vtg-ID matches -2147483648..2147483647 run scoreboard players set $tg-globalID m3vtg-ID 0
tellraw @a {"text":"Table Games(v3.1) by 2M3V: Enabled","color":"green"}
return 1