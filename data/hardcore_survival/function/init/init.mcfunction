scoreboard players set @s hs.water 100
scoreboard players set @s hs.waterTimer 0
scoreboard players set @s hs.darkTimer -600
scoreboard players set @s hs.temp 0
scoreboard players set @s hs.percentage 100
scoreboard players set @s hs.woundTimer 0
scoreboard players set @s hs.woundLevel 0
scoreboard players set @s hs.dealDamage 0
scoreboard players set @s hs.takeDamage 0
scoreboard players set @s hs.exhaustion 0
scoreboard players set @s hs.sneakTick 0
scoreboard players set @s hs.sprintTick 0
scoreboard players set @s hs.jumpTimes 0
scoreboard players set @s hs.attackSpeed 0

tag @s add hs.init

tellraw @s [{"translate":"message.new_0","fallback":"","color":"gold"}]
tellraw @s [{"translate":"message.new_1","fallback":"欢迎来到 ","color":"green"},{"text":"Hardcore Survival Reborn","color":"aqua"}]
tellraw @s [{"translate":"message.new_2","fallback":"目前数据包版本: ","color":"green"},{"text":"1.5 Beta","color":"aqua"}]

title @s times 0 100 0
title @s title [{"translate":"message.new_title","fallback":"Hardcore Survival","color":"aqua"}]
title @s subtitle [{"translate":"message.new_subtitle","fallback":"Reborn","color":"red"}]