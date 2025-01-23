execute as @s if score @s hs.usedMilkBucket matches 1.. run scoreboard players add @s hs.water 45
execute as @s if score @s hs.usedWaterBottle matches 1.. run scoreboard players add @s hs.water 30

execute as @s if score @s hs.water matches 100.. run scoreboard players set @s hs.water 100

scoreboard players set @s hs.usedMilkBucket 0
scoreboard players set @s hs.usedWaterBottle 0