gamerule players_sleeping_percentage 101
gamerule natural_health_regeneration false

# setup death counter
scoreboard objectives add scoreDeathCount deathCount "Death Count"
scoreboard objectives modify scoreDeathCount numberformat styled {"color":"red"}
scoreboard objectives setdisplay list scoreDeathCount

scoreboard objectives add minedDeepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add lastMinedDeepslate dummy
execute as @a run scoreboard players operation @s lastMinedDeepslate = @s minedDeepslate

scoreboard objectives add minedIronOre minecraft.mined:minecraft.iron_ore
scoreboard objectives add lastMinedIronOre dummy
execute as @a run scoreboard players operation @s lastMinedIronOre = @s minedIronOre

scoreboard objectives add etTs dummy
scoreboard objectives add etTsPrev dummy

scoreboard objectives add isHoldingPick dummy

scoreboard objectives add constants dummy
scoreboard players set #one constants 1
scoreboard players set #zero constants 0
