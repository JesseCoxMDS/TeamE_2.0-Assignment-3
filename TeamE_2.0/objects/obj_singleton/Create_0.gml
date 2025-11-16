day = 29;
final_day = 30;
scrap_carrying = 0;
limbs_carrying = 0;
machine_parts_carrying = 0;
body_parts_carrying = [];
count_down_timer = 0;

eidalon_power_level = 100;

ambiance_volume = 120;
unsettling_volume = 0;

screen_shake_timer = 0;
//window_set_fullscreen(true)
randomise();

function Move_Room(_room,next_day)
{
		room_goto(_room);
}

//-copy this to activate screen shake-
//with(obj_singleton){Activate_Screen_Shake(2);}
function Screen_Shake()
{
	if (screen_shake_timer > 0)
	{
		layer_set_visible("Screen_Shake" ,1)
		screen_shake_timer -= 0.1;
	}
	else
	{
		layer_set_visible("Screen_Shake" ,0)
	}
}

function Activate_Screen_Shake(_time)
{
		if (_time > screen_shake_timer)
		{
			screen_shake_timer = _time;
		}
}

function timer()
{
		if (count_down_timer > 0)
		{
				count_down_timer -= 0.1;
				draw_text_ext(browser_width / 2,10,"Time: " + string(count_down_timer / 6), 20, 1000)
		}
}
