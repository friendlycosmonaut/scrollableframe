//Create the frame; uses a lot of the default arguments
var frame = create_scrollable_frame(1000, 100, 100, 500, 500);

//Set the frame's contents, ie. what we draw inside of it
//IMPORTANT: Remember, this function must have an argument 'offset_y' to make the scroll work
//Also note, these positions are *relative to the frame*, not absolute pixel positions in the game room
frame.set_contents(function(offset_y) {
	//Flood the surface colour with gray pixels
	draw_clear(merge_color(c_black, c_white, 0.1));
	
	//Draw a couple circles
	draw_circle_color(400, 200 + offset_y, 40, c_lime, c_lime, false);
	draw_circle_color(100, 800 + offset_y, 50, c_red, c_red, false);
	
	////Draw a circle that moves up and down the frame!
	var yy = sin(current_time/1000) * 400;
	draw_circle_color(250, 500 + yy + offset_y, 70, c_yellow, c_yellow, false);
});