/// @description Insert description here
// You can write your code in this editor
lockAmount = 0;
for(var i = 0; i < array_length(recieverStump); i++)
{
	if(recieverStump[i].lockLine)
	{
		lockAmount++;
	}
}

if((lockAmount == 5 && obj_lever.leverPosition == 10)|| startSet)
{ 
	if(startSet)
	{
		obj_body_1.moveSet = 0;
		obj_body_2.moveSet = 0;
	}
	else
	{
		obj_singleton.eidalon_power_level += 10;
		obj_body_1.moveSet = 1;
		obj_body_2.moveSet = 1;
	}

	
	startSet = false;
	var randSet = irandom_range(0,4);

	switch(randSet)
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

	for(var i = 0; i < array_length(donerStump); i++)
	{
		donerStump[i].cantPressColour = usingColours[i];
		donerStump[i].canPressColour = usingColours[i];
		donerStump[i].selfColour = usingColours[i];
		donerStump[i].colourUsing = usingColours[i];
	}
	
	for(var i = 0; i < array_length(recieverStump); i++)
	{
		recieverStump[i].lockLine = false;
	}
}

