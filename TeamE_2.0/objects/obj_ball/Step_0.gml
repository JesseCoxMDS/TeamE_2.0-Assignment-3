
Collision()
Squish()
if(y > room_height + 16)
{
	x = spawn_position.x;
	y = spawn_position.y;
	direction = random_range(30,150)
	if (obj_singleton.scrap_carrying > 0)
	{
		obj_singleton.scrap_carrying--
	}
	if (obj_singleton.limbs_carrying > 0)
	{
		obj_singleton.limbs_carrying--
	}
	while (direction > 80 && direction < 100)
	{
		direction = random_range(30,150)
	}
	
}

