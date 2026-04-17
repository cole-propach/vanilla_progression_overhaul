#execute unless block ~ ~ ~ minecraft:air run function idyt_006:raycast/hit_block
execute if block ~ ~ ~ minecraft:enchanting_table run function idyt_006:raycast/hit_block
scoreboard players remove @s ray_steps 1
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function idyt_006:raycast/ray