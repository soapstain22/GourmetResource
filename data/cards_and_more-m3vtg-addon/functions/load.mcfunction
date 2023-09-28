tellraw @a {"text":"-----------------------","color":"gold"}
tellraw @a {"text":"Table Games | Base addon:","color":"yellow"}
tellraw @a {"text":""}
tellraw @a [{"translate":"m3vtg.cccd_addon.on3","color":"gold"},{"color":"yellow","text":"[CLICK]","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/tablegames/"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color": "green"}]}}]
tellraw @a [{"translate":"m3vtg.cccd_addon.on4","color":"gold"},{"color":"yellow","text":"discord.gg/uQ6gqEWG6v","clickEvent":{"action":"open_url","value":"https://discord.gg/uQ6gqEWG6v"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color": "green"}]}}]
tellraw @a {"text":""}
tellraw @a [{"translate":"m3vtg.creators","color":"gold"},{"text":"[+]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","color": "green"}]},"clickEvent":{"action":"run_command","value":"/function cards_and_more-m3vtg-addon:creators"}}]

tellraw @a {"text":"-----------------------","color":"gold"}

scoreboard objectives add m3vtga-mode dummy
return 1