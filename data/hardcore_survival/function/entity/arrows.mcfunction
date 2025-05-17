tag @s add hs.arrowModified
data merge entity @s {pickup:0b}

execute unless entity @s[tag=hs.player] run return fail
execute if entity @s[tag=hs.player] run data merge entity @s {crit:false}
execute if entity @s[tag=hs.player] run data merge entity @s {shake:true}