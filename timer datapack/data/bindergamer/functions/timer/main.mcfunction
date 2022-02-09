##
 # main.mcfunction
 # timer
 #
 # Created by BinDerGamer.
##
title @a actionbar ["",{"score":{"name":"h","objective":"time"},"color":"gold"}," ",{"score":{"name":"min","objective":"time"},"color":"gold"}," ",{"score":{"name":"sek","objective":"time"},"color":"gold"}]
execute as @a[tag=timer] run scoreboard players add tick time 1
execute if score tick time matches 20 run scoreboard players add sek time 1
execute if score tick time matches 20 run scoreboard players set tick time 0
execute if score sek time matches 60 run scoreboard players add min time 1
execute if score sek time matches 60 run scoreboard players set sek time 0
execute if score min time matches 60 run scoreboard players add h time 1
execute if score min time matches 60 run scoreboard players set min time 0
execute as @a[tag=reset] run scoreboard players reset tick time
execute as @a[tag=reset] run scoreboard players reset sek time
execute as @a[tag=reset] run scoreboard players reset min time
execute as @a[tag=reset] run scoreboard players reset h time
execute as @a[tag=reset] run tag @s remove reset