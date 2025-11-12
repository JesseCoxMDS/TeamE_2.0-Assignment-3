random_set_seed(current_time);
is_screen_shake = 0;
max_parts = 30;
window_set_cursor(cr_none);


function Screen_Shake()
{
	layer_set_visible("Screen_Shake",true)
	is_screen_shake = 3;
}

function Finish_Game()
{
	window_set_cursor(cr_arrow);
	room_goto(rm_overworld)	
}