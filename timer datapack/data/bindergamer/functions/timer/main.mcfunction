##
 # main.mcfunction
 # timer
 #
 # Created by BinDerGamer.
##
title @a actionbar ["",{"score":{"name":"h","objective":"time"},"color":"gold"}," ",{"score":{"name":"min","objective":"time"},"color":"gold"}," ",{"score":{"name":"sek","objective":"time"},"color":"gold"}]
scoreboard players add tick time 1
execute if score tick time matches 20 run scoreboard players add sek time 1
execute if score tick time matches 20 run scoreboard players set tick time 0
execute if score sek time matches 60 run scoreboard players add min time 1
execute if score sek time matches 60 run scoreboard players set sek time 0
execute if score min time matches 60 run scoreboard players add h time 1
execute if score min time matches 60 run scoreboard players set min time 0