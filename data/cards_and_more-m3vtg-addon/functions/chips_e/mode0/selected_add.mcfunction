clear @a[distance=..6] warped_fungus_on_a_stick{m3vtga-del:1b}
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:paper"}] run function cards_and_more-m3vtg-addon:chips_e/mode0/add2
execute unless entity @s[tag=m3vtga-comp] run function cards_and_more-m3vtg-addon:chips_e/mode0/add0
tag @s remove m3vtga-comp