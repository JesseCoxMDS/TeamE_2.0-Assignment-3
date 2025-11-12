day = 1;
final_day = 30;
limb_sockets = 0;
eidalon_power_level = 0;





ambiance_volume = 120;
unsettling_volume = 0;

function Move_Room(_room,next_day)
{
	if (next_day)
	{
		day++;
		ambiance_volume -= 4;
		unsettling_volume += 4;
	}
		window_set_cursor(cr_arrow);
		audio_stop_all()
		room_goto(_room);
}

