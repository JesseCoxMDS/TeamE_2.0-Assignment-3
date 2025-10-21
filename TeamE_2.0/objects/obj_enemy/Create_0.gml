offset = {x:20,y:-8}
cone = instance_create_layer(x + offset.x ,y + offset.y,"enemy",obj_enemy_detect_cone)

cone.image_xscale = image_xscale * 3 *-1
cone.image_yscale = image_yscale * 3
starting_pos = {x:x,y:y}
down = true;
move_speed = 1;
