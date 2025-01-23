# 清除原有效果
attribute @s attack_damage modifier remove health.attack_damage
attribute @s movement_speed modifier remove health.movement_speed
attribute @s attack_speed modifier remove health.attack_speed
attribute @s attack_damage modifier remove water.attack_damage
attribute @s movement_speed modifier remove water.movement_speed
attribute @s attack_speed modifier remove water.attack_speed

# 根据数值给予效果
execute as @s if score @s hs.temp matches 31..50 run function hardcore_survival:debuff/level_1
execute as @s if score @s hs.temp matches 11..30 run function hardcore_survival:debuff/level_2
execute as @s if score @s hs.temp matches 0..10 run function hardcore_survival:debuff/level_3

execute as @s if score @s hs.water matches 31..50 run function hardcore_survival:debuff/level_1
execute as @s if score @s hs.water matches 11..30 run function hardcore_survival:debuff/level_2
execute as @s if score @s hs.water matches 0..10 run function hardcore_survival:debuff/level_3