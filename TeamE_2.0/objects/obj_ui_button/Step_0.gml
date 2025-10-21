if (mouse_x >= bbox_left and mouse_x <= bbox_right and mouse_y >= bbox_top and mouse_y <=bbox_bottom)
{
	sprite_index = sprite_hover;
	if(mouse_check_button(mb_left))
	{
		sprite_index = sprite_pressed;
	}
	else if(mouse_check_button_released(mb_left))
	{
		room_goto(room_to_move);
	}


}
else
{
	sprite_index = sprite_button;	
}