#> neun_einser.straight_bingo:check_line
#
# Makes sure the player does not leave his line
#
# @within function neun_einser.straight_bingo:tick

#>
# @private
#declare score_holder $x
execute store result score $x 91.straight.main run data get entity @s Pos[0]

execute if score $x 91.straight.main > $spawn_x bingo.state positioned ~-1 ~ ~ align x positioned ~0.99999999 ~ ~ run teleport @s ~ ~ ~
execute if score $x 91.straight.main < $spawn_x bingo.state positioned ~1 ~ ~ align x run teleport @s ~ ~ ~