execute as @a at @s run function m3v-table-games:as-at-players
execute as @e[type=item,tag=!m3vtg-fast-clean,nbt={Item:{tag:{m3vtg-FastClean:1b}}},nbt={OnGround:1b}] at @s run function m3v-table-games:fast-clean/score

#/give @p warped_fungus_on_a_stick{display:{Name:'{"translate":"m3vtg.card","italic":false}'},CustomModelData:33000,m3vtg-item:1b,m3vtg-item-data:{item-id:111,overlap:1b,angles:{initial:{pitch:-90f},round:1,shift:{add:{yaw:[90]}},random:10},hitbox:[0.3f,0.01f],mat:"paper",contactStep:100,grid:{n:50,ox:10,oz:10,c:100}}} 1
#give @s warped_fungus_on_a_stick{CustomModelData:33230,m3vtg-field:1b,m3vtg-field-data:{size:1,placeSound:"wood-low",breakSound:"wood-low",entity:{Marker:0b,Small:1b}}}