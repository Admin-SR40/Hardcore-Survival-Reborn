execute if predicate hardcore_survival:rain run gamerule randomTickSpeed 3
execute if predicate hardcore_survival:thunder run gamerule randomTickSpeed 4
execute if predicate hardcore_survival:no_weather run gamerule randomTickSpeed 2

execute as @a run function hardcore_survival:world/weather_clear
execute as @a at @s if dimension minecraft:overworld run function hardcore_survival:world/weather_debuff