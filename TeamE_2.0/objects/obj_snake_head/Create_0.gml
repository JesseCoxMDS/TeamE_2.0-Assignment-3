//--------------------------------------------------------------------------------------------------------------
enum Direction {up,down,left,right}
last_position = {x:0,y:0}
move_timer = 6;
current_move_timer = 0;
timer_tick = 0.01;
game_manager = pointer_null;
body_parts[0] = self;
start_body_parts = 50

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
	}
	else if(keyboard_check_pressed(ord("S")) && current_direction != Direction.up && current_direction != Direction.down)
	{
		current_direction = Direction.down
	}
	else if(keyboard_check_pressed(ord("D")) && current_direction != Direction.left && current_direction != Direction.right)
	{
		current_direction = Direction.right
	}
	else if(keyboard_check_pressed(ord("W")) && current_direction != Direction.down && current_direction != Direction.up)
	{
		current_direction = Direction.up
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