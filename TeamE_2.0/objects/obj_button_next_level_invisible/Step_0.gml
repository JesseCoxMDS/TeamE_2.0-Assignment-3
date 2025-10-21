if (mouse_x >= (self.x - size_x) and mouse_x <= (self.x + size_x) and mouse_y >= (self.y - size_y) and mouse_y <= (self.y + size_y))
{

	if(mouse_check_button_released(mb_left))
	{
		room_goto(room_to_move);
	}
}

