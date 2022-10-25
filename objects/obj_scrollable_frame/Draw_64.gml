if(!surface_exists(surf)) {
	surf = surface_create(width, height);	
}

//We may have failed to create the surface
if(surface_exists(surf)) {
	//Target our surface
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	
	////HERE IS WHERE WE RUN OUR "frame_contents" FUNCTION!
	if(frame_contents != undefined) {
		frame_contents(scroll_offset_y);
	} else {
		//Some debug text
		draw_text_ext(0, 0, "Frame contents is empty. \n\nYou have not called set_contents() after creating the scrollable frame.", string_height("M"), width);
	}
			
	//Now draw the scrollbar on top of everything
	//Back of scrollbar
	var c = c_black;
	draw_set_alpha(0.1);
	draw_rectangle_color(scroll_bar_x1, 0, scroll_bar_x2, height, c,c,c,c, false);
	draw_set_alpha(1);
		
	//Draw the scrollable bar
	c = border_col;
	draw_roundrect_color_ext(scroll_bar_x1, scrollable_bar_y1, scroll_bar_x2, scrollable_bar_y2, radius, radius, c, c, true);
	var c = default_col;
	if(dragging) {
		c = drag_col;
	} else if(hover) {
		c = hover_col;
	}
	draw_roundrect_color_ext(scroll_bar_x1 + border_offset, scrollable_bar_y1 + border_offset, scroll_bar_x2 - border_offset, scrollable_bar_y2 - border_offset, radius, radius, c, c, false);	
			
	//Reset our surface
	surface_reset_target();
	
	//Done! Render the surface
	draw_surface(surf, x, y);
}