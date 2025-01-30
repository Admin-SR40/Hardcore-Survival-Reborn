# 初始化游戏规则
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
gamerule logAdminCommands false
gamerule showDeathMessages false
gamerule reducedDebugInfo true
gamerule spawnRadius 0
gamerule universalAnger true
gamerule naturalRegeneration false
gamerule doImmediateRespawn true
gamerule commandModificationBlockLimit 2147483647
gamerule announceAdvancements false

# 初始化计分板
scoreboard objectives add hs.health health
scoreboard objectives add hs.maxHealth dummy
scoreboard objectives add hs.food food
scoreboard objectives add hs.death deathCount
scoreboard objectives add hs.armor armor
scoreboard objectives add hs.woundLevel dummy
scoreboard objectives add hs.takeDamage custom:damage_taken
scoreboard objectives add hs.dealDamage custom:damage_dealt
scoreboard objectives add hs.woundTimer dummy
scoreboard objectives add hs.percentage dummy
scoreboard objectives add hs.temp dummy
scoreboard objectives add hs.darkTimer dummy
scoreboard objectives add hs.posX dummy
scoreboard objectives add hs.posY dummy
scoreboard objectives add hs.posZ dummy
scoreboard objectives add hs.water dummy
scoreboard objectives add hs.waterTimer dummy
scoreboard objectives add hs.yaw dummy
scoreboard objectives add hs.pitch dummy
scoreboard objectives add hs.usedWaterBottle used:potion
scoreboard objectives add hs.usedMilkBucket used:milk_bucket
scoreboard objectives add hs.fireTick dummy
scoreboard objectives add hs.sprintTick custom:sprint_one_cm
scoreboard objectives add hs.exhaustion dummy
scoreboard objectives add hs.jumpTimes custom:jump
scoreboard objectives add hs.sneakTick custom:sneak_time
scoreboard objectives add hs.usedBow used:bow
scoreboard objectives add hs.usedCrossbow used:crossbow
scoreboard objectives add hs.bowTimer dummy
scoreboard objectives add hs.usedTotem used:totem_of_undying
scoreboard objectives add hs.stunTimer dummy
scoreboard objectives add hs.usedShield used:shield
scoreboard objectives add hs.fireTimer dummy
scoreboard objectives add hs.drinkTimer dummy
scoreboard objectives add hs.xpLevels dummy
scoreboard objectives add hs.xpAmount dummy
scoreboard objectives add hs.xpTimer dummy

# 初始化计分板显示
scoreboard objectives setdisplay below_name hs.health
scoreboard objectives modify hs.health displayname "§c❤"

# 加载完成提示
summon armor_stand ~ ~ ~ {CustomName:'{"text":"HSR","color":"aqua"}',Tags:[hs.load]}
execute as @e[type=armor_stand,tag=hs.load] run say §aDatapack is now loaded!
kill @e[tag=hs.load]