scoreboard players set @s m3vtga-mode 1
tag @s add m3vtga-comp
summon item ~ ~0.4 ~ {Tags:["m3vtga-temp"],Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"translate":"m3vtg.chips_exchanger.identifier","color":"light_purple","italic":false}',Lore:['{"text":" "}','{"translate":"m3vtg.chips_exchanger.identifier.lore1","color":"red","italic":false}','{"translate":"m3vtg.chips_exchanger.identifier.lore2","color":"gray","italic":false}','{"translate":"m3vtg.chips_exchanger.identifier.lore3","color":"gray","italic":false}','{"translate":"m3vtg.chips_exchanger.identifier.lore4","color":"gray","italic":false}','{"translate":"m3vtg.chips_exchanger.identifier.lore5","color":"red","italic":false}']},CustomModelData:33000,m3vtga-identifier:1b,m3vtga-identifier-UIID:[]}}}
data modify entity @e[type=item,limit=1,tag=m3vtga-temp,distance=..1] Item.tag.m3vtga-identifier-UIID set from entity @s UUID
tag @e[type=item,limit=1,tag=m3vtga-temp,distance=..1] remove m3vtga-temp
clear @a[distance=..6] warped_fungus_on_a_stick{m3vtga-del:1b}
playsound minecraft:block.note_block.bass block @a[distance=..6] ~ ~ ~ 1 2
particle minecraft:happy_villager ~ ~ ~ 0.25 0.25 0.25 0 20 normal @a[distance=..6]
data remove block ~ ~ ~ Items
data modify block ~ ~ ~ CustomName set value '[{"text":"\\uF808","color":"white"},{"text":"1","font":"m3vtg:gui"},{"text":"\\uF80C\\uF80A\\uF808\\uF802"},{"translate":"m3vtg.chips_exchanger","color":"#3f3f3f"}]'
data modify entity @s item.tag.m3vtga-identifier set from entity @s UUID