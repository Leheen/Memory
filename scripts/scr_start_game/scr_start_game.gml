function start_game() {
	global.game_state = states.waiting;
	shuffle_cards(obj_controller.deck);
	obj_controller.alarm[0] = obj_controller.play_time * room_speed;
}