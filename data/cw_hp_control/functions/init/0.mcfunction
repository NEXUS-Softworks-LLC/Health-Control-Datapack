execute as @s[tag=cw_clear] run function cw_hp_control:init/finish
execute as @s[tag=cw_abs] run function cw_hp_control:init/clear
execute as @s[tag=!cw_start,tag=!cw_init] run function cw_hp_control:init/abs