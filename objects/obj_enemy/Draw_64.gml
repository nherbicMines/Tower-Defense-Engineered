/// @description Draw Health bar

// Ficure out health bar dimensions
start_x = x-sprite_width/2;
start_y = y-sprite_height/2-2;
end_x = start_x + tick_length*hitsLeft;
end_y = y-sprite_height/2+1;



// Draw the helath bar
draw_set_color(c_white);
draw_rectangle(start_x,start_y,x+sprite_width/2, end_y, false);

draw_set_color(c_red);
draw_rectangle(start_x+1,start_y+1,end_x-1, end_y-1, false);

draw_set_color(c_white);
