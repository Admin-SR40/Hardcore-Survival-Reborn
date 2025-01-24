scoreboard players set @s hs.usedTotem 0

effect clear @s
effect give @s resistance 10 0 true
effect give @s fire_resistance 10 0 true
effect give @s water_breathing 10 0 true
effect give @s slow_falling 10 0 true
effect give @s instant_health 1 0 true
execute as @s at @s run execute as @e[distance=0.05..4] run damage @s 2 mob_attack_no_aggro at ~ ~ ~
execute as @s at @s run execute as @e[distance=0.05..4] run scoreboard players add @s hs.stunTimer 40