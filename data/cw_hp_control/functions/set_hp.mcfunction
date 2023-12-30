execute if score #temp cw_hp_old matches ..0 run kill @s
$execute if score #temp cw_hp_old matches 1.. run attribute @s minecraft:generic.max_health base set $(hp)