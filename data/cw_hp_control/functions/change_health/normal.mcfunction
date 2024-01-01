execute as @s store result score @s cw_hp_max run attribute @s generic.max_health base get
#> new max health = current health + hp_max
#> positive values will add health, negative values will subtract health
scoreboard players operation @s cw_hp_max += @s hp_max

# store hp value in storage so it can be accessed via macro
execute store result storage cw:hp input.hp int 1 run scoreboard players get @s cw_hp_max
# set hp
function cw_hp_control:set_max_hp with storage cw:hp input

scoreboard players reset @s cw_hp_max