bound_x_min = 800
bound_y_min = 160
bound_x_max = 1120
bound_y_max = 480

dragging = false;
collideChecking = false;
inside = false;
spriteScale = 10;
waitFrame = 0;

rotation = 0;

image_xscale = spriteScale;
image_yscale = spriteScale;

mouseOffsetX = 0;
mouseOffsetY = 0;

spriteIndex = 0;

xPositions = [];
yPositions = [];

depth = 10;

for(var i = 0; i < 8; i++)
{
	array_push(xPositions, 56 + (90 * i));
	array_push(yPositions, 24 + (90 * i));
}