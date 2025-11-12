array_end = array_length(game_manager.pick_up_array)
random_x = irandom_range(1,19) * 64;
random_y = irandom_range(1,10) * 64;
game_manager.pick_up_array[array_end] = instance_create_layer(random_x,random_y,"Instances",obj_pick_up_snake)
game_manager.pick_up_array[array_end].game_manager = game_manager;

array_end = array_length(game_manager.dodge_array)
random_x = irandom_range(1,19) * 64;
random_y = irandom_range(1,10) * 64;
game_manager.dodge_array[array_end] = instance_create_layer(random_x,random_y,"Instances",obj_dodge_snake)
game_manager.dodge_array[array_end].game_manager = game_manager;
Random_SFX_2(sfx_scrapes,sfx_scrapes2,0.8,1)
instance_destroy()