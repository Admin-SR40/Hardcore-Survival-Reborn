attribute @s movement_speed modifier add stun.movement_speed -1 add_multiplied_total
attribute @s attack_damage modifier add stun.attack_damage -1 add_multiplied_total
scoreboard players remove @s hs.stunTimer 1

execute as @s if score @s hs.stunTimer matches 0 run return run function hardcore_survival:totem/stun_clear