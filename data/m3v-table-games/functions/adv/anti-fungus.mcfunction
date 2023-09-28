execute if data entity @s SelectedItem.tag{m3vtg-item:1b} run item replace entity @s weapon.mainhand with air
execute if data entity @s Inventory[{Slot:-106b,tag:{m3vtg-item:1b}}] run item replace entity @s weapon.offhand with air

advancement revoke @s only m3v-table-games:anti-fungus-main
advancement revoke @s only m3v-table-games:anti-fungus-off