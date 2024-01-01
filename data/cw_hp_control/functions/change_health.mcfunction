# if return health is not scheduled, set normally
execute if score @s cw_hp_old matches 0 run function cw_hp_control:change_health/normal
# if return health is scheduled, set health from return health value
execute if score @s cw_hp_old matches 1.. run function cw_hp_control:change_health/returned

# reset score
scoreboard players set @s hp_max 0