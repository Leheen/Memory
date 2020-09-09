
switch(global.game_state) {
	case states.waiting:
	case states.checking:
		cur_time = ceil(alarm[0]/room_speed);
		break;
	case states.won:
		alarm[0] = -1;
		draw_set_font(fnt_message);
		draw_set_color(c_red);
		draw_text(room_width/2 - 160, room_height/2 - 100, "YOU WON!");
		break;
	case states.lost:
		obj_card.visible = false;
		alarm[0] = -1;
		draw_set_font(fnt_message);
		draw_set_color(c_red);
		draw_text(room_width/2 - 160, room_height/2 - 100, "YOU LOST");
		break;
}

draw_set_font(fnt_timer);
draw_set_color(c_white);
draw_text(90, 0, "Time left: " + string(cur_time));