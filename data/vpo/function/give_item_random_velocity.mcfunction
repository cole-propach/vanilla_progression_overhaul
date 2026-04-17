scoreboard objectives add random_number1 dummy
scoreboard objectives add random_number2 dummy
scoreboard objectives add random_number3 dummy
scoreboard objectives add velX dummy
scoreboard objectives add velY dummy
scoreboard objectives add velZ dummy
scoreboard objectives add scaleFactor dummy
scoreboard objectives add scaleFactorY dummy
scoreboard objectives add divisor dummy
scoreboard objectives add offset dummy
scoreboard objectives add offsetZ dummy

scoreboard players set const scaleFactorY 300
scoreboard players set const scaleFactor 100
scoreboard players set const divisor 9

scoreboard players set const offset -50
scoreboard players set const offsetZ -50


execute store result score @s random_number1 run random value 1..10
execute store result score @s random_number2 run random value 1..10
execute store result score @s random_number3 run random value 1..10

scoreboard players operation @s velX = @s random_number1
scoreboard players remove @s velX 1
scoreboard players operation @s velX *= const scaleFactor
scoreboard players operation @s velX /= const divisor
scoreboard players operation @s velX += const offset

scoreboard players operation @s velY = @s random_number2
scoreboard players remove @s velY 1
scoreboard players operation @s velY *= const scaleFactorY
scoreboard players operation @s velY /= const divisor
scoreboard players operation @s velY += const offset

scoreboard players operation @s velZ = @s random_number3
scoreboard players remove @s velZ 1
scoreboard players operation @s velZ *= const scaleFactor
scoreboard players operation @s velZ /= const divisor
scoreboard players operation @s velZ += const offsetZ

execute as @s run data merge entity @s {Motion:[0.0,0.2,0.0]}
execute store result entity @e[type=item,tag=justDropped,limit=1] Motion[0] double 0.001 run scoreboard players get @s velX
execute store result entity @e[type=item,tag=justDropped,limit=1] Motion[1] double 0.001 run scoreboard players get @s velY
execute store result entity @e[type=item,tag=justDropped,limit=1] Motion[2] double 0.001 run scoreboard players get @s velZ
execute as @s run tag @s remove justDropped

scoreboard objectives remove random_number1
scoreboard objectives remove random_number2
scoreboard objectives remove random_number3
scoreboard objectives remove velX
scoreboard objectives remove velY
scoreboard objectives remove velZ
scoreboard objectives remove scaleFactor
scoreboard objectives remove scaleFactorY
scoreboard objectives remove divisor
scoreboard objectives remove offset
scoreboard objectives remove offsetZ