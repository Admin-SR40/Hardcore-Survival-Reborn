# 重置计分板
scoreboard players set @s hs.death 0
scoreboard players set @s hs.woundTimer 0
scoreboard players set @s hs.woundLevel 0
scoreboard players set @s hs.waterTimer 0
scoreboard players set @s hs.water 100
scoreboard players set @s hs.darkTimer 0
scoreboard players set @s hs.sprintTick 0
scoreboard players set @s hs.drinkTimer 0
scoreboard players set @s hs.exhaustion 0
scoreboard players set @s hs.shieldBlockTimes 0
scoreboard players set @s hs.shieldBlockTimer 0


# 死亡提示
execute as @s at @s run tellraw @a[distance=0.05..] [{"text":"☠ ","color":"red"},{"selector":"@s","color":"gray"},{"translate":"message.death","fallback":"死了","color":"gray"}]
tellraw @s [{"text":"☠ ","color":"red"},{"translate":"message.death","fallback":"你死了","color":"gray"}]

# 死亡后获得效果
effect give @s invisibility 10 0 true