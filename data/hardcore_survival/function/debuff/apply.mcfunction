# 根据数值给予效果
execute as @s if score @s hs.temp matches 31..50 run function hardcore_survival:debuff/level_1
execute as @s if score @s hs.temp matches 11..30 run function hardcore_survival:debuff/level_2
execute as @s if score @s hs.temp matches 0..10 run function hardcore_survival:debuff/level_3

execute as @s if score @s hs.water matches 31..50 run function hardcore_survival:debuff/level_1
execute as @s if score @s hs.water matches 11..30 run function hardcore_survival:debuff/level_2
execute as @s if score @s hs.water matches 0..10 run function hardcore_survival:debuff/level_3