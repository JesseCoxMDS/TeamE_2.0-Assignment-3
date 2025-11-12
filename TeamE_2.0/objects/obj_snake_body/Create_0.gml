last_position = {x:0,y:0}
random_rotation_switch = irandom_range(1,4)
random_rotation = 0;
switch(random_rotation_switch)
{
	case 0:
	random_rotation = 0;
	break;
	case 1:
	random_rotation = 90;
	break;
	case 2:
	random_rotation = 180;
	break;
	case 3:
	random_rotation = 270
	break;
}