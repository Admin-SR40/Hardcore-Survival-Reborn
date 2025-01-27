scoreboard players set @s hs.temp 0

execute as @s store result score @s hs.temp run clear @s diamond_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_axe[max_damage=1080,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_pickaxe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_pickaxe[max_damage=1080,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_sword[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_sword[max_damage=1080,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_shovel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_shovel[max_damage=1080,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_hoe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_hoe[max_damage=1080,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s netherite_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_axe[max_damage=1600,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_pickaxe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_pickaxe[max_damage=1600,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_sword[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_sword[max_damage=1600,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_shovel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_shovel[max_damage=1600,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_hoe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_hoe[max_damage=1600,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s iron_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_axe[max_damage=180,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_pickaxe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_pickaxe[max_damage=180,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_sword[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_sword[max_damage=180,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_shovel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_shovel[max_damage=180,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_hoe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_hoe[max_damage=180,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s stone_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_axe[max_damage=90,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s stone_pickaxe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_pickaxe[max_damage=90,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s stone_sword[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_sword[max_damage=90,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s stone_shovel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_shovel[max_damage=90,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s stone_hoe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_hoe[max_damage=90,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s diamond_helmet[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_helmet[max_damage=242,attribute_modifiers={modifiers:[{amount:3,id:"diamond_helmet_armor",operation:"add_value",type:"armor",slot:"head"},{amount:1,id:"diamond_helmet_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"head"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_chestplate[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_chestplate[max_damage=352,attribute_modifiers={modifiers:[{amount:5,id:"diamond_chestplate_armor",operation:"add_value",type:"armor",slot:"chest"},{amount:1,id:"diamond_chestplate_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"chest"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_leggings[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_leggings[max_damage=328,attribute_modifiers={modifiers:[{amount:4,id:"diamond_leggings_armor",operation:"add_value",type:"armor",slot:"legs"},{amount:1,id:"diamond_leggings_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"legs"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_boots[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_boots[max_damage=286,attribute_modifiers={modifiers:[{amount:3,id:"diamond_boots_armor",operation:"add_value",type:"armor",slot:"feet"},{amount:1,id:"diamond_boots_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"feet"}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s iron_helmet[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_helmet[max_damage=110,attribute_modifiers={modifiers:[{amount:2,id:"iron_helmet_armor",operation:"add_value",type:"armor",slot:"head"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_chestplate[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_chestplate[max_damage=160,attribute_modifiers={modifiers:[{amount:3,id:"iron_chestplate_armor",operation:"add_value",type:"armor",slot:"chest"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_leggings[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_leggings[max_damage=150,attribute_modifiers={modifiers:[{amount:3,id:"iron_leggings_armor",operation:"add_value",type:"armor",slot:"legs"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_boots[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_boots[max_damage=130,attribute_modifiers={modifiers:[{amount:2,id:"iron_boots_armor",operation:"add_value",type:"armor",slot:"feet"}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s golden_helmet[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s golden_helmet[max_damage=33,attribute_modifiers={modifiers:[{amount:1,id:"golden_helmet_armor",operation:"add_value",type:"armor",slot:"head"},{amount:0.5,id:"golden_helmet_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"head"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s golden_chestplate[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s golden_chestplate[max_damage=56,attribute_modifiers={modifiers:[{amount:2,id:"golden_chestplate_armor",operation:"add_value",type:"armor",slot:"chest"},{amount:0.5,id:"golden_chestplate_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"chest"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s golden_leggings[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s golden_leggings[max_damage=52,attribute_modifiers={modifiers:[{amount:2,id:"golden_leggings_armor",operation:"add_value",type:"armor",slot:"legs"},{amount:0.5,id:"golden_leggings_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"legs"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s golden_boots[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s golden_boots[max_damage=44,attribute_modifiers={modifiers:[{amount:1,id:"golden_boots_armor",operation:"add_value",type:"armor",slot:"feet"},{amount:0.5,id:"golden_boots_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"feet"}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s netherite_helmet[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_helmet[max_damage=271,attribute_modifiers={modifiers:[{amount:4,id:"netherite_helmet_armor",operation:"add_value",type:"armor",slot:"head"},{amount:2,id:"netherite_helmet_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"head"},{amount:0.05,id:"netherite_helmet_knockback_resistance",operation:"add_value",type:knockback_resistance,slot:head}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_chestplate[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_chestplate[max_damage=394,attribute_modifiers={modifiers:[{amount:6,id:"netherite_chestplate_armor",operation:"add_value",type:"armor",slot:"chest"},{amount:2,id:"netherite_chestplate_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"chest"},{amount:0.05,id:"netherite_chestplate_knockback_resistance",operation:"add_value",type:knockback_resistance,slot:chest}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_leggings[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_leggings[max_damage=370,attribute_modifiers={modifiers:[{amount:6,id:"netherite_leggings_armor",operation:"add_value",type:"armor",slot:"legs"},{amount:2,id:"netherite_leggings_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"legs"},{amount:0.05,id:"netherite_leggings_knockback_resistance",operation:"add_value",type:knockback_resistance,slot:legs}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_boots[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_boots[max_damage=320,attribute_modifiers={modifiers:[{amount:4,id:"netherite_boots_armor",operation:"add_value",type:"armor",slot:"feet"},{amount:2,id:"netherite_boots_armor_toughness",operation:"add_value",type:"armor_toughness",slot:"feet"},{amount:0.05,id:"netherite_boots_knockback_resistance",operation:"add_value",type:knockback_resistance,slot:feet}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s elytra[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s elytra[!enchantable,!enchantments,max_damage=320,custom_data={"craft":true}]

scoreboard players set @s hs.temp 0