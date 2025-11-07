velocity = 0;
move_speed = 30;
hit_anim = 0;

function Move()
{
	mouse_dir = sign(mouse_x - x)
	var move_distance = (mouse_x - x) * 0.1
	if (place_meeting(x +  move_distance,y,obj_ball) || place_meeting(x + move_distance,y,obj_wall_brick_break))
	{
		//while(!place_meeting())
	}
	else
	{
		x = lerp(x,mouse_x, 0.1)
	}
}

function Squeez()
{
	hit_anim = 3;
	image_xscale = 1.2;
	image_yscale = 0.8;
}

function Squish()
{
	if(image_xscale != 1){image_xscale = lerp(image_xscale,1,0.1)}
	if(image_yscale != 1){image_yscale = lerp(image_yscale,1,0.1)}
}


function Move_Animation()
{
		show_debug_message(mouse_x - x)
}