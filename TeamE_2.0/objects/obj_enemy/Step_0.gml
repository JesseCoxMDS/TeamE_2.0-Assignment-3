cone.x = x + offset.x;
cone.y = y + offset.y;
//show_debug_message(y - starting_pos.y)

if(x - starting_pos.x < move_legnth && down)
{
	image_xscale = 1;
	with(cone)
	{
		image_xscale = 3;
	}
	x += move_speed;
}
else if(down)
{
	down = false
}

if(x - starting_pos.x > move_legnth *-1 && !down)
{
	image_xscale = -1;
	with(cone)
	{
		image_xscale = -3;
	}
	x -= move_speed;
}
else
{
	down = true
}


//cone.x = x + offset.x;
//cone.y = y + offset.y;
//show_debug_message(y - starting_pos.y)

//if(y - starting_pos.y < move_legnth && down)
//{
	//y += move_speed;
//}
//else if(down)
//{
//	down = false
//}
//
//if(y - starting_pos.y > move_legnth *-1 && !down)
//{
//
//	y -= move_speed;
//}
//else
//{
//	down = true
//}


