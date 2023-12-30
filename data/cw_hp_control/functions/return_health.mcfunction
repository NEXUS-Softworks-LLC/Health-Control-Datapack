scoreboard players operation #temp cw_hp_old = @s cw_hp_old
scoreboard players set @s cw_hp_old 0

# store hp value in storage so it can be accessed via macro
execute store result storage cw:hp input.hp int 1 run scoreboard players get #temp cw_hp_old
function cw_hp_control:set_hp with storage cw:hp input