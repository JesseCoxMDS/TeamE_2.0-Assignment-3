if(room == rm_overworld)
{
	day++;
	if(day == final_day)
	{
		room_goto(rm_ending);
	}
	event_user(0);
}