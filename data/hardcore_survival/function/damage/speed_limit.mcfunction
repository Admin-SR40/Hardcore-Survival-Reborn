execute as @s at @s store result score @s hs.attackSpeed run scoreboard players get @p[scores={hs.dealDamage=1..},distance=..5] hs.attackSpeed
scoreboard players operation @s hs.attackSpeed /= hs.temp_10 hs.temp
scoreboard players operation @s hs.attackSpeed /= hs.temp_2 hs.temp
scoreboard players operation @s hs.attackSpeed -= hs.temp_10 hs.temp
scoreboard players operation @s hs.attackSpeed *= hs.temp_-1 hs.temp

scoreboard players set @a hs.dealDamage 0