summon item ~ ~0.4 ~ {Tags:["m3vtga-temp"],Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{m3vtga-del:1b,CustomModelData:29999}}}
data modify entity @e[type=item,limit=1,tag=m3vtga-temp,distance=..1] Item set from block ~ ~ ~ Items[{Slot:14b}]
tag @e[type=item,limit=1,tag=m3vtga-temp,distance=..1] remove m3vtga-temp
kill @e[type=item,nbt={Item:{tag:{m3vtga-del:1b}}},distance=..2]
item replace block ~ ~ ~ container.14 with warped_fungus_on_a_stick{display:{Name:'{"translate":"m3vtg.chips_exchanger.button.key","italic":false}',Lore:['{"text":" "}','{"translate":"m3vtg.chips_exchanger.button.key.lore","color":"gray","italic":false}']},CustomModelData:33801,m3vtga-del:1b,m3vtga-button:1b} 1
playsound minecraft:block.note_block.bass block @a[distance=..6] ~ ~ ~ 1 0.9