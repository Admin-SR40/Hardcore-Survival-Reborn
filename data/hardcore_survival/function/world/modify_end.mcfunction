execute in the_end unless entity @a[distance=..0] run return fail
execute as @e[type=ender_dragon] in the_end if data entity @s[distance=0..] {DragonPhase:3} run data merge entity @s {DragonPhase:0}
execute as @e[type=end_crystal] in the_end if entity @s[distance=0..] at @s run execute as @e[type=#minecraft:projectile,distance=..5] run data merge entity @s {Motion:[0, 0, 0,]}