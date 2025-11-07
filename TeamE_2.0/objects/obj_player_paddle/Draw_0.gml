draw_self()
if (hit_anim > 0)
{
	draw_sprite_ext(spr_paddle_hit,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
	hit_anim -=0.5;
}


function Move_Animation()
{
		show_debug_message(mouse_x - x)
}

