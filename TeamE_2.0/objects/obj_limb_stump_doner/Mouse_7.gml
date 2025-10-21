/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < array_length(recieverStump); i++)
{
	if(recieverStump[i].drawingLine && recieverStump[i].selfColour == selfColour)
	{
		recieverStump[i].lockLine = true;
		recieverStump[i].targX = x;
		recieverStump[i].targY = y;
	}
}



// Inherit the parent event
event_inherited();

