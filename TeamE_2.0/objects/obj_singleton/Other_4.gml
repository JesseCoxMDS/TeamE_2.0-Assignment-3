if(room == rm_overworld)
{
	day++;
	window_set_cursor(cr_arrow);
	if(day == final_day)
	{
		room_goto(rm_ending);
	}
	event_user(0);
}

