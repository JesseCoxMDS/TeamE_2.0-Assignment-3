with(obj_singleton){other.day = day}
if (day <= 10)
{
	draw_sprite_ext(spr_01,0,x,y,image_xscale,image_yscale,0,c_white,1)
}
else if (day <= 20)
{
	draw_sprite_ext(spr_02,0,x,y,image_xscale,image_yscale,0,c_white,1)
}
else
{
	draw_sprite_ext(spr_03,0,x,y,image_xscale,image_yscale,0,c_white,1)
}