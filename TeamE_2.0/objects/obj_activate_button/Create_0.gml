/// @description Insert description here
// You can write your code in this editor
startSet = true;

colourSetA = [c_aqua, c_blue, c_fuchsia, c_green, c_lime];
colourSetB = [c_aqua, c_blue, c_fuchsia, c_maroon, c_red];
colourSetC = [c_yellow, c_orange, c_fuchsia, c_green, c_lime];
colourSetD = [c_aqua, c_blue, c_navy, c_green, c_lime];

lockAmount = 0;

donerStump = [];
recieverStump = [];

recieverSet = 0;

for(var i = 0; i < instance_number(obj_limb_stump_doner); i++)
{
	donerStump[i] = instance_find(obj_limb_stump_doner,i);
}

for(var i = 0; i < instance_number(obj_limb_stump_reciever); i++)
{
	recieverStump[i] = instance_find(obj_limb_stump_reciever,i);
}
// Inherit the parent event
event_inherited();

max_count_down = 120;
obj_singleton.count_down_timer = 120;

