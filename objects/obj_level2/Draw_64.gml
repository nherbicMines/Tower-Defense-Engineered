/// @description Draw the countdown

draw_set_font(fnt_title);
draw_set_color(c_white);

draw_text(room_width/2-100, room_height/3, "Level 2");
draw_text(room_width/2, room_height/2, string(ceil(alarm[0]/room_speed)));


