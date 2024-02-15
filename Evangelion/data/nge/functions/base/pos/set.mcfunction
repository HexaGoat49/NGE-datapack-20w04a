# Set display rotation
scoreboard players operation @s alpha = @s rot0
scoreboard players operation @s beta = @s rot1
function nge:base/set_pos/set_rot

# Positionate sub child
execute on passengers run function nge:base/pos/sub_child
