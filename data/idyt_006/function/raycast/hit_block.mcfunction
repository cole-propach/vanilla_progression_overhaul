scoreboard players set @s ray_success 1
summon minecraft:interaction ~ ~ ~ {width:1.01,height:1.01,Tags:["whereRaycastLanded"]}
execute positioned as @e[tag=whereRaycastLanded,limit=1,sort=nearest] align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {width:1.01,height:1.01,Tags:["enchantingTableHitbox"]}
kill @e[tag=whereRaycastLanded]