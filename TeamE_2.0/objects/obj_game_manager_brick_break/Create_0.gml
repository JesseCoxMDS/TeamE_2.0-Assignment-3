random_set_seed(current_time);
is_screen_shake = 0;
window_set_cursor(cr_none);


function Screen_Shake()
{
	layer_set_visible("Screen_Shake",true)
	is_screen_shake = 3;
}