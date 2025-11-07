if (is_screen_shake > 0)
{
		is_screen_shake -= 0.2;
}
else
{
	layer_set_visible("Screen_Shake",false)
}

if (max_parts <= 0)
{
	Finish_Game()	
}