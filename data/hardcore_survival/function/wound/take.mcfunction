# 重置计分板
scoreboard players add @s hs.woundLevel 1
scoreboard players set @s hs.takeDamage 0
scoreboard players set @s hs.woundTimer 0

# 设置上限
execute as @s if score @s hs.woundLevel matches 6.. run scoreboard players set @s hs.woundLevel 5

# 造成伤害
attribute @s knockback_resistance modifier add wound.take_damage 99 add_value
execute as @s if score @s hs.woundLevel matches 1 run damage @s 0.2 minecraft:bypass
execute as @s if score @s hs.woundLevel matches 2 run damage @s 0.4 minecraft:bypass
execute as @s if score @s hs.woundLevel matches 3 run damage @s 0.6 minecraft:bypass
execute as @s if score @s hs.woundLevel matches 4 run damage @s 0.8 minecraft:bypass
execute as @s if score @s hs.woundLevel matches 5 run damage @s 1.0 minecraft:bypass
attribute @s knockback_resistance modifier remove wound.take_damage