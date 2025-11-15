random_set_seed(current_time);
is_screen_shake = 0;
max_parts = 30;
window_set_cursor(cr_none);
hit_limb = 0;
hit_scrape = 0;

function Screen_Shake()
{
	layer_set_visible("Screen_Shake",true)
	is_screen_shake = 3;
}

function Finish_Game()
{
	window_set_cursor(cr_arrow);
	room_goto(rm_overworld)	
}

function fuse_into_machine_parts(_x,_y)
{
			hit_limb--
			hit_scrape--
	with(obj_singleton)
	{
		if (limbs_carrying > 0 && scrap_carrying > 0)
		{
			limbs_carrying--;
			scrap_carrying--;
			machine_parts_carrying++
			instance_create_layer(_x,_y,"Instances",obj_ball)//704,608
		}
		
	}
	
}

function Spawn_Ball()
{
	instance_create_layer(704,608,"Instances",obj_ball)
}

Spawn_Ball()