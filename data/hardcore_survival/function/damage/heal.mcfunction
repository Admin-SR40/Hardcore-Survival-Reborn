execute as @s store result score @s hs.currentHealth run data get entity @s Health 100

scoreboard players operation @s hs.displayer_1 = @s hs.currentHealth
scoreboard players operation @s hs.displayer_1 -= @s hs.originalHealth
scoreboard players operation @s hs.displayer_2 = @s hs.displayer_1
scoreboard players operation @s hs.displayer_1 /= hs.temp_100 hs.temp
scoreboard players operation @s hs.displayer_2 %= hs.temp_100 hs.temp

execute as @s if score @s hs.displayer_1 matches ..0 if score @s hs.displayer_2 matches ..0 run return fail

execute as @s at @s run summon text_display ~ ~ ~
execute as @s at @s run scoreboard players operation @n[type=text_display] hs.displayer_1 = @s hs.displayer_1
execute as @s at @s run scoreboard players operation @n[type=text_display] hs.displayer_2 = @s hs.displayer_2

execute as @s at @s if score @s hs.displayer_1 >= hs.temp_4 hs.temp if score @s hs.displayer_2 matches 10.. run execute as @n[type=text_display] run data merge entity @s {text:'[{"text":"+","color":"green","bold":true},{"score":{"objective":"hs.displayer_1","name":"@s"}},{"text":"."},{"score":{"objective":"hs.displayer_2","name":"@s"}}]'}
execute as @s at @s if score @s hs.displayer_1 >= hs.temp_4 hs.temp if score @s hs.displayer_2 matches 1..9 run execute as @n[type=text_display] run data merge entity @s {text:'[{"text":"+","color":"green","bold":true},{"score":{"objective":"hs.displayer_1","name":"@s"}},{"text":".0"},{"score":{"objective":"hs.displayer_2","name":"@s"}}]'}
execute as @s at @s if score @s hs.displayer_1 < hs.temp_4 hs.temp if score @s hs.displayer_2 matches 10.. run execute as @n[type=text_display] run data merge entity @s {text:'[{"text":"+","color":"green"},{"score":{"objective":"hs.displayer_1","name":"@s"}},{"text":"."},{"score":{"objective":"hs.displayer_2","name":"@s"}}]'}
execute as @s at @s if score @s hs.displayer_1 < hs.temp_4 hs.temp if score @s hs.displayer_2 matches 1..9 run execute as @n[type=text_display] run data merge entity @s {text:'[{"text":"+","color":"green"},{"score":{"objective":"hs.displayer_1","name":"@s"}},{"text":".0"},{"score":{"objective":"hs.displayer_2","name":"@s"}}]'}
execute as @s at @s if score @s hs.displayer_1 >= hs.temp_4 hs.temp if score @s hs.displayer_2 matches 0 run execute as @n[type=text_display] run data merge entity @s {text:'[{"text":"+","color":"green","bold":true},{"score":{"objective":"hs.displayer_1","name":"@s"}},{"text":"."},{"score":{"objective":"hs.displayer_2","name":"@s"}}]'}
execute as @s at @s if score @s hs.displayer_1 < hs.temp_4 hs.temp if score @s hs.displayer_2 matches 0 run execute as @n[type=text_display] run data merge entity @s {text:'[{"text":"+","color":"green"},{"score":{"objective":"hs.displayer_1","name":"@s"}},{"text":"."},{"score":{"objective":"hs.displayer_2","name":"@s"}}]'}

execute as @s at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:[hs.displayer],NoGravity:1b,CustomNameVisible:1b}
execute as @s at @s run data modify entity @n[type=armor_stand] CustomName set from entity @n[type=text_display] text
execute as @s at @s run tp @n[type=armor_stand,tag=hs.displayer] ~ ~1 ~

kill @n[type=text_display]

scoreboard players operation @s hs.originalHealth = @s hs.currentHealth