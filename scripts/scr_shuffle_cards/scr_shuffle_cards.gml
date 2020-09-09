function shuffle_cards(_deck){
	var cards_x = 95;
	var cards_y = 30;
	
	global.cards = [noone, noone];
	
	randomize();
	ds_list_shuffle(deck);
	
	var deck_size = ds_list_size(_deck);
	
	// position cards on the table
	var cards = 1;
	for(var i = 0; i < deck_size; i++) {
		deck[|i].x = cards_x;
		deck[|i].y = cards_y;
		deck[|i].index = i;
		deck[|i].visible = true;
		deck[|i].face = false;
		
		if(cards % 4 == 0) {
			cards_x = 95;
			cards_y += 270;
		}
		else {
			cards_x += 155;
		}
		
		cards++;
	}
}