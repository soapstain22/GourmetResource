execute if score $temp10 m3vtg-temp matches ..-1 run scoreboard players add $temp10 m3vtg-temp 360

execute if score $temp10 m3vtg-temp matches 316..360 run setblock ~ ~ ~ trapped_chest[facing=north]{CustomName:'[{"text":"\\uF808","color":"white"},{"text":"2","font":"m3vtg:gui"},{"text":"\\uF80C\\uF80A\\uF808\\uF802"},{"translate":"m3vtg.chips_exchanger","color":"#3f3f3f"}]'} replace
execute if score $temp10 m3vtg-temp matches 0..45 run setblock ~ ~ ~ trapped_chest[facing=north]{CustomName:'[{"text":"\\uF808","color":"white"},{"text":"2","font":"m3vtg:gui"},{"text":"\\uF80C\\uF80A\\uF808\\uF802"},{"translate":"m3vtg.chips_exchanger","color":"#3f3f3f"}]'} replace
execute if score $temp10 m3vtg-temp matches 46..135 run setblock ~ ~ ~ trapped_chest[facing=east]{CustomName:'[{"text":"\\uF808","color":"white"},{"text":"2","font":"m3vtg:gui"},{"text":"\\uF80C\\uF80A\\uF808\\uF802"},{"translate":"m3vtg.chips_exchanger","color":"#3f3f3f"}]'} replace
execute if score $temp10 m3vtg-temp matches 136..225 run setblock ~ ~ ~ trapped_chest[facing=south]{CustomName:'[{"text":"\\uF808","color":"white"},{"text":"2","font":"m3vtg:gui"},{"text":"\\uF80C\\uF80A\\uF808\\uF802"},{"translate":"m3vtg.chips_exchanger","color":"#3f3f3f"}]'} replace
execute if score $temp10 m3vtg-temp matches 226..315 run setblock ~ ~ ~ trapped_chest[facing=west]{CustomName:'[{"text":"\\uF808","color":"white"},{"text":"2","font":"m3vtg:gui"},{"text":"\\uF80C\\uF80A\\uF808\\uF802"},{"translate":"m3vtg.chips_exchanger","color":"#3f3f3f"}]'} replace

#item replace block ~ ~ ~ container.12 with warped_fungus_on_a_stick{display:{Name:'{"translate":"m3vtg.chips_exchanger.button.add","italic":false}',Lore:['{"text":" "}','{"translate":"m3vtg.chips_exchanger.button.add.lore","color":"gray","italic":false}']},CustomModelData:33800,m3vtga-del:1b,m3vtga-button:1b}
#item replace block ~ ~ ~ container.14 with warped_fungus_on_a_stick{display:{Name:'{"translate":"m3vtg.chips_exchanger.button.key","italic":false}',Lore:['{"text":" "}','{"translate":"m3vtg.chips_exchanger.button.key.lore","color":"gray","italic":false}']},CustomModelData:33801,m3vtga-del:1b,m3vtga-button:1b} 1
execute align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~0.5 ~ {Tags:["m3vtga-temp","m3vtga-exblock"],item:{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:33000}}}

execute if score $temp10 m3vtg-temp matches 316..360 as @e[type=item_display,distance=..2,tag=m3vtga-temp] at @s run tp @s ~ ~ ~ 0 0
execute if score $temp10 m3vtg-temp matches 0..45 as @e[type=item_display,distance=..2,tag=m3vtga-temp] at @s run tp @s ~ ~ ~ 0 0
execute if score $temp10 m3vtg-temp matches 46..135 as @e[type=item_display,distance=..2,tag=m3vtga-temp] at @s run tp @s ~ ~ ~ 90 0
execute if score $temp10 m3vtg-temp matches 136..225 as @e[type=item_display,distance=..2,tag=m3vtga-temp] at @s run tp @s ~ ~ ~ 180 0
execute if score $temp10 m3vtg-temp matches 226..315 as @e[type=item_display,distance=..2,tag=m3vtga-temp] at @s run tp @s ~ ~ ~ 270 0

tag @e[type=item_display,distance=..2,tag=m3vtga-temp] remove m3vtga-temp

execute align y run playsound block.wood.place block @a ~ ~0.5 ~ 1 0.7
execute align y run playsound block.copper.place block @a ~ ~0.5 ~ 1 0.7