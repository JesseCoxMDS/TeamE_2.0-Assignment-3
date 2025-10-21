/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if(moveSet == 0)
{
	if point_distance(x,y,basePointX,basePointY) > 5
	{
		move_towards_point( basePointX, basePointY, 10 );
	}
	else
	{
		speed = 0;
	}
}
else if(moveSet == 1)
{
	
	if point_distance(x,y,otherPoint1X,otherPoint1Y) > 10
	{
		move_towards_point( otherPoint1X, otherPoint1Y, 10 );
	}
	else
	{
		moveSet++;
	}
}
else if(moveSet == 2)
{
	obj_lever.leverPosition = 0;
	if point_distance(x,y,otherPoint2X,otherPoint2Y) > 100
	{
		move_towards_point( otherPoint2X, otherPoint2Y, 100 );
	}
	else
	{
		moveSet = 0;
		speed = 10;
	}
}
else
{
	
}





