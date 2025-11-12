draw_self()
if (hit_anim > 0)
{
	draw_sprite_ext(spr_hit_bumper,image_index,x,y,image_xscale,image_yscale,0,c_white,0.8)
	hit_anim -=0.5;
}


