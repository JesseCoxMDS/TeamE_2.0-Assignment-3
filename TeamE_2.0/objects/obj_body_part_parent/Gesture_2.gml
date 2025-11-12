if(obj_bag.dragging == false)
{
	obj_bag.dragging = true;
	
	dragging = true;
	collideChecking = false;

	depth = 0;

	mouseOffsetX = x-mouse_x;
	mouseOffsetY = y-mouse_y;
	Random_SFX_2(sfx_limb,sfx_limb,0.9,1.1)
}