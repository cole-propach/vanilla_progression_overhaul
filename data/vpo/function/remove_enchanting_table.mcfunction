execute as @s at @s run setblock ~ ~ ~ minecraft:air
execute as @s at @s run summon item ~ ~0.5 ~ {Item:{id:"minecraft:enchanting_table"},Tags:["justDropped"]}
execute as @e[type=item,tag=justDropped,limit=1] run function vpo:give_item_random_velocity

kill @s