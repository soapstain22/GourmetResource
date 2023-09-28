execute store result score $temp10 m3vtg-temp run data get block ~ ~ ~ Items[{Slot:12b}].tag.CustomModelData

execute if data block ~ ~ ~ Items[{Slot:14b}] run function cards_and_more-m3vtg-addon:chips_e/simple/drop

execute if score $temp10 m3vtg-temp matches 33771 run item replace block ~ ~ ~ container.14 with emerald
execute if score $temp10 m3vtg-temp matches 33772 run item replace block ~ ~ ~ container.14 with gold_ingot
execute if score $temp10 m3vtg-temp matches 33773 run item replace block ~ ~ ~ container.14 with diamond
execute if score $temp10 m3vtg-temp matches 33774 run item replace block ~ ~ ~ container.14 with deepslate_diamond_ore
execute if score $temp10 m3vtg-temp matches 33775 run item replace block ~ ~ ~ container.14 with netherite_ingot
execute if score $temp10 m3vtg-temp matches 33776 run item replace block ~ ~ ~ container.14 with diamond_block
execute if score $temp10 m3vtg-temp matches 33777 run item replace block ~ ~ ~ container.14 with netherite_block

data modify block ~ ~ ~ Items[{Slot:14b}].Count set from block ~ ~ ~ Items[{Slot:12b}].Count

playsound minecraft:block.note_block.bell block @a[distance=..6] ~ ~ ~ 1 2

item replace block ~ ~ ~ container.12 with air