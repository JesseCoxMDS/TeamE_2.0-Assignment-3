Screen_Shake()
if ((keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_space)) && room != rm_overworld)
{
	room_goto(rm_overworld);
}
