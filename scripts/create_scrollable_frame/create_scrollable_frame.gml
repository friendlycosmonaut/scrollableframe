//Creates an instance of the scrollable frame
//also sets some default values - feel free to overwrite these!
function create_scrollable_frame(total_height, x, y, width, height, scroll_bar_width=16, scroll_bar_offset=2, inner_border_offset=1, rounding_radius=8, default_colour=c_white, hover_colour=c_aqua, drag_colour=c_blue, border_colour=c_black) {
	var inst = instance_create_depth(0, 0, 0, obj_scrollable_frame);
	inst.setup(total_height, x, y, width, height, scroll_bar_width, scroll_bar_offset, inner_border_offset, rounding_radius, default_colour, hover_colour, drag_colour, border_colour);
	return inst;
}