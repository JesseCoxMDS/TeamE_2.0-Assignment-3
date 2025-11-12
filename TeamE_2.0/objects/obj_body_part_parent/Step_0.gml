if(dragging)
{
	x = mouse_x + mouseOffsetX;
	y = mouse_y	+ mouseOffsetY;
}


if(waitFrame > 0)
{
	waitFrame--;
}

if(waitFrame == 0)
{
	collideChecking = false;
}