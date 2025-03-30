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

### 心跳视觉 ###
execute as @a store result score @s hs.currentHealth run data get entity @s Health 100
scoreboard players add @a[scores={hs.currentHealth=250..499}] hs.heartbeatTimer 1
scoreboard players add @a[scores={hs.currentHealth=..249}] hs.heartbeatTimer 2
execute as @a[scores={hs.heartbeatTimer=1..15}] run attribute @s movement_speed modifier remove hs.heartbeat_effect
execute as @a[scores={hs.heartbeatTimer=16..24}] run attribute @s movement_speed modifier add hs.heartbeat_effect -0.1 add_multiplied_total
scoreboard players set @a[scores={hs.heartbeatTimer=24..}] hs.heartbeatTimer 0
scoreboard players set @a[scores={hs.currentHealth=500..}] hs.heartbeatTimer 0
execute as @a[scores={hs.heartbeatTimer=16..17,hs.currentHealth=250..499},tag=!hs.heartbeatIn] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 0.5 0
execute as @a[scores={hs.heartbeatTimer=16..17,hs.currentHealth=..249},tag=!hs.heartbeatIn] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0
execute as @a[scores={hs.heartbeatTimer=16..17}] run tag @s add hs.heartbeatIn
execute as @a[scores={hs.heartbeatTimer=0..1,hs.currentHealth=250..499},tag=!hs.heartbeatOut] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 0.5 0
execute as @a[scores={hs.heartbeatTimer=0..1,hs.currentHealth=..249},tag=!hs.heartbeatOut] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0
execute as @a[scores={hs.heartbeatTimer=0..1}] run tag @s add hs.heartbeatOut
execute as @a[scores={hs.heartbeatTimer=0..1}] run tag @s remove hs.heartbeatIn
execute as @a[scores={hs.heartbeatTimer=16..17}] run tag @s remove hs.heartbeatOut

### 清除非法物品 ###
clear @a barrier[custom_data={"hs.bannedRecipe":true}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{hs.bannedRecipe:1b}}}}]

### 数据处理 ###
scoreboard players reset @e hs.randomGenerator
scoreboard players reset @e hs.dealDamage