#   _   _               _                      ____                   _            _ 
#  | | | | __ _ _ __ __| | ___ ___  _ __ ___  / ___| _   _ _ ____   _(___   ____ _| |
#  | |_| |/ _` | '__/ _` |/ __/ _ \| '__/ _ \ \___ \| | | | '__\ \ / | \ \ / / _` | |
#  |  _  | (_| | | | (_| | (_| (_) | | |  __/  ___) | |_| | |   \ V /| |\ V | (_| | |
#  |_| |_|\__,_|_|  \__,_|\___\___/|_|  \___| |____/ \__,_|_|    \_/ |_| \_/ \__,_|_|
#                           ____      _                                              
#                          |  _ \ ___| |__   ___  _ __ _ __                          
#                          | |_) / _ | '_ \ / _ \| '__| '_ \                         
#                          |  _ |  __| |_) | (_) | |  | | | |                        
#                          |_| \_\___|_.__/ \___/|_|  |_| |_|                        
#

# Hardcore Survival Reborn
# Created by Admin_SR40
# All rights reserved. Do not distribute.

# Thanks for playing Hardcore Survival Reborn!
# Current Version: 0.2 Alpha
# Compatible Minecraft Version: 1.21.3+
# GitHub Respository: https://github.com/Admin-SR40/Hardcore-Survival-Reborn (Currently private)

# Found bugs? Create an Issue on GitHub or email me at 402757046@qq.com!
# Sorry, but all explanations are in Chinese.

# Contributors:
#  - Admin_SR40
#  - (Your name here!)

### 受击后受到伤害增加 ###
execute as @a if score @s hs.takeDamage matches 30.. if data entity @s {HurtTime:10s} run function hardcore_survival:wound/take
execute as @a if score @s hs.woundLevel matches 1.. run scoreboard players add @s hs.woundTimer 1
execute as @a if score @s hs.woundLevel matches 1.. if score @s hs.woundTimer matches 1200.. run scoreboard players remove @s hs.woundLevel 1
execute as @a unless score @s hs.woundLevel matches 1.. run scoreboard players set @s hs.woundTimer 0

### 死亡重置 ###
execute as @a if score @s hs.death matches 1.. run function hardcore_survival:death/death

### 锁定难度 ###
difficulty hard

### TITLE初始化 ###
title @a times 0 20 0

### 设定计分板初始值 ###
scoreboard players set @a hs.percentage 100
execute as @a store result score @s hs.maxHealth run attribute @s max_health get

### 低生命获得DEBUFF ###
execute as @a run scoreboard players operation @s hs.temp = @s hs.percentage
execute as @a run scoreboard players operation @s hs.temp *= @s hs.health
execute as @a run scoreboard players operation @s hs.temp /= @s hs.maxHealth
execute as @a run function hardcore_survival:debuff/apply

### 黑暗地区获得黑暗BUFF ###
execute as @a at @s if predicate hardcore_survival:is_dark run scoreboard players add @s hs.darkTimer 1
execute as @a at @s unless predicate hardcore_survival:is_dark run scoreboard players remove @s hs.darkTimer 1
execute as @a if score @s hs.darkTimer matches ..-601 run scoreboard players set @s hs.darkTimer -600
execute as @a if score @s hs.darkTimer matches 601.. run scoreboard players set @s hs.darkTimer 600
execute as @a at @s if predicate hardcore_survival:is_dark if score @s hs.darkTimer matches ..-1 run effect give @s darkness 3 0 true

### 手持指南针显示坐标 ###
execute as @a store result score @s hs.posX run data get entity @s Pos.[0]
execute as @a store result score @s hs.posY run data get entity @s Pos.[1]
execute as @a store result score @s hs.posZ run data get entity @s Pos.[2]
execute as @a if data entity @s {SelectedItem:{id:"minecraft:compass"}} run title @s actionbar [{"text":"[ ","color":"aqua"},{"score":{"name":"@s","objective":"hs.posX"},"color":"gold","extra":[{"text":", ","color":"gray"}]},{"score":{"name":"@s","objective":"hs.posY"},"color":"gold","extra":[{"text":", ","color":"gray"}]},{"score":{"name":"@s","objective":"hs.posZ"},"color":"gold"},{"text":" ]","color":"aqua"}]