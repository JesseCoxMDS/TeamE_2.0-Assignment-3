totalItemsInside = 0;

depth = 50;

dragging = false;

randomAmountOfStuff = irandom_range(10,15);

bound_x_min = 800
bound_y_min = 160
bound_x_max = 1120
bound_y_max = 480

bagObjects = [L, Line, Square, S, Z, T];

for(var i = 0; i < randomAmountOfStuff; i++)
{
	instance_create_layer(irandom_range(bound_x_min, bound_x_max), irandom_range(bound_y_min, bound_y_max), "instances", bagObjects[irandom(5)]);
}

	obj_singleton.count_down_timer = 90;