/// @description Check pair
if(global.cards[0].type == global.cards[1].type) {
	global.cards[0].visible = false;
	global.cards[1].visible = false;
}


if(check_victory(obj_controller.deck)) {
	global.game_state = states.won;
}

global.cards[0].face = false;
global.cards[1].face = false;

global.cards[0] = noone;
global.cards[1] = noone;

if(global.game_state != states.won && global.game_state != states.lost) {
	global.game_state = states.waiting;
}