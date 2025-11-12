hit_anim = 0;
spawn_position = {x:x,y:y}
direction = random_range(30,150)
speed = 6;

function Collision()
{
	hit = instance_place(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_bounce) 

	if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_bounce)) 
	{
		move_bounce_solid(0);  
		hit_anim = 3
		Squeez()

		
		if (hit.object_index  == obj_wall_brick_break)
		{
			Random_SFX_2(sfx_wall,sfx_wall,0.8,1)	
		}
		
		if (hit.object_index  == obj_limb_bumper || hit.object_index  == obj_scrap_bumper)
		 {
			with(hit){Squeez()}
			
	}
	}
	if (place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_player_paddle)) 
	{
		with(obj_player_paddle)
		{
			Squeez()	
		}
		move_bounce_solid(0);  
		hit_anim = 3
		Squeez()
	}	
}

function Squeez()
{
	image_xscale = 1.2;
	image_yscale = 0.8;
}

function Squish()
{
	if(image_xscale != 1){image_xscale = lerp(image_xscale,1,0.1)}
	if(image_yscale != 1){image_yscale = lerp(image_yscale,1,0.1)}
}