/// @description  Draw GUI for the demo
var c = draw_get_color();
var a = draw_get_alpha();
var s_run = "SPACE = Start transition";
var s_fullscreen = "F = Fullscreen on/off";
var s_change = "LEFT/RIGHT = Change transition";
var s_time = "UP/DOWN = Change speed";
var s_speed = string(time) + " STEPS";

// Draw GUI Base Shadow
draw_set_alpha(0.4);
draw_set_color(c_black);
draw_rectangle(0, window_get_height() - 84, window_get_width(), window_get_height() - 80, false);

// Draw GUI Base
draw_set_alpha(1);
draw_set_color(make_colour_rgb(229, 252, 194));
draw_rectangle(0, window_get_height() - 80, window_get_width(), window_get_height(), false);

// Draw all GUI text

draw_set_font(fnt_gui);
draw_set_color(c_black);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);


draw_text(window_get_width() / 4, window_get_height() - 48, string_hash_to_newline(s_change));
draw_text(window_get_width() / 4, window_get_height() - 32, string_hash_to_newline(string_upper(s_transition)));
draw_text(window_get_width() / 2, window_get_height() - 48, string_hash_to_newline(s_run));
draw_text(window_get_width() / 2, window_get_height() - 32, string_hash_to_newline(s_fullscreen));
draw_text(window_get_width() / 1.33, window_get_height() - 48, string_hash_to_newline(s_time));
draw_text(window_get_width() / 1.33, window_get_height() - 32, string_hash_to_newline(s_speed));

draw_set_alpha(a);
draw_set_color(c);

