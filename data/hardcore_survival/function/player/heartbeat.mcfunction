scoreboard players add @s[scores={hs.currentHealth=250..499}] hs.heartbeatTimer 1
scoreboard players add @s[scores={hs.currentHealth=..249}] hs.heartbeatTimer 2
execute as @s[scores={hs.heartbeatTimer=1..15}] run attribute @s movement_speed modifier remove hs.heartbeat_effect
execute as @s[scores={hs.heartbeatTimer=16..24}] run attribute @s movement_speed modifier add hs.heartbeat_effect -0.1 add_multiplied_total
scoreboard players set @s[scores={hs.heartbeatTimer=24..}] hs.heartbeatTimer 0
scoreboard players set @s[scores={hs.currentHealth=500..}] hs.heartbeatTimer 0
execute as @s[scores={hs.heartbeatTimer=16..17,hs.currentHealth=250..499},tag=!hs.heartbeatIn] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 0.5 0
execute as @s[scores={hs.heartbeatTimer=16..17,hs.currentHealth=..249},tag=!hs.heartbeatIn] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0
execute as @s[scores={hs.heartbeatTimer=16..17}] run tag @s add hs.heartbeatIn
execute as @s[scores={hs.heartbeatTimer=0..1,hs.currentHealth=250..499},tag=!hs.heartbeatOut] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 0.5 0
execute as @s[scores={hs.heartbeatTimer=0..1,hs.currentHealth=..249},tag=!hs.heartbeatOut] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0
execute as @s[scores={hs.heartbeatTimer=0..1}] run tag @s add hs.heartbeatOut
execute as @s[scores={hs.heartbeatTimer=0..1}] run tag @s remove hs.heartbeatIn
execute as @s[scores={hs.heartbeatTimer=16..17}] run tag @s remove hs.heartbeatOut