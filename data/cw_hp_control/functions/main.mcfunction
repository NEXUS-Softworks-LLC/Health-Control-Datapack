# ruby bug fix ; give new players absorption for a single tick to immediately update their Health scoreboard
# (prevents them from dying immediately)
execute as @a[tag=!cw_init] run function cw_hp_control:init/0
#

execute as @a[tag=cw_init] unless score @s hp_max matches 0 run function cw_hp_control:change_health

execute as @a[tag=cw_init,scores={cw_hp_old=1..}] run function cw_hp_control:return_health
execute as @a[tag=cw_init] unless score @s hp_dmg matches 0 run function cw_hp_control:deal_damage