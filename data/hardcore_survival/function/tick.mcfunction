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
# Current Version: 1.6 Beta
# Compatible Minecraft Version: 1.21.4+
# GitHub Respository: https://github.com/Admin-SR40/Hardcore-Survival-Reborn

# Found bugs? Create an Issue on GitHub or email me at 402757046@qq.com!
# Sorry, but all explanations are in Chinese.

# Contributors:
#  - Admin_SR40
#  - (Your name here!)

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
execute as @e store result score @s hs.fireTick run data get entity @s Fire

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

### 低状态获得DEBUFF ###
execute as @a run scoreboard players operation @s hs.temp = @s hs.percentage
execute as @a run scoreboard players operation @s hs.temp *= @s hs.health
execute as @a run scoreboard players operation @s hs.temp /= @s hs.maxHealth
execute as @a run function hardcore_survival:debuff/apply

### 生物加强 ###
execute as @e[type=!player] run attribute @s attack_damage modifier add mob.attack_damage 0.5 add_multiplied_total
execute as @e[type=!player] run attribute @s[type=!creeper] max_health modifier add mob.max_health 0.5 add_multiplied_total
execute as @e[type=!player] if entity @s[tag=!hs.mob] if entity @s[type=#undead] run effect give @s instant_damage 3 9 true
execute as @e[type=!player] if entity @s[tag=!hs.mob] if entity @s[type=!#undead,type=!creeper] run effect give @s instant_health 3 9 true
execute as @e[type=!player] if entity @s[tag=!hs.mob] run tag @s add hs.mob
execute as @e[type=creeper] unless data entity @s {powered:true} run data merge entity @s {Fuse:20s}
execute as @e[type=creeper] if data entity @s {powered:true} run data merge entity @s {Fuse:15s}

### 弓类效果 ###
execute as @a if score @s hs.usedBow matches 1.. run function hardcore_survival:bow/bow
execute as @a if score @s hs.usedCrossbow matches 1.. run function hardcore_survival:bow/crossbow
execute as @a if score @s hs.bowTimer matches 1.. run scoreboard players remove @s hs.bowTimer 1
execute as @a if score @s hs.bowTimer matches 0 run function hardcore_survival:bow/clear

### 不死图腾 ###
execute as @a if score @s hs.usedTotem matches 1.. run function hardcore_survival:totem/totem
execute as @e if score @s hs.stunTimer matches 1.. run attribute @s movement_speed modifier add stun.movement_speed -1 add_multiplied_total
execute as @e if score @s hs.stunTimer matches 1.. run attribute @s attack_damage modifier add stun.attack_damage -1 add_multiplied_total
execute as @e if score @s hs.stunTimer matches 1.. run scoreboard players remove @s hs.stunTimer 1
execute as @e if score @s hs.stunTimer matches 0 run attribute @s movement_speed modifier remove stun.movement_speed
execute as @e if score @s hs.stunTimer matches 0 run attribute @s attack_damage modifier remove stun.attack_damage

### 盾牌效果 ###
execute as @a run function hardcore_survival:shield/hold
execute as @a at @s if score @s hs.usedShield matches 1.. run function hardcore_survival:shield/block

### 怪物箭矢加强 ###
execute as @e[type=!player] at @s run data merge entity @e[type=arrow,distance=..0.05,limit=1,sort=nearest,tag=!hs.player] {damage:3.5d}

### 重锤减速 ###
execute as @a run function hardcore_survival:mace/hold

### 末影龙不停留 ###
execute as @e[type=ender_dragon] if data entity @s {DragonPhase:3} run data merge entity @s {DragonPhase:0}

### 末影人主动攻击 ###
execute as @e[type=enderman] at @s unless dimension the_end if entity @a[distance=..4] run data modify entity @s AngryAt set from entity @p[gamemode=!creative,gamemode=!spectator] UUID

### 末影水晶免疫投掷物 ###
execute as @e[type=end_crystal] at @s run execute as @e[type=#minecraft:projectile,distance=..5] run data merge entity @s {Motion:[0, 0, 0,]}

### 玩家射出箭矢削弱 ###
execute as @e[type=#minecraft:arrows,tag=hs.player] run data merge entity @s {crit:false}
execute as @e[type=#minecraft:arrows,tag=hs.player] run data merge entity @s {shake:true}
execute as @e[type=#minecraft:arrows] run data merge entity @s {pickup:0b}

### 怪物不掉落装备 ###
execute as @e[type=!player] run data merge entity @s {ArmorDropChances:[0.0f, 0.0f, 0.0f, 0.0f],HandDropChances:[0.0f, 0.0f]}

### 非法物品替换 ###
execute as @a store result score @s hs.temp run clear @s #equipments[!custom_data] 0
execute as @a if score @s hs.temp matches 1.. run function hardcore_survival:item/equipments
execute as @a store result score @s hs.temp run clear @s #foods[!custom_data] 0
execute as @a if score @s hs.temp matches 1.. run function hardcore_survival:item/foods

### 经验流失 ###
execute as @a store result score @s hs.xpLevels run xp query @s levels
execute as @a store result score @s hs.xpAmount run xp query @s points
execute as @a if score @s hs.xpLevels matches 30.. if score @s hs.xpAmount matches 1.. run scoreboard players add @s hs.xpTimer 1
execute as @a if score @s hs.xpTimer matches 20.. run xp add @s -1 points
execute as @a if score @s hs.xpTimer matches 20.. run scoreboard players set @s hs.xpTimer 0

### 天气效果 ###
execute as @a run attribute @s movement_speed modifier remove weather.movement_speed
execute as @a run attribute @s attack_speed modifier remove weather.attack_speed
execute as @a[tag=!hs.weatherReminderRain] at @s if dimension minecraft:overworld if predicate hardcore_survival:rain run title @s times 0 30 0
execute as @a[tag=!hs.weatherReminderRain] at @s if dimension minecraft:overworld if predicate hardcore_survival:rain run title @s title ""
execute as @a[tag=!hs.weatherReminderRain] at @s if dimension minecraft:overworld if predicate hardcore_survival:rain run title @s subtitle {"text":"下雨了...你的身体变得沉重","color":"yellow"}
execute as @a[tag=!hs.weatherReminderRain] at @s if dimension minecraft:overworld if predicate hardcore_survival:thunder run title @s times 0 30 0
execute as @a[tag=!hs.weatherReminderThunder] at @s if dimension minecraft:overworld if predicate hardcore_survival:thunder run title @s title ""
execute as @a[tag=!hs.weatherReminderThunder] at @s if dimension minecraft:overworld if predicate hardcore_survival:thunder run title @s subtitle {"text":"是雷雨...你难以在雨中移动","color":"yellow"}
execute as @a[tag=!hs.weatherReminderRain] at @s if dimension minecraft:overworld if predicate hardcore_survival:rain run tag @s add hs.weatherReminderRain
execute as @a[tag=!hs.weatherReminderThunder] at @s if dimension minecraft:overworld if predicate hardcore_survival:thunder run tag @s add hs.weatherReminderThunder
execute as @a at @s if dimension minecraft:overworld if predicate hardcore_survival:rain run attribute @s movement_speed modifier add weather.movement_speed -0.1 add_multiplied_total
execute as @a at @s if dimension minecraft:overworld if predicate hardcore_survival:rain run attribute @s attack_speed modifier add weather.attack_speed -0.1 add_multiplied_total
execute as @a at @s if dimension minecraft:overworld if predicate hardcore_survival:thunder run attribute @s movement_speed modifier add weather.movement_speed -0.15 add_multiplied_total
execute as @a at @s if dimension minecraft:overworld if predicate hardcore_survival:thunder run attribute @s attack_speed modifier add weather.attack_speed -0.15 add_multiplied_total
execute if predicate hardcore_survival:rain run gamerule randomTickSpeed 3
execute if predicate hardcore_survival:thunder run gamerule randomTickSpeed 4
execute if predicate hardcore_survival:no_weather run gamerule randomTickSpeed 2
execute as @a at @s if dimension minecraft:overworld if predicate hardcore_survival:no_weather run tag @s remove hs.weatherReminderRain
execute as @a at @s if dimension minecraft:overworld if predicate hardcore_survival:no_weather run tag @s remove hs.weatherReminderThunder

### 削弱斧头伤害 ###
execute as @a if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{axe:1b}}}} run attribute @s attack_damage modifier add axe.attack_damage -0.25 add_multiplied_total
execute as @a unless data entity @s {SelectedItem:{components:{"minecraft:custom_data":{axe:1b}}}} run attribute @s attack_damage modifier remove axe.attack_damage

### 丢弃物品锁定 (暂时禁用) ###
# execute as @e[type=item] run data modify entity @s Owner set from entity @s Thrower

### 骷髅骑蜘蛛 ###
execute as @e[type=#minecraft:skeletons,tag=!hs.randomized] store result score @s hs.randomGenerator run random value 1..4
execute as @e[type=#minecraft:skeletons,tag=!hs.randomized] if score @s hs.randomGenerator matches 4 run tag @s add hs.rideSpider
execute as @e[type=#minecraft:skeletons,tag=!hs.randomized] run tag @s add hs.randomized
execute as @e[type=#minecraft:skeletons,tag=hs.rideSpider] at @s run ride @s mount @e[distance=..2,type=spider,tag=!hs.rideSpider,limit=1,sort=nearest]
execute as @e[type=#minecraft:skeletons,tag=hs.rideSpider] at @s run tag @e[type=spider,distance=..2,tag=!hs.rideSpider,sort=nearest] add hs.rideSpider
execute as @e[type=#minecraft:skeletons] run scoreboard players reset @s hs.randomGenerator

### 僵尸受击提速 ###
execute as @e[type=#minecraft:zombies] if data entity @s {IsBaby:0b,HurtTime:10s} run attribute @s movement_speed modifier add zombie.movement_speed 0.25 add_multiplied_total

### 珍珠减速 ###
execute as @a if score @s hs.usedEnderPearl matches 1.. run tag @s add hs.usedEnderPearl
execute as @a[tag=hs.usedEnderPearl] run attribute @s movement_speed modifier add ender_pearl.movement_speed -0.75 add_multiplied_total
execute as @a[tag=hs.usedEnderPearl] run scoreboard players add @s hs.pearlTimer 1
execute as @a if score @s hs.usedEnderPearl matches 1.. run scoreboard players set @s hs.usedEnderPearl 0
execute as @a if score @s hs.pearlTimer matches 20.. run tag @s remove hs.usedEnderPearl
execute as @a if score @s hs.pearlTimer matches 20.. run attribute @s movement_speed modifier remove ender_pearl.movement_speed
execute as @a if score @s hs.pearlTimer matches 20.. run scoreboard players set @s hs.pearlTimer 0

### 僵尸成群生成 ###
execute as @e[type=#zombies,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!zoglin,tag=!hs.groupZombie] unless score @s hs.randomGenerator matches 1..4 store result score @s hs.randomGenerator run random value 1..4
execute as @e[type=#zombies,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!zoglin,tag=!hs.groupZombie] if score @s hs.randomGenerator matches 4 run function hardcore_survival:zombie/spawn
execute as @e[type=#zombies,type=!zombie_horse,type=!zombie_villager,type=!zombified_piglin,type=!drowned,type=!zoglin,tag=!hs.groupZombie] run tag @s add hs.groupZombie

### 蜜蜂 ###
execute as @e[type=bee] at @s run attribute @s scale base set 0.25
execute as @e[type=bee] at @s run data merge entity @s {HasStung:false}
execute as @e[type=bee] at @s if entity @e[distance=..2,type=!bee] run data merge entity @s {AngerTime:200s}

### 时间显示 ###
execute as @a if data entity @s {SelectedItem:{id:"minecraft:clock"}} run function hardcore_survival:time/display

### 手持指南针显示坐标 ###
execute as @a if data entity @s {SelectedItem:{id:"minecraft:compass"}} run function hardcore_survival:position/display

### 破盾 ###
execute as @a at @s if score @s hs.shieldBlockTimes matches 4.. run function hardcore_survival:shield/break
scoreboard players add @a hs.shieldBlockTimer 1
execute as @a if score @s hs.shieldBlockTimer matches 120.. run scoreboard players set @s hs.shieldBlockTimes 0

### 获取攻击速度 ###
scoreboard players set @a hs.attackSpeed 0
execute as @a store result score @s hs.temp run data get entity @s SelectedItem.components.minecraft:enchantments.levels."minecraft:fast_sword"
execute as @a run scoreboard players operation @s hs.temp *= hs.temp_20 hs.temp
execute as @a run scoreboard players operation @s hs.attackSpeed += @s hs.temp
execute as @a store result score @s hs.temp run data get entity @s SelectedItem.components.minecraft:enchantments.levels."minecraft:heavy_blade"
execute as @a run scoreboard players operation @s hs.temp *= hs.temp_20 hs.temp
execute as @a run scoreboard players operation @s hs.attackSpeed -= @s hs.temp
execute as @a if score @s hs-debug.forceAttackSpeed matches -2147483648..2147483647 run scoreboard players operation @s hs.attackSpeed = @s hs-debug.forceAttackSpeed
scoreboard players reset @s hs.temp

### 自定义攻击速度 ###
execute as @e[type=!player] if data entity @s {HurtTime:10s} run function hardcore_survival:damage/speed_limit
execute as @e[type=!player] if score @s hs.attackSpeed matches 1.. run data merge entity @s {Invulnerable:1b}
execute as @e[type=!player] if score @s hs.attackSpeed matches 1.. run scoreboard players remove @s hs.attackSpeed 1
execute as @e[type=!player] if score @s hs.attackSpeed matches 0 run data merge entity @s {Invulnerable:0b}
execute as @e[type=!player] if score @s hs.attackSpeed matches 0 run scoreboard players reset @s hs.attackSpeed

### 玩家触及距离 ###
execute as @a run attribute @s entity_interaction_range modifier add hs.reach_entity -1.5 add_value
execute as @a run attribute @s block_interaction_range modifier add hs.reach_block -1.5 add_value
execute as @a if data entity @s {SelectedItem:{}} run function hardcore_survival:reach/modify
execute as @a unless data entity @s {SelectedItem:{}} run attribute @s entity_interaction_range modifier remove item.reach_entity
execute as @a unless data entity @s {SelectedItem:{}} run attribute @s block_interaction_range modifier remove item.reach_block

### 显示生命变化 ###
execute as @e[tag=!hs.getHealth,type=!#ignore] store result score @s hs.currentHealth run data get entity @s Health 100
execute as @e[type=!#ignore] if score @s hs.originalHealth matches -2147483648..2147483647 run tag @s add hs.getHealth
execute as @e[type=!#ignore] unless score @s hs.originalHealth matches -2147483648..2147483647 run scoreboard players operation @s hs.originalHealth = @s hs.currentHealth
execute as @e[type=!#ignore] at @s if entity @a[distance=..16] if score @s hs.originalHealth < @s hs.currentHealth run function hardcore_survival:damage/heal
execute as @e[type=!#ignore,type=!player] at @s if entity @a[distance=..16] if data entity @s {HurtTime:10s} run function hardcore_survival:damage/damage
execute as @a at @s if entity @a[distance=..16] if data entity @s {HurtTime:9s} run function hardcore_survival:damage/damage
scoreboard players add @e[tag=hs.displayer] hs.disappearTimer 1
kill @e[tag=hs.displayer,scores={hs.disappearTimer=20..}]


### 清除非法物品 ###
clear @a barrier[custom_data={"hs.bannedRecipe":true}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{hs.bannedRecipe:1b}}}}]

### 数据处理 ###
scoreboard players reset @e hs.randomGenerator
scoreboard players reset @e hs.dealDamage