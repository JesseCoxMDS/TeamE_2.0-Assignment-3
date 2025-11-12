//--------------------------------------------------------------------------------------------------------------
enum Direction {up,down,left,right}
last_position = {x:0,y:0}
move_timer = 6;
current_move_timer = 0;
timer_tick = 0.005;
game_manager = pointer_null;
body_parts[0] = self;
start_body_parts = 50
rotation = 90;
next_rotation = 90;;

current_direction = Direction.right;

move_amount = 64;
move_timer = 0.2;

for (i = 1;i < start_body_parts +1;i++)
{
	body_parts[i]	= instance_create_layer(x-64*i,y,"Instances",obj_snake_body);
}
//--------------------------------------------------------------------------------------------------------------
function input_manager()
{
	if(keyboard_check_pressed(ord("A")) && current_direction != Direction.right && current_direction != Direction.left)
	{
		current_direction = Direction.left
		next_rotation = 270;
	}
	else if(keyboard_check_pressed(ord("S")) && current_direction != Direction.up && current_direction != Direction.down)
	{
		current_direction = Direction.down
		next_rotation = 0;
	}
	else if(keyboard_check_pressed(ord("D")) && current_direction != Direction.left && current_direction != Direction.right)
	{
		current_direction = Direction.right
		next_rotation = 90;
	}
	else if(keyboard_check_pressed(ord("W")) && current_direction != Direction.down && current_direction != Direction.up)
	{
		current_direction = Direction.up
		next_rotation = 180;
	}
}
//--------------------------------------------------------------------------------------------------------------
function Move()
{
	for(i = 0;i < array_length(body_parts);i++)
	{	
		if(i == 0)
		{
			switch(current_direction)
			{
				case Direction.left:
						last_position.x = x
						last_position.y = y
						body_parts[0].x -= 64;
				break;
				case Direction.down:
						last_position.y = y
						last_position.x = x
						body_parts[0].y += 64;
				break;
				case Direction.right:
						last_position.x = x
						last_position.y = y
						body_parts[0].x += 64;
				break;
				case Direction.up:
						last_position.y = y
						last_position.x = x
						body_parts[0].y -= 64;
				break;
			}
		}
		else
		{
			body_parts[i].last_position.x = body_parts[i].x
			body_parts[i].last_position.y = body_parts[i].y
			body_parts[i].x = body_parts[i-1].last_position.x
			body_parts[i].y = body_parts[i-1].last_position.y
		}
	}
	rotation = next_rotation;
	timer_tick += 0.0001;
}
//--------------------------------------------------------------------------------------------------------------
function Timer()
{
		if (current_move_timer < move_timer){current_move_timer += timer_tick}
		else {current_move_timer = 0; Move()}
}

function Out_Of_Bounds()
{
	if(x < 0){x = 64 * 21}	
	if(x > 64 * 21){x = 0}
	if(y < 0){y = 64 * 11}	
	if(y > 64 * 11){y = 0}
}
//--------------------------------------------------------------------------------------------------------------
function Add_Body(_amount)
{
		for (i = 1;i < _amount +1;i++)
		{
			show_debug_message(array_length(body_parts)+i)
			body_parts[array_length(body_parts)+i] = instance_create_layer(x-64(32*i),y,"Instances",obj_snake_body);
		}
}

function Squeez()
{
	image_xscale = 1.5;
	image_yscale = 1.5;
}

function Squish()
{
	if(image_xscale != 1){image_xscale = lerp(image_xscale,1,0.1)}
	if(image_yscale != 1){image_yscale = lerp(image_yscale,1,0.1)}
}
