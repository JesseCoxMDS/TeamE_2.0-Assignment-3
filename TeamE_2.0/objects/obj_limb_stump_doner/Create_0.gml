/// @description Insert description here
// You can write your code in this editor

recieverStump = [];

for(var i = 0; i < instance_number(obj_limb_stump_reciever); i++)
{
	recieverStump[i] = instance_find(obj_limb_stump_reciever,i);
}



// Inherit the parent event
event_inherited();

