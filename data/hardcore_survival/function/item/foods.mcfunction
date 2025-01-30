scoreboard players set @s hs.temp 0

execute as @s store result score @s hs.temp run clear @s wheat[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s wheat[food={nutrition:1,saturation:1,can_always_eat:false},consumable={animation:"eat",consume_seconds:1},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s wheat_seeds[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s wheat_seeds[food={nutrition:1,saturation:0,can_always_eat:false},consumable={animation:"eat",consume_seconds:1},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s melon_seeds[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s melon_seeds[food={nutrition:1,saturation:0,can_always_eat:false},consumable={animation:"eat",consume_seconds:1},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s pumpkin_seeds[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s pumpkin_seeds[food={nutrition:1,saturation:0,can_always_eat:false},consumable={animation:"eat",consume_seconds:1},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s beetroot_seeds[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s beetroot_seeds[food={nutrition:1,saturation:0,can_always_eat:false},consumable={animation:"eat",consume_seconds:1},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s sugar[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s sugar[food={nutrition:1,saturation:0,can_always_eat:true},consumable={animation:eat,consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:speed",amplifier:0,duration:40,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s nether_wart[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s nether_wart[food={nutrition:1,saturation:0,can_always_eat:true},consumable={animation:eat,consume_seconds:1,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:60,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s honeycomb[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s honeycomb[food={nutrition:3,saturation:1,can_always_eat:false},consumable={animation:eat,consume_seconds:1.6,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:speed",amplifier:1,duration:100,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s ink_sac[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s ink_sac[food={nutrition:2,saturation:0,can_always_eat:false},consumable={animation:eat,consume_seconds:1.6,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:blindness",amplifier:0,duration:100,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s glow_ink_sac[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s glow_ink_sac[food={nutrition:2,saturation:0,can_always_eat:false},consumable={animation:eat,consume_seconds:1.6,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:glowing",amplifier:0,duration:300,show_particles:false},{id:"minecraft:night_vision",amplifier:0,duration:300,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s glow_berries[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s glow_berries[food={nutrition:2,saturation:1,can_always_eat:false},consumable={animation:eat,consume_seconds:1.6,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:glowing",amplifier:0,duration:100,show_particles:false},{id:"minecraft:night_vision",amplifier:0,duration:100,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s slime_ball[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s slime_ball[food={nutrition:2,saturation:0,can_always_eat:false},consumable={animation:eat,consume_seconds:1.6,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:jump_boost",amplifier:1,duration:100,show_particles:false},{id:"minecraft:nausea",amplifier:0,duration:100,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s magma_cream[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s magma_cream[food={nutrition:2,saturation:0,can_always_eat:false},consumable={animation:eat,consume_seconds:1.6,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:100,show_particles:false},{id:"minecraft:nausea",amplifier:0,duration:100,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s golden_carrot[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s golden_carrot[food={nutrition:6,saturation:10,can_always_eat:false},consumable={animation:eat,consume_seconds:1.6,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:regeneration",amplifier:0,duration:60,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s glistering_melon_slice[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s glistering_melon_slice[food={nutrition:4,saturation:4,can_always_eat:false},consumable={animation:eat,consume_seconds:1.6,on_consume_effects:[{type:apply_effects,effects:[{id:"minecraft:regeneration",amplifier:0,duration:60,show_particles:false}]}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s red_mushroom[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s red_mushroom[food={nutrition:2,saturation:1,can_always_eat:false},consumable={animation:"eat",consume_seconds:1},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s brown_mushroom[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s brown_mushroom[food={nutrition:2,saturation:1,can_always_eat:false},consumable={animation:"eat",consume_seconds:1},custom_data={"craft":true}]

scoreboard players set @s hs.temp 0

execute as @a store result score @s hs.temp run clear @s #foods[!custom_data] 0
execute as @a if score @s hs.temp matches 1.. run function hardcore_survival:item/foods