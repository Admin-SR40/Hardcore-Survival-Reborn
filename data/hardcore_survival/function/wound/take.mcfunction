scoreboard players add @s hs.woundLevel 1
scoreboard players set @s hs.takeDamage 0
scoreboard players set @s hs.woundTimer 0

execute as @s if score @s hs.woundLevel matches 6.. run scoreboard players set @s hs.woundLevel 5

execute as @s if score @s hs.woundLevel matches 1 run damage @s 0.2 hardcore_survival:bypass
execute as @s if score @s hs.woundLevel matches 2 run damage @s 0.4 hardcore_survival:bypass
execute as @s if score @s hs.woundLevel matches 3 run damage @s 0.6 hardcore_survival:bypass
execute as @s if score @s hs.woundLevel matches 4 run damage @s 0.8 hardcore_survival:bypass
execute as @s if score @s hs.woundLevel matches 5 run damage @s 1.0 hardcore_survival:bypass