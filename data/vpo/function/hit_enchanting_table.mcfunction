scoreboard players set @s isHoldingPick 0
execute store result score @s isHoldingPick run execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run scoreboard players get #one constants
execute store result score @s isHoldingPick run execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] run scoreboard players get #one constants
execute store result score @s isHoldingPick run execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:copper_pickaxe"}}] run scoreboard players get #one constants
execute store result score @s isHoldingPick run execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] run scoreboard players get #one constants
execute store result score @s isHoldingPick run execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] run scoreboard players get #one constants
execute store result score @s isHoldingPick run execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run scoreboard players get #one constants
execute store result score @s isHoldingPick run execute on attacker if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run scoreboard players get #one constants
execute if score #one constants = @s isHoldingPick run function vpo:remove_enchanting_table
