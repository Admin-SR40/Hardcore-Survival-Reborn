execute as @s unless score @s hs.termOfUsePage matches 2..7 run dialog show @s hardcore_survival:term_of_use
execute as @s if score @s hs.termOfUsePage matches 2 run dialog show @s hardcore_survival:term_of_use_1
execute as @s if score @s hs.termOfUsePage matches 3 run dialog show @s hardcore_survival:term_of_use_2
execute as @s if score @s hs.termOfUsePage matches 4 run dialog show @s hardcore_survival:term_of_use_3
execute as @s if score @s hs.termOfUsePage matches 5 run dialog show @s hardcore_survival:term_of_use_4
execute as @s if score @s hs.termOfUsePage matches 6 run dialog show @s hardcore_survival:term_of_use_5
execute as @s if score @s hs.termOfUsePage matches 7 run dialog show @s hardcore_survival:term_of_use_6