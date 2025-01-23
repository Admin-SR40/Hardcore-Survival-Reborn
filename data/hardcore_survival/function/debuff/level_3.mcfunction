execute as @s if score @s hs.temp matches 0..10 run attribute @s attack_damage modifier add health.attack_damage -0.45 add_multiplied_total
execute as @s if score @s hs.temp matches 0..10 run attribute @s movement_speed modifier add health.movement_speed -0.45 add_multiplied_total
execute as @s if score @s hs.temp matches 0..10 run attribute @s attack_speed modifier add health.attack_speed -0.30 add_multiplied_total
execute as @s if score @s hs.temp matches 0..10 run effect give @s blindness 5 0 true
execute as @s if score @s hs.temp matches 0..10 run effect give @s mining_fatigue 5 0 true

execute as @s if score @s hs.water matches 0..10 run attribute @s attack_damage modifier add water.attack_damage -0.45 add_multiplied_total
execute as @s if score @s hs.water matches 0..10 run attribute @s movement_speed modifier add water.movement_speed -0.45 add_multiplied_total
execute as @s if score @s hs.water matches 0..10 run attribute @s attack_speed modifier add water.attack_speed -0.30 add_multiplied_total
execute as @s if score @s hs.water matches 0..10 run effect give @s blindness 5 0 true
execute as @s if score @s hs.water matches 0..10 run effect give @s mining_fatigue 5 0 true