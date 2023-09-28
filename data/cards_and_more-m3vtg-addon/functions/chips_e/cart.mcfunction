#execute unless score @s m3vtga-mode matches 1.. positioned ~ ~-0.5 ~ as @e[type=hopper_minecart,distance=..1.5] run function cards_and_more-m3vtg-addon:chips_e/kill-hopper
#execute unless score @s m3vtga-mode matches 1.. if block ~ ~-1 ~ hopper run function cards_and_more-m3vtg-addon:chips_e/kill-hopper
execute unless block ~ ~ ~ trapped_chest run function cards_and_more-m3vtg-addon:chips_e/kill