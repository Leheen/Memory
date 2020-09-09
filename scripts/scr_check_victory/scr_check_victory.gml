function check_victory(_deck){
	var deck_size = ds_list_size(_deck);
	
	for(var i = 0; i < deck_size; i++) {
		if(_deck[|i].visible) {
			return false;
		}
	}
	
	return true;
}
