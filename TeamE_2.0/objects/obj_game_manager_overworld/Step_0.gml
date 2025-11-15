var _camera_x = camera_get_view_x(camera)
var _camera_y = camera_get_view_y(camera)
var left_anchor = _camera_x - browser_width;

if(device_mouse_x_to_gui(0) < edge && _camera_x > 0)
{
	_camera_x -= camera_move_speed;
}

if(device_mouse_x_to_gui(0) > browser_width - edge && _camera_x < browser_width)
{
	_camera_x += camera_move_speed
}


//camera_set_view_pos(camera,_camera_x,_camera_y)