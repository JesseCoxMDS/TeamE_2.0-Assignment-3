obj_bag.dragging = false;
dragging = false;
distanceToPos = 1000;
chosenX = 0;
chosenY = 0;
collideChecking = true;

for(var i = 0; i < 8; i++)
{
	for(var j = 0; j < 8; j++)
	{
		distanceToPosition = point_distance(x,y,xPositions[i],yPositions[j]);
		if(distanceToPosition < distanceToPos)
		{
			chosenX = i;
			chosenY = j;
			distanceToPos = distanceToPosition;
		}
	}
}

x = xPositions[chosenX];
y = yPositions[chosenY];

depth = 49;
if(inside == false)
{
	obj_bag.totalItemsInside++;
	inside = true;
}

if(bbox_bottom > 700 or bbox_right > 735 or bbox_top < 60 or bbox_left < 60)
{
	obj_bag.totalItemsInside--;
	inside = false;
	x = irandom_range(bound_x_min, bound_x_max);
	y = irandom_range(bound_y_min, bound_y_max);
}

show_debug_message(obj_bag.totalItemsInside);
waitFrame = 5;