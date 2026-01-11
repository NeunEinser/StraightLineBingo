#> neun_einser.straight_bingo:tick
#
# Logic that is run every tick.
#
# @within tag/function minecraft:tick
# @handles #minecraft:tick

execute as @a[predicate=bingo:is_in_game, predicate=!neun_einser.straight_bingo:has_vehicle, gamemode=survival] at @s run function neun_einser.straight_bingo:check_line
execute at @a[predicate=bingo:is_in_game, predicate=neun_einser.straight_bingo:has_vehicle, gamemode=survival] as @e[distance=..0.1, nbt={Passengers:[{id:"minecraft:player"}]}] run function neun_einser.straight_bingo:check_line