execute at @s if entity @e[distance=..2,type=!bee] run data merge entity @s {AngerTime:200s}

execute if entity @s[tag=hs.entityModified] run return fail
attribute @s scale base set 0.25
data merge entity @s {HasStung:false}
tag @s add hs.entityModified