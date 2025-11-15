random_bumper = irandom_range(1,2)
switch(random_bumper)
{
	case 1:
		instance_create_layer(x,y,"Instances",obj_scrap_bumper)
	break;
	case 2:
		instance_create_layer(x,y,"Instances",obj_limb_bumper)
	break;
}




