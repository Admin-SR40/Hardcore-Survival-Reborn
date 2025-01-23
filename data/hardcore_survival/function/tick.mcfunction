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

### 设定计分板初始值 ###
scoreboard players set @a hs.percentage 100
execute as @a store result score @s hs.maxHealth run attribute @s max_health get
execute as @a store result score @s hs.yaw run data get entity @s Rotation[0]
execute as @a store result score @s hs.pitch run data get entity @s Rotation[1]
execute as @e store result score @s hs.fireTick run data get entity @s Fire

### 新玩家初始化 ###
execute as @a if entity @s[tag=!hs.init] run function hardcore_survival:init/init

### 水分减少 ###
execute as @a if score @s hs.water matches 1.. run scoreboard players add @s hs.waterTimer 1
execute as @a if score @s hs.waterTimer matches 720.. run scoreboard players remove @s hs.water 1
execute as @a if score @s hs.waterTimer matches 720.. run scoreboard players set @s hs.waterTimer 0
execute as @a if score @s hs.water matches 0 run scoreboard players set @s hs.waterTimer 0

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

### 低头显示水分 ###
execute as @a if score @s hs.pitch matches 61..90 run title @s actionbar [{"text":"[","color":"yellow"},{"translate":"message.water","fallback":"水分 ","color":"aqua"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"hs.water"},"color":"aqua","extra":[{"text":"%","color":"aqua"}]},{"text":"]","color":"yellow"}]

### 喝水获得水分 ###
execute as @a if score @s hs.usedMilkBucket matches 1.. run function hardcore_survival:drink/drink
execute as @a if score @s hs.usedWaterBottle matches 1.. run function hardcore_survival:drink/drink

### 离着火生物过近造成伤害 ###
execute as @e at @s if score @s hs.fireTick matches 1.. run execute as @e[distance=..1.5] unless score @s hs.fireTick matches 1.. run data merge entity @s {Fire:100s}
execute as @e at @s if score @s hs.fireTick matches 1.. run execute as @a[distance=..1.5] unless score @s hs.fireTick matches 1.. run damage @s 1 in_fire

### 体力值效果 ###
execute as @a if score @s hs.sprintTick matches 0 if score @s hs.jumpTimes matches 0 if score @s hs.sneakTick matches 0 if score @s hs.exhaustion matches 2.. run scoreboard players remove @s hs.exhaustion 2
execute as @a if score @s hs.sprintTick matches 0 if score @s hs.jumpTimes matches 0 if score @s hs.sneakTick matches 1.. if score @s hs.exhaustion matches 2.. run scoreboard players remove @s hs.exhaustion 2
execute as @a if score @s hs.sprintTick matches 1.. run scoreboard players add @s hs.exhaustion 1
execute as @a if score @s hs.sprintTick matches 1.. run effect give @s hunger 1 0 true
execute as @a if score @s hs.sprintTick matches 1.. run scoreboard players set @s hs.sprintTick 0
execute as @a if score @s hs.jumpTimes matches 1.. run scoreboard players add @s hs.exhaustion 40
execute as @a if score @s hs.jumpTimes matches 1.. run effect give @s hunger 1 0 true
execute as @a if score @s hs.jumpTimes matches 1.. run scoreboard players set @s hs.jumpTimes 0
execute as @a if score @s hs.exhaustion matches 1200.. run attribute @s movement_speed modifier add exhaustion.move_speed -0.4 add_multiplied_total
execute as @a if score @s hs.exhaustion matches 1200.. run attribute @s jump_strength modifier add exhaustion.jump_strength -0.4 add_multiplied_total
execute as @a if score @s hs.exhaustion matches ..900 run attribute @s movement_speed modifier remove exhaustion.move_speed
execute as @a if score @s hs.exhaustion matches ..900 run attribute @s jump_strength modifier remove exhaustion.jump_strength
execute as @a if score @s hs.exhaustion matches 1300.. run scoreboard players set @s hs.exhaustion 1300
scoreboard players set @s hs.sneakTick 0

### 低状态获得DEBUFF ###
execute as @a run scoreboard players operation @s hs.temp = @s hs.percentage
execute as @a run scoreboard players operation @s hs.temp *= @s hs.health
execute as @a run scoreboard players operation @s hs.temp /= @s hs.maxHealth
execute as @a run function hardcore_survival:debuff/apply