scoreboard players set @s hs.temp 0

execute as @s if data entity @s {SelectedItem:{id:"minecraft:mace"}} run scoreboard players add @s hs.temp 1
execute as @s if data entity @s {Inventory:[{id:"minecraft:mace",Slot:-106b}]} run scoreboard players add @s hs.temp 1

attribute @s movement_speed modifier remove mace.movememt_speed

execute as @s if score @s hs.temp matches 1 run attribute @s movement_speed modifier add mace.movememt_speed -0.25 add_multiplied_total
execute as @s if score @s hs.temp matches 2 run attribute @s movement_speed modifier add mace.movememt_speed -0.5 add_multiplied_total