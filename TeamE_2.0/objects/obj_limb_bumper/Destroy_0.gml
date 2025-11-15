with(obj_game_manager_brick_break)
{
	hit_limb++;
	if(hit_limb > 0 && hit_scrape > 0)
	{
		fuse_into_machine_parts(x,y)
	}
}