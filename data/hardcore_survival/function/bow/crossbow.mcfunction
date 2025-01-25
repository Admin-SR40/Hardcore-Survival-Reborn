scoreboard players set @s hs.usedCrossbow 0

execute as @s at @s run tag @e[type=#minecraft:arrows,limit=1,sort=nearest] add hs.player

attribute @s attack_speed modifier add crossbow.attack_speed -0.5 add_multiplied_total
attribute @s attack_damage modifier add crossbow.attack_damage -0.5 add_multiplied_total
attribute @s movement_speed modifier add crossbow.movement_speed -0.25 add_multiplied_total

scoreboard players set @s hs.bowTimer 20