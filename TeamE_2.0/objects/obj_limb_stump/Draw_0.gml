/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, imageUsing, x, y, 1, 1, 0, colourUsing, 1);
draw_line_width_color(targX, targY, x, y, 5, selfColour, selfColour);

if(!lockLine)
{
	if(drawingLine)
	{
		targX = mouse_x;
		targY = mouse_y;
	}
	
	if(!drawingLine)
	{
		targX = x;
		targY = y;
	}
}


