if global.button {
	//middle of screen
	depth= -9999
	x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2)
	y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/1.3)
}
else {
	x = -10000
	y = -10000
}

