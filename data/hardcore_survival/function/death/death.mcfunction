scoreboard players set @s hs.death 0
scoreboard players set @s hs.woundTimer 0
scoreboard players set @s hs.woundLevel 0

execute as @s at @s run tellraw @a[distance=0.05..] [{"text":"☠ ","color":"red"},{"selector":"@s","color":"gray"},{"translate":"message.death","fallback":"死了","color":"gray"}]
tellraw @s [{"text":"☠ ","color":"red"},{"translate":"message.death","fallback":"你死了","color":"gray"}]