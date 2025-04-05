scoreboard players set @s hs.temp 0

execute as @s store result score @s hs.temp run clear @s diamond_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_axe[max_damage=1080,custom_data={"craft":true,"axe":true}]
execute as @s store result score @s hs.temp run clear @s diamond_pickaxe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_pickaxe[max_damage=1080,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_sword[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_sword[max_damage=1080,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_shovel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_shovel[max_damage=1080,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s diamond_hoe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s diamond_hoe[max_damage=1080,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s netherite_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_axe[max_damage=1600,custom_data={"craft":true,"axe":true}]
execute as @s store result score @s hs.temp run clear @s netherite_pickaxe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_pickaxe[max_damage=1600,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_sword[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_sword[max_damage=1600,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_shovel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_shovel[max_damage=1600,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s netherite_hoe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s netherite_hoe[max_damage=1600,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s iron_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_axe[max_damage=180,custom_data={"craft":true,"axe":true}]
execute as @s store result score @s hs.temp run clear @s iron_pickaxe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_pickaxe[max_damage=180,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_sword[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_sword[max_damage=180,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_shovel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_shovel[max_damage=180,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s iron_hoe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s iron_hoe[max_damage=180,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s stone_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_axe[max_damage=135,custom_data={"craft":true,"axe":true}]
execute as @s store result score @s hs.temp run clear @s stone_pickaxe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_pickaxe[max_damage=135,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s stone_sword[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_sword[max_damage=135,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s stone_shovel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_shovel[max_damage=135,custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s stone_hoe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s stone_hoe[max_damage=135,custom_data={"craft":true}]

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

execute as @s store result score @s hs.temp run clear @s leather_helmet[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s leather_helmet[max_damage=36,attribute_modifiers={modifiers:[{amount:0.75,id:"leather_helmet_armor",operation:"add_value",type:"armor",slot:"head"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s leather_chestplate[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s leather_chestplate[max_damage=50,attribute_modifiers={modifiers:[{amount:1,id:"leather_chestplate_armor",operation:"add_value",type:"armor",slot:"chest"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s leather_leggings[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s leather_leggings[max_damage=45,attribute_modifiers={modifiers:[{amount:1,id:"leather_leggings_armor",operation:"add_value",type:"armor",slot:"legs"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s leather_boots[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s leather_boots[max_damage=40,attribute_modifiers={modifiers:[{amount:0.75,id:"leather_boots_armor",operation:"add_value",type:"armor",slot:"feet"}]},custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s chainmail_helmet[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s chainmail_helmet[max_damage=110,attribute_modifiers={modifiers:[{amount:1.5,id:"leather_helmet_armor",operation:"add_value",type:"armor",slot:"head"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s chainmail_chestplate[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s chainmail_chestplate[max_damage=160,attribute_modifiers={modifiers:[{amount:2,id:"leather_chestplate_armor",operation:"add_value",type:"armor",slot:"chest"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s chainmail_leggings[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s chainmail_leggings[max_damage=150,attribute_modifiers={modifiers:[{amount:2,id:"leather_leggings_armor",operation:"add_value",type:"armor",slot:"legs"}]},custom_data={"craft":true}]
execute as @s store result score @s hs.temp run clear @s chainmail_boots[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s chainmail_boots[max_damage=130,attribute_modifiers={modifiers:[{amount:1.5,id:"leather_boots_armor",operation:"add_value",type:"armor",slot:"feet"}]},custom_data={"craft":true}]

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

execute as @s store result score @s hs.temp run clear @s golden_axe[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s golden_axe[custom_data={"craft":true,"axe":true}]

execute as @s store result score @s hs.temp run clear @s elytra[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s elytra[!enchantable,!enchantments,max_damage=320,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s shears[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s shears[max_damage=128,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s trident[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s trident[max_damage=240,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s bow[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s bow[max_damage=320,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s crossbow[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s crossbow[max_damage=400,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s shield[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s shield[max_damage=240,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s mace[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s mace[max_damage=250,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s brush[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s brush[max_damage=32,custom_data={"craft":true}]

execute as @s store result score @s hs.temp run clear @s flint_and_steel[!custom_data] 1
execute as @s if score @s hs.temp matches 1.. run give @s flint_and_steel[max_damage=32,custom_data={"craft":true}]

execute as @a store result score @s hs.temp run clear @s #equipments[!custom_data] 0
execute as @a if score @s hs.temp matches 1.. run function hardcore_survival:item/equipments

scoreboard players set @s hs.temp -1