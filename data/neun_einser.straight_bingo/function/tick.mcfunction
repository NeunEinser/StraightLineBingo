#> neun_einser.straight_bingo:tick
#
# Logic that is run every tick.
#
# @within tag/function minecraft:tick
# @handles #minecraft:tick

execute \
	if score $game_state fetchr.state matches 4 \
	as @a[predicate=fetchr:is_in_game, predicate=!neun_einser.straight_bingo:has_vehicle, gamemode=survival] \
	at @s \
	run function neun_einser.straight_bingo:check_line
execute \
	if score $game_state fetchr.state matches 4 \
	at @a[predicate=fetchr:is_in_game, predicate=neun_einser.straight_bingo:has_vehicle, gamemode=survival] \
	on vehicle \
	run function neun_einser.straight_bingo:check_line