curve = animcurve_get_channel(ac_curve,"curve1")
percent = 0;

function Animation_Curve()
{
	//this moves the character along at a rate
	//percent += 1/240;
	//if (percent > 1) {percent = 0}
	
	

	var _distance = mouse_x - x;
	
	position = animcurve_channel_evaluate(curve,mouse_x)
	
	x = x + (_distance * position);
}
