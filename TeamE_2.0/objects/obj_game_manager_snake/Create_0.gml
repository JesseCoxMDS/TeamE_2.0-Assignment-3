//VARIABLES
//---------------------------------------------------------------------------------------------------------
player_score = 0;
pick_up_array = [];
dodge_array = [];
pick_up_amount = 0;
dodge_amount = 0;
player = pointer_null
//---------------------------------------------------------------------------------------------------------
//FUNCTIONS
//---------------------------------------------------------------------------------------------------------


//---------------------------------------------------------------------------------------------------------
//FINAL SETUP
//---------------------------------------------------------------------------------------------------------
//keeps random actualy feel random unless your some kinda time wizard
random_set_seed(current_time);
//spawns player in
player = instance_create_layer(64 * 2,64 * 2,"Instances",obj_snake_head)
//spawns pickups to the pick_up_amount
for(i = 0;i < pick_up_amount;i++) 
{
	random_x = irandom_range(1,19) * 64;
	random_y = irandom_range(1,10) * 64;
	item = instance_create_layer(random_x,random_y,"Instances",obj_pick_up_snake)
	item.game_manager = self;
	pick_up_array[i] = item
}

for(i = 0;i < dodge_amount;i++) 
{
	random_x = irandom_range(1,19) * 64;
	random_y = irandom_range(1,10) * 64;
	item = instance_create_layer(random_x,random_y,"Instances",obj_dodge_snake)
	item.game_manager = self;
	dodge_array[i] = item;
}



	



//---------------------------------------------------------------------------------------------------------

