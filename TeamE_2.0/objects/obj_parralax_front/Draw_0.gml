with(obj_singleton){other.eidalon_power = eidalon_power_level}
if (eidalon_power < 100)
{
	draw_sprite_ext(spr_01,0,x,y,image_xscale,image_yscale,0,c_white,1)
}
else if (eidalon_power < 200)
{
	draw_sprite_ext(spr_02,0,x,y,image_xscale,image_yscale,0,c_white,1)
}
else
{
	draw_sprite_ext(spr_03,0,x,y,image_xscale,image_yscale,0,c_white,1)
}