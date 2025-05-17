
### 低状态获得DEBUFF ###
execute as @a run function hardcore_survival:debuff/calc

### 生物加强 ###
execute as @e[type=!player,tag=!hs.mob,type=!#ignore] run function hardcore_survival:entity/modify
execute as @e[type=creeper] if data entity @s {powered:true} run data merge entity @s {Fuse:15s}

### 弓类效果 ###
execute as @a if score @s hs.usedBow matches 1.. run function hardcore_survival:bow/bow
execute as @a if score @s hs.usedCrossbow matches 1.. run function hardcore_survival:bow/crossbow
execute as @a if score @s hs.bowTimer matches 1.. run scoreboard players remove @s hs.bowTimer 1
execute as @a if score @s hs.bowTimer matches 0 run function hardcore_survival:bow/clear

### 不死图腾 ###
execute as @a if score @s hs.usedTotem matches 1.. run function hardcore_survival:totem/totem
execute as @a if score @s hs.stunTimer matches 1.. run function hardcore_survival:totem/stun_apply


### 盾牌效果 ###
execute as @a run function hardcore_survival:shield/hold
execute as @a at @s if score @s hs.usedShield matches 1.. run function hardcore_survival:shield/block

### 怪物箭矢加强 ###
execute as @e[type=!player,type=!#ignore] at @s if entity @e[type=arrow,distance=..0.05] run data merge entity @e[type=arrow,distance=..0.05,limit=1,sort=nearest,tag=!hs.player] {damage:3.5d}

### 重锤减速 ###
execute as @a run function hardcore_survival:mace/hold

### 末地修改 ###
execute if entity @r[distance=0..] in the_end run function hardcore_survival:world/modify_end

### 末影人主动攻击 ###
execute as @e[type=enderman] at @s unless dimension the_end if entity @a[distance=..4] run data modify entity @s AngryAt set from entity @p[gamemode=!creative,gamemode=!spectator] UUID

### 箭矢实体修改 ###
execute as @e[type=#arrows,tag=!hs.arrowModified] run function hardcore_survival:entity/arrows

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
function hardcore_survival:world/weather

### 削弱斧头伤害 ###
execute as @a if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{axe:1b}}}} run attribute @s attack_damage modifier add axe.attack_damage -0.25 add_multiplied_total
execute as @a unless data entity @s {SelectedItem:{components:{"minecraft:custom_data":{axe:1b}}}} run attribute @s attack_damage modifier remove axe.attack_damage

### 丢弃物品锁定 (暂时禁用) ###
# execute as @e[type=item] run data modify entity @s Owner set from entity @s Thrower