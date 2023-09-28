execute store result score $temp m3vtg-temp if data entity @s Item.tag.m3vtg-Items[]
setblock 0 0 0 oak_sign{front_text:{messages:['[{"translate":"m3vtg.count_items_in_bunndle","color":"gold","italic":false},{"text":" "},{"score":{"name":"$temp","objective":"m3vtg-temp"}}]','{"text":""}','{"text":""}','{"text":""}']}} replace
data modify entity @s Item.tag.display.Lore[0] set from block 0 0 0 front_text.messages[0]
setblock 0 0 0 air