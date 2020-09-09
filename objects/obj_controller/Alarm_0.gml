/// @description Game over checks
cur_time = 0;

if(check_victory(deck)) {
	global.game_state = states.won;
}
else {
	global.game_state = states.lost;
}