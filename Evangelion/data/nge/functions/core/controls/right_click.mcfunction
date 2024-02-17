advancement revoke @s only nge:right_click
execute at @a as @e[tag=main,nbt={OnGround:1b}] if score @s id = @p id run function nge:core/actions/jump