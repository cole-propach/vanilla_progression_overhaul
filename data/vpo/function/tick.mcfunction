# increase the follow range of every new mob
execute as @e[type=#vpo:hostile,tag=!fr_set] run attribute @s follow_range base set 128
execute as @e[type=#vpo:hostile,tag=!fr_set] run tag @s add fr_set

# detect when a player mines deepslate
execute as @a if score @s minedDeepslate > @s lastMinedDeepslate run function vpo:mined_deepslate
execute as @a run scoreboard players operation @s lastMinedDeepslate = @s minedDeepslate

# detect when a player mines iron ore
execute as @a if score @s minedIronOre > @s lastMinedIronOre run function vpo:mined_iron_ore
execute as @a run scoreboard players operation @s lastMinedIronOre = @s minedIronOre

# detect when a player hits an enchanting table
execute as @e[type=minecraft:interaction,tag=enchantingTableHitbox] store result score @s etTs run data get entity @s attack.timestamp
execute as @e[type=minecraft:interaction,tag=enchantingTableHitbox] unless score @s etTs = @s etTsPrev run function vpo:hit_enchanting_table
execute as @e[type=minecraft:interaction,tag=enchantingTableHitbox] run scoreboard players operation @s etTsPrev = @s etTs