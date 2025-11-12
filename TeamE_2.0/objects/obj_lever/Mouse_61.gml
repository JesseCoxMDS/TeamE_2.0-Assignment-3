/// @description Insert description here
// You can write your code in this editor

if(canMove)
{
	if(leverPosition < sprite_get_number(sprite_index) -1)
	{
		leverPosition += 2;
			with(obj_singleton){Activate_Screen_Shake(2);}
	}
}


