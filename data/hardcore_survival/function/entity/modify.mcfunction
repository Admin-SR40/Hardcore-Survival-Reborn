attribute @s attack_damage modifier add mob.attack_damage 0.5 add_multiplied_total
attribute @s[type=!creeper] max_health modifier add mob.max_health 0.5 add_multiplied_total
execute as @s if entity @s[type=#undead] run effect give @s instant_damage 3 9 true
execute as @s if entity @s[type=!#undead,type=!creeper] run effect give @s instant_health 3 9 true
data merge entity @s {drop_chances:{body:0,chest:0,body:0,feet:0,head:0,legs:0,mainhand:0,offhand:0}}
execute as @s if entity @s[type=creeper] run data merge entity @s {Fuse:20s}
tag @s add hs.mob