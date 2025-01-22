attribute @s attack_damage modifier remove health.attack_damage
attribute @s movement_speed modifier remove health.movement_speed

execute as @s if score @s hs.temp matches 31..50 run function hardcore_survival:debuff/level_1
execute as @s if score @s hs.temp matches 11..30 run function hardcore_survival:debuff/level_2
execute as @s if score @s hs.temp matches 1..10 run function hardcore_survival:debuff/level_3