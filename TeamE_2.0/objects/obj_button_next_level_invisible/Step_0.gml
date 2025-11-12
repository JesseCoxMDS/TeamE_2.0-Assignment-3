if (mouse_x >= (self.x - sprite_width/2) and mouse_x <= (self.x + sprite_width/2) and mouse_y >= (self.y - sprite_height/2) and mouse_y <= (self.y + sprite_height/2))
{

	if(mouse_check_button_released(mb_left) && !clicked)
	{
		audio_play_sound(sfx_door_open,2,false);
		
		clicked = true;
	}
}

if (clicked_timer <= 0)
{
	window_set_cursor(cr_arrow);
	audio_stop_all()
	room_goto(room_to_move);
	
}
else if (!clicked)
{
}
else
{
	clicked_timer -= 0.4
}


