execute as @s if score @s hs.temp matches 11..30 run attribute @s attack_damage modifier add health.attack_damage -0.30 add_multiplied_total
execute as @s if score @s hs.temp matches 11..30 run attribute @s movement_speed modifier add health.movement_speed -0.30 add_multiplied_total
execute as @s if score @s hs.temp matches 11..30 run attribute @s attack_speed modifier add health.attack_speed -0.20 add_multiplied_total

execute as @s if score @s hs.water matches 11..30 run attribute @s attack_damage modifier add water.attack_damage -0.30 add_multiplied_total
execute as @s if score @s hs.water matches 11..30 run attribute @s movement_speed modifier add water.movement_speed -0.30 add_multiplied_total
execute as @s if score @s hs.water matches 11..30 run attribute @s attack_speed modifier add water.attack_speed -0.20 add_multiplied_total