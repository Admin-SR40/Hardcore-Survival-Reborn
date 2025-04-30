
### 低状态获得DEBUFF ###
execute as @a run scoreboard players operation @s hs.temp = @s hs.percentage
execute as @a run scoreboard players operation @s hs.temp *= @s hs.health
execute as @a run scoreboard players operation @s hs.temp /= @s hs.maxHealth
execute as @a run function hardcore_survival:debuff/apply

### 生物加强 ###
execute as @e[type=!player,tag=!hs.mob,type=!#ignore] run attribute @s attack_damage modifier add mob.attack_damage 0.5 add_multiplied_total
execute as @e[type=!player,tag=!hs.mob,type=!#ignore] run attribute @s[type=!creeper] max_health modifier add mob.max_health 0.5 add_multiplied_total
execute as @e[type=!player,tag=!hs.mob,type=!#ignore] if entity @s[tag=!hs.mob] if entity @s[type=#undead] run effect give @s instant_damage 3 9 true
execute as @e[type=!player,tag=!hs.mob,type=!#ignore] if entity @s[tag=!hs.mob] if entity @s[type=!#undead,type=!creeper] run effect give @s instant_health 3 9 true
execute as @e[type=!player,tag=!hs.mob,type=!#ignore] run data merge entity @s {ArmorDropChances:[0.0f, 0.0f, 0.0f, 0.0f],HandDropChances:[0.0f, 0.0f]}
execute as @e[type=!player,tag=!hs.mob,type=!#ignore] if entity @s[tag=!hs.mob] run tag @s add hs.mob
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
execute as @e[type=!player,type=!#ignore] at @s if entity @e[type=arrow,distance=..0.05] run data merge entity @e[type=arrow,distance=..0.05,limit=1,sort=nearest,tag=!hs.player] {damage:3.5d}

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