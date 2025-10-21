velocity = {x:0,y:0}
player_speed = 10;
detected = 0;
max_detected = 100;
//----------------------------------------------------------------------------------
function input_manager()
{
	velocity.x = keyboard_check(ord("D")) - keyboard_check(ord("A"))
	velocity.y = keyboard_check(ord("S")) - keyboard_check(ord("W"))
}
//----------------------------------------------------------------------------------
function move()
{
	
	
	move_and_collide(velocity.x * player_speed,velocity.y * player_speed,tile_wall_tile)
	
}