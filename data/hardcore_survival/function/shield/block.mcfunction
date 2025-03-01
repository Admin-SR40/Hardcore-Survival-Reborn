scoreboard players set @s hs.usedShield 0
scoreboard players add @s hs.shieldBlockTimes 1
scoreboard players set @s hs.shieldBlockTimer 0

attribute @s knockback_resistance modifier add shield.knockback_resistance 99 add_value
damage @s 0.5 bypass at ~ ~ ~
attribute @s knockback_resistance modifier remove shield.knockback_resistance