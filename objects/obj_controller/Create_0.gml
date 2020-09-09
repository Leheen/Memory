enum states {
	waiting,
	checking,
	won,
	lost
};
global.cards = [noone, noone];

play_time = 60;
cur_time = 60;
cards_number = 8;
deck = ds_list_create();
var deck_size = cards_number * 2;

for(var i = 0; i < deck_size; i++) {
	ds_list_add(deck, instance_create_layer(0, 0, "Instances", obj_card));
}


// assign card types to card objects and set up cards
for(var i = 0; i < deck_size; i++) {
	deck[|i].type = i % cards_number;
	deck[|i].face = false;
	deck[|i].index = i;
	deck[|i].visible = false;
}

start_game();