if (is_screen_shake > 0)
{
		is_screen_shake -= 0.2;
}
else
{
	layer_set_visible("Screen_Shake",false)
}

if (is_screen_shake_heavy > 0)
{
		is_screen_shake_heavy -= 0.2;
}
else
{
	layer_set_visible("Screen_Shake_Heavy",false)
}