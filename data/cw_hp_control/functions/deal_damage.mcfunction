execute store result score @s cw_hp_old run attribute @s minecraft:generic.max_health base get
scoreboard players operation #temp cw_hp_old = @s cw_hp_current
scoreboard players operation #temp cw_hp_old -= @s hp_dmg
# ruby bug fix ; if damage value would heal player past their maximum health, cap the heal at their maximum health
execute if score #temp cw_hp_old > @s cw_hp_old run scoreboard players operation #temp cw_hp_old = @s cw_hp_old
#

# store hp value in storage so it can be accessed via macro
execute store result storage cw:hp input.hp int 1 run scoreboard players get #temp cw_hp_old
# set hp
function cw_hp_control:set_hp with storage cw:hp input

# fill missing health with instant health effect
effect give @s minecraft:instant_health 1 100

# reset score
scoreboard players set @s hp_dmg 0