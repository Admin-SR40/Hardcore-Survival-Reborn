execute as @s if score @s hs.temp matches 31..50 run attribute @s attack_damage modifier add health.attack_damage -0.15 add_multiplied_total
execute as @s if score @s hs.temp matches 31..50 run attribute @s movement_speed modifier add health.movement_speed -0.15 add_multiplied_total
execute as @s if score @s hs.temp matches 31..50 run attribute @s attack_speed modifier add health.attack_speed -0.1 add_multiplied_total

execute as @s if score @s hs.water matches 31..50 run attribute @s attack_damage modifier add water.attack_damage -0.15 add_multiplied_total
execute as @s if score @s hs.water matches 31..50 run attribute @s movement_speed modifier add water.movement_speed -0.15 add_multiplied_total
execute as @s if score @s hs.water matches 31..50 run attribute @s attack_speed modifier add water.attack_speed -0.1 add_multiplied_total