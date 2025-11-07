dieing = false;
hit_anim = 0;
function Squeez()
{
	hit_anim = 3;
	dieing = true;
	image_xscale = 0.8;
	image_yscale = 0.8;
}

function Squish()
{
	if(image_xscale != 1){image_xscale = lerp(image_xscale,1,0.1)}
	if(image_yscale != 1){image_yscale = lerp(image_yscale,1,0.1)}
	if(image_xscale > 0.96 && image_yscale > 0.96 && dieing == true)
	{
		instance_destroy()	
	}
	
}

