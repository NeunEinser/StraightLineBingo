#> neun_einser.straight_bingo:check_line
#
# Makes sure the player does not leave his line
#
# @within function neun_einser.straight_bingo:tick

#>
# @private
#declare score_holder $x
scoreboard players operation $x 91.straight.main = @s fetchr.prev_x_pos

execute \
	if score $x 91.straight.main > $spawn_x fetchr.state \
	positioned ~-1 ~ ~ \
	align x \
	positioned ~0.99999999 ~ ~ \
	run teleport @s ~ ~ ~
execute \
	if score $x 91.straight.main < $spawn_x fetchr.state \
	positioned ~1 ~ ~ \
	align x \
	run teleport @s ~ ~ ~