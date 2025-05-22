attribute @s movement_speed modifier add exhaustion.movement_speed -0.4 add_multiplied_total
attribute @s jump_strength modifier add exhaustion.jump_strength -0.4 add_multiplied_total
title @s[tag=!hs.tiredReminder] title ""
title @s[tag=!hs.tiredReminder] subtitle [{"translate":"message.tired_1","fallback":"你累了, ","color":"yellow"},{"translate":"message.tired_2","fallback":"休息一会吧!","color":"yellow"}]
tag @s add hs.tiredReminder