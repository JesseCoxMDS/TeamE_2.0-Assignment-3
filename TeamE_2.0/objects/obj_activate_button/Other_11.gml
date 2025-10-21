/// @description Insert description here
// You can write your code in this editor
if(recieverSet < 3)
{
	recieverSet++;
}
else
{
	recieverSet = 0;	
}
usingColours = colourSetA;

switch(recieverSet)
{
	case 0:
	usingColours = colourSetA;
	break;
	
	case 1:
	usingColours = colourSetB;
	break;
	
	case 2:
	usingColours = colourSetC;
	break;
	
	case 3:
	usingColours = colourSetD;
	break;
	
	default:
	usingColours = colourSetA;
	break;
}

array_sort(usingColours, function() 
{
	return irandom_range(-1, 1);
});

for(var i = 0; i < array_length(recieverStump); i++)
{
	recieverStump[i].cantPressColour = usingColours[i];
	recieverStump[i].selfColour = usingColours[i];
	recieverStump[i].colourUsing = usingColours[i];
	recieverStump[i].lockLine = false;
}

