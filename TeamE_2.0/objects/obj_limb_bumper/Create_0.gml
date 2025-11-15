do_once = false;
dieing = false;
hit_anim = 0;
hp = 1;
sfx_1 = sfx_limb;
sfx_2 = sfx_limb2;
sfx_3 = sfx_limb2;
sfx_4 = sfx_limb2;

function Squeez()
{
	hit_anim = 3;
	hp -= 1;
	if (hp <= 0 && do_once == false){dieing = true;do_once = true;Random_SFX_2(sfx_1,sfx_2,0.8,1)}else {Random_SFX_2(sfx_3,sfx_4,0.8,1)}
	image_xscale = 0.8;
	image_yscale = 0.8;
}

function Squish()
{
	if(image_xscale != 1){image_xscale = lerp(image_xscale,1,0.1)}
	if(image_yscale != 1){image_yscale = lerp(image_yscale,1,0.1)}
	if(image_xscale > 0.96 && image_yscale > 0.96 && dieing == true)
	{
		with(obj_game_manager_brick_break){Screen_Shake();max_parts -= 1;}
		
		instance_destroy()	
	}
}

