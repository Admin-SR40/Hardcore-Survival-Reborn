### 骷髅骑蜘蛛 ###
execute as @e[type=#minecraft:skeletons,tag=!hs.randomized] store result score @s hs.randomGenerator run random value 1..4
execute as @e[type=#minecraft:skeletons,tag=!hs.randomized] if score @s hs.randomGenerator matches 4 run tag @s add hs.rideSpider
execute as @e[type=#minecraft:skeletons,tag=!hs.randomized] run tag @s add hs.randomized
execute as @e[type=#minecraft:skeletons,tag=hs.rideSpider] at @s run ride @s mount @e[distance=..2,type=spider,tag=!hs.rideSpider,limit=1,sort=nearest]
execute as @e[type=#minecraft:skeletons,tag=hs.rideSpider] at @s run tag @e[type=spider,distance=..2,tag=!hs.rideSpider,sort=nearest] add hs.rideSpider
execute as @e[type=#minecraft:skeletons] run scoreboard players reset @s hs.randomGenerator

### 僵尸受击提速 ###
execute as @e[type=#minecraft:zombies,tag=!hs.speedBoosted] if data entity @s {IsBaby:0b,HurtTime:10s} run function hardcore_survival:zombie/speed_boost

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

### 蜜蜂修改 ###
execute as @e[type=bee] at @s run function hardcore_survival:entity/bee
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
execute as @a run function hardcore_survival:damage/speed_query

### 自定义攻击速度 ###
execute as @e[type=!player,type=!#ignore,nbt={HurtTime:10s}] at @s if entity @a[distance=..10] run function hardcore_survival:damage/speed_limit
execute as @e[type=!player,type=!#ignore] if score @s hs.attackSpeed matches 1.. run data merge entity @s {Invulnerable:1b}
execute as @e[type=!player,type=!#ignore] if score @s hs.attackSpeed matches 1.. run scoreboard players remove @s hs.attackSpeed 1
execute as @e[type=!player,type=!#ignore] if score @s hs.attackSpeed matches 0 run data merge entity @s {Invulnerable:0b}
execute as @e[type=!player,type=!#ignore] if score @s hs.attackSpeed matches 0 run scoreboard players reset @s hs.attackSpeed

### 玩家触及距离 ###
execute as @a run attribute @s entity_interaction_range modifier add hs.reach_entity -1.5 add_value
execute as @a run attribute @s block_interaction_range modifier add hs.reach_block -1.5 add_value
execute as @a if data entity @s {SelectedItem:{}} run function hardcore_survival:reach/modify
execute as @a unless data entity @s {SelectedItem:{}} run attribute @s entity_interaction_range modifier remove item.reach_entity
execute as @a unless data entity @s {SelectedItem:{}} run attribute @s block_interaction_range modifier remove item.reach_block

### 显示生命变化 ### (Temporarily disabled, waiting for update)
#execute as @e[tag=!hs.getHealth,type=!#ignore] store result score @s hs.currentHealth run data get entity @s Health 100
#execute as @e[type=!#ignore] if score @s hs.originalHealth matches -2147483648..2147483647 run tag @s add hs.getHealth
#execute as @e[type=!#ignore] unless score @s hs.originalHealth matches -2147483648..2147483647 run scoreboard players operation @s hs.originalHealth = @s hs.currentHealth
#execute as @e[type=!#ignore] at @s if entity @a[distance=..16] if score @s hs.originalHealth < @s hs.currentHealth run function hardcore_survival:damage/heal
#execute as @e[type=!#ignore,type=!player] at @s if entity @a[distance=..16] if data entity @s {HurtTime:10s} run function hardcore_survival:damage/damage
#execute as @a at @s if entity @a[distance=..16] if data entity @s {HurtTime:9s} run function hardcore_survival:damage/damage
#scoreboard players add @e[tag=hs.displayer] hs.disappearTimer 1
#kill @e[tag=hs.displayer,scores={hs.disappearTimer=20..}]

### 心跳视觉 ###
execute as @a store result score @s hs.currentHealth run data get entity @s Health 100
execute as @a[scores={hs.currentHealth=..499}] run function hardcore_survival:player/heartbeat

### 清除非法物品 ###
clear @a barrier[custom_data={"hs.bannedRecipe":true}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{hs.bannedRecipe:1b}}}}]

### 睡眠效果 ###
execute as @a if data entity @s {SleepTimer:101s} run function hardcore_survival:player/sleep_reset
scoreboard players add @a hs.timeTillLastSleep 1
execute as @a run function hardcore_survival:player/sleep_clear
execute as @a if score @s hs.timeTillLastSleep matches 48000.. run function hardcore_survival:player/sleep_punishments

### 条款处理 ###
execute as @a if score @s hs.agreeTOS matches 1.. run tag @s add hs.agreeTOS
scoreboard players enable @a hs.termOfUsePage
scoreboard players enable @a hs.agreeTOS
execute as @a[tag=!hs.agreeTOS] run function hardcore_survival:player/show_terms
scoreboard players set @a hs.agreeTOS 0

### 数据处理 ###
scoreboard players reset @e hs.randomGenerator
scoreboard players reset @e hs.dealDamage