scoreboard players operation @s hs.temp = @s hs.percentage
scoreboard players operation @s hs.temp *= @s hs.health
scoreboard players operation @s hs.temp /= @s hs.maxHealth

function hardcore_survival:debuff/remove
execute if score @s hs.temp matches 51.. if score @s hs.water matches 51.. run return fail
function hardcore_survival:debuff/apply