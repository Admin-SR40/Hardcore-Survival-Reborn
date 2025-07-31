execute as @s at @s run summon armor_stand ^ ^ ^1 {Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,equipment:{mainhand:{id:"minecraft:iron_axe",count:1},offhand:{id:"minecraft:iron_axe",count:1}},Tags:["hs.shieldBreaker"]}

attribute @s knockback_resistance modifier add shield.knockback_resistance 99 add_value
execute as @e[tag=hs.shieldBreaker] at @s run damage @p[scores={hs.shieldBlockTimes=4..}] 0.1 mob_attack_no_aggro by @s
kill @e[tag=hs.shieldBreaker]
attribute @s knockback_resistance modifier remove shield.knockback_resistance
effect give @s slowness 2 0 true
effect give @s weakness 2 0 true
scoreboard players set @s hs.shieldBlockTimes 0
scoreboard players set @s hs.shieldBlockTimer 0
scoreboard players set @s hs.usedShield 0