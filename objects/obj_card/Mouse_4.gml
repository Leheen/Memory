//face = !face;

if(visible and global.game_state == states.waiting) {
	face = true;
	
	if(global.cards[0] == noone) {
		global.cards[0] = id;
	}
	else {
		global.cards[1] = id;
		
		if(global.cards[0].index == global.cards[1].index) {
			face = 0;
			global.cards[0] = noone;
			global.cards[1] = noone;
		}
		else {
			global.game_state = states.checking;
			alarm[0] = 0.5 * room_speed;
		}
	}
}