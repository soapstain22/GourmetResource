execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{m3vtg-bundle:1b}}]}] if data entity @s SelectedItem run function m3v-table-games:bundle/put/get-nbt
execute if entity @s[nbt={SelectedItem:{tag:{m3vtg-item:1b}}}] run function m3v-table-games:place-item/rc-begin
execute if entity @s[nbt={SelectedItem:{tag:{m3vtg-bundle:1b}}}] run function m3v-table-games:bundle/take/get-nbt
execute if entity @s[nbt={SelectedItem:{tag:{m3vtg-field:1b}}}] run function m3v-table-games:field/rc-begin
scoreboard players set @s m3vtg-wfoas 0