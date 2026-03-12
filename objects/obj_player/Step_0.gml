controla_player();
if(keyboard_check_released(vk_tab)) global.debug =! global.debug;


if(keyboard_check_pressed(ord("1"))){
	level_tiro = 1;
} else if(keyboard_check_pressed(ord("2"))){
	level_tiro = 2;
} else if(keyboard_check_pressed(ord("3"))){
	level_tiro = 3;
}

//show_debug_message("Level_Tiro: " + string(level_tiro));