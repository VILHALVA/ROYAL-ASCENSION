
draw_set_font(fnt_menu);
global.dialogo = true;
var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x1 = gui_width / 2;
var y1 = gui_height /2 + 110;
var margin = 90;
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

draw_set_halign(fa_center);
draw_text(250, 400, "Criadores:");
draw_text(250, 450, "Dhominy Murillo");
draw_text(250,500, "Sandiego Vieira");
draw_text(250, 550, "Eduardo Hipolito");
draw_text(250, 600, "Kelly Nascimento");

for (var i = 0; i < op_max; i++){
	var y2 = y1 + (margin * i);
	var string_w = string_width(options[i]);
	var string_h = string_height(options[i]);
	
	if (point_in_rectangle(m_x, m_y, x1 - string_w /2, y2 - string_h /2, x1 + string_w, y2 + string_h)){
	draw_set_color(c_black);
	index = i;
	if(mouse_check_button_pressed(mb_left)){
		if (index == 0){
			audio_play_sound(snd_click_menu,0,0);
			room_goto(OpSom);
		draw_set_color(c_white);
		}
		if (index == 1){
			audio_play_sound(snd_click_menu,0,0);
			room_goto(OpComoJogar);
		draw_set_color(c_white);
		}
		
		if (index == 2){
			audio_play_sound(snd_click_menu,0,0);
			room_goto(Menu);
		global.dialogo = false;
		}
		
	}
	}else {
	draw_set_color(c_white);
	}
	
draw_text(x1, y2, options[i]);
}