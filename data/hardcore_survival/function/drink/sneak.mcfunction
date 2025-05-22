scoreboard players add @s hs.drinkTimer 1
execute as @a if score @s hs.drinkTimer matches 20.. run scoreboard players add @s hs.water 2
execute as @a if score @s hs.water matches 100.. run scoreboard players set @s hs.water 100
execute as @a if score @s hs.drinkTimer matches 20.. run scoreboard players set @s hs.drinkTimer 0
execute as @a if score @s hs.sneakTick matches 1.. run scoreboard players set @s hs.sneakTick 0