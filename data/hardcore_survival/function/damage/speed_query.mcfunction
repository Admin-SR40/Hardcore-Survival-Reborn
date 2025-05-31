execute as @s store result score @s hs.temp run data get entity @s SelectedItem.components.minecraft:enchantments.levels."minecraft:fast_sword"
execute as @s run scoreboard players operation @s hs.temp *= hs.temp_20 hs.temp
execute as @s run scoreboard players operation @s hs.attackSpeed += @s hs.temp
execute as @s store result score @s hs.temp run data get entity @s SelectedItem.components.minecraft:enchantments.levels."minecraft:heavy_blade"
execute as @s run scoreboard players operation @s hs.temp *= hs.temp_20 hs.temp
execute as @s run scoreboard players operation @s hs.attackSpeed -= @s hs.temp
scoreboard players reset @s hs.temp