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
# All rights reserved, do not distribute.

# Thanks for playing Hardcore Survival Reborn!
# Current Version: 2.0 Gamma
# Compatible Minecraft Version: 1.21.4+
# GitHub Respository: https://github.com/Admin-SR40/Hardcore-Survival-Reborn

# Found bugs? Create an Issue on GitHub or email me at 402757046@qq.com!
# Sorry, but all explanations are in Chinese.

# Contributors:
#  - Admin_SR40
#  - FishHave
#  - BaiYu_
#  - Hqn233
#  - SuererRiels

### 受击后受到伤害增加 ###
execute as @a if score @s hs.takeDamage matches 30.. if data entity @s {HurtTime:9s} run function hardcore_survival:wound/take
execute as @a if score @s hs.woundLevel matches 1.. run scoreboard players add @s hs.woundTimer 1
execute as @a if score @s hs.woundLevel matches 1.. if score @s hs.woundTimer matches 600.. run scoreboard players remove @s hs.woundLevel 1
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
execute as @e[type=!#ignore] if entity @e[distance=0.05..2] store result score @s hs.fireTick run data get entity @s Fire

### 新玩家初始化 ###
execute as @a if entity @s[tag=!hs.init] run function hardcore_survival:init/init

### 水分减少 ###
execute as @a if score @s hs.water matches 1.. run scoreboard players add @s hs.waterTimer 2
execute as @a if score @s hs.sprintTick matches 1.. run scoreboard players add @s hs.waterTimer 2
execute as @a if score @s hs.jumpTimes matches 1.. run scoreboard players add @s hs.waterTimer 20
execute as @a if score @s hs.waterTimer matches 1440.. run scoreboard players remove @s hs.water 1
execute as @a if score @s hs.waterTimer matches 1440.. run scoreboard players set @s hs.waterTimer 0
execute as @a if score @s hs.water matches 0 run scoreboard players set @s hs.waterTimer 0
execute as @a if score @s hs.water matches 0 run scoreboard players add @s hs.waterHurtTimer 1
execute as @a if score @s hs.waterHurtTimer matches 80.. run damage @s 1 bypass
execute as @a if score @s hs.waterHurtTimer matches 80.. run scoreboard players set @s hs.waterHurtTimer 0
execute as @a if score @s hs.water matches 1.. run scoreboard players set @s hs.waterHurtTimer 0

### 水中蹲下喝水 ###
execute as @a at @s if score @s hs.sneakTick matches 1.. if block ~ ~ ~ water run scoreboard players add @s hs.drinkTimer 1
execute as @a if score @s hs.drinkTimer matches 20.. run scoreboard players add @s hs.water 2
execute as @a if score @s hs.water matches 100.. run scoreboard players set @s hs.water 100
execute as @a if score @s hs.drinkTimer matches 20.. run scoreboard players set @s hs.drinkTimer 0
execute as @a if score @s hs.sneakTick matches 1.. run scoreboard players set @s hs.sneakTick 0

### 黑暗地区获得黑暗BUFF ###
execute as @a at @s if predicate hardcore_survival:is_dark run scoreboard players add @s hs.darkTimer 1
execute as @a at @s unless predicate hardcore_survival:is_dark run scoreboard players remove @s hs.darkTimer 1
execute as @a if score @s hs.darkTimer matches ..-601 run scoreboard players set @s hs.darkTimer -600
execute as @a if score @s hs.darkTimer matches 601.. run scoreboard players set @s hs.darkTimer 600
execute as @a at @s if predicate hardcore_survival:is_dark unless dimension the_end unless data entity @s {active_effects:[{id:"minecraft:night_vision"}]} if score @s hs.darkTimer matches ..-1 run effect give @s darkness 3 0 true

### 低头显示水分 ###
execute as @a if score @s hs.pitch matches 61..90 run title @s actionbar [{"text":"[ ","color":"yellow"},{"translate":"message.water","fallback":"水分 ","color":"aqua"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"hs.water"},"color":"aqua","extra":[{"text":"%","color":"aqua"}]},{"text":" ]","color":"yellow"}]

### 喝水获得水分 ###
execute as @a if score @s hs.usedMilkBucket matches 1.. run function hardcore_survival:drink/drink
execute as @a if score @s hs.usedWaterBottle matches 1.. run function hardcore_survival:drink/drink

### 离着火生物过近造成伤害 ###
execute as @e at @s if score @s hs.fireTick matches 1.. run execute as @e[distance=..1.25] unless score @s hs.fireTick matches 1.. run scoreboard players add @s hs.fireTimer 1
execute as @e if score @s hs.fireTimer matches 30.. run data merge entity @s {Fire:100s}
execute as @e if score @s hs.fireTimer matches 30.. run scoreboard players set @s hs.fireTimer 0
execute as @e if score @s hs.fireTick matches 0 run scoreboard players set @s hs.fireTimer 0
execute as @e at @s if score @s hs.fireTick matches 1.. run execute as @a[distance=..1.25] unless score @s hs.fireTick matches 1.. run damage @s 1 in_fire

### 体力值效果 ###
execute as @a if score @s hs.sprintTick matches 0 if score @s hs.jumpTimes matches 0 if score @s hs.sneakTick matches 0 if score @s hs.exhaustion matches 2.. run scoreboard players remove @s hs.exhaustion 2
execute as @a if score @s hs.sprintTick matches 0 if score @s hs.jumpTimes matches 0 if score @s hs.sneakTick matches 1.. if score @s hs.exhaustion matches 2.. run scoreboard players remove @s hs.exhaustion 2
execute as @a if score @s hs.sprintTick matches 1.. run scoreboard players add @s hs.exhaustion 1
execute as @a if score @s hs.sprintTick matches 1.. run effect give @s hunger 1 0 true
execute as @a if score @s hs.sprintTick matches 1.. run scoreboard players set @s hs.sprintTick 0
execute as @a if score @s hs.jumpTimes matches 1.. run scoreboard players add @s hs.exhaustion 40
execute as @a if score @s hs.jumpTimes matches 1.. run effect give @s hunger 1 0 true
execute as @a if score @s hs.jumpTimes matches 1.. run scoreboard players set @s hs.jumpTimes 0
execute as @a if score @s hs.exhaustion matches 1200.. run attribute @s movement_speed modifier add exhaustion.movement_speed -0.4 add_multiplied_total
execute as @a if score @s hs.exhaustion matches 1200.. run attribute @s jump_strength modifier add exhaustion.jump_strength -0.4 add_multiplied_total
execute as @a if score @s hs.exhaustion matches 1200.. run title @s[tag=!hs.tiredReminder] title ""
execute as @a if score @s hs.exhaustion matches 1200.. run title @s[tag=!hs.tiredReminder] subtitle [{"translate":"message.tired_1","fallback":"你累了, ","color":"yellow"},{"translate":"message.tired_2","fallback":"休息一会吧!","color":"yellow"}]
execute as @a if score @s hs.exhaustion matches 1200.. run tag @s add hs.tiredReminder
execute as @a if score @s hs.exhaustion matches ..900 run tag @s remove hs.tiredReminder
execute as @a if score @s hs.exhaustion matches ..900 run attribute @s movement_speed modifier remove exhaustion.movement_speed
execute as @a if score @s hs.exhaustion matches ..900 run attribute @s jump_strength modifier remove exhaustion.jump_strength
execute as @a if score @s hs.exhaustion matches 1300.. run scoreboard players set @s hs.exhaustion 1300
scoreboard players set @s hs.sneakTick 0
