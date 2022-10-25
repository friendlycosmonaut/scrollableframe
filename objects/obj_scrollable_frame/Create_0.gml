//Setup function which is called by create_scrollable_frame()
function setup(total_height, frame_x, frame_y, frame_width, frame_height, scroll_bar_width, scroll_bar_offset, inner_border_offset, rounding_radius, default_colour, hover_colour, drag_colour, border_colour) {
	x = frame_x;
	y = frame_y;
	width = frame_width;
	height = frame_height;
	
	//The total size of the scrollable frame
	scroll_height = total_height;
	//Width of the scroll bar
	bar_width = scroll_bar_width;
	//Border for the inner bar
	border_offset = inner_border_offset;
	//If you want the scrollbar to be rounded, this controls the radius
	radius = rounding_radius;
	
	//Colours
	default_col = default_colour;
	hover_col = hover_colour;
	drag_col = drag_colour;
	border_col = border_colour;
	
	////NOTE: This will be an important variable
	scroll_offset_y = 0;
	//Coords for the back of the scroll bar
	scroll_bar_y1 = scroll_bar_offset;
	scroll_bar_y2 = height - scroll_bar_offset;
	scroll_bar_x2 = width - scroll_bar_offset;
	scroll_bar_x1 = scroll_bar_x2 - bar_width + scroll_bar_offset;
	
	////Internal variables
	scroll_ratio_y = 0;
	surf = -1;
	dragging = false;
	hover = false;
}

//This variable should contain a function of contents to draw inside the frame
//The function must take in a single variable: an "offset_y" to add to the contents y position
function set_contents(draw_function) {
	frame_contents = draw_function;	
}
frame_contents = undefined;