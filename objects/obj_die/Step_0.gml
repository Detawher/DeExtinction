/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var _up_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var _down_key = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var _accept_key = keyboard_check_released(vk_space) || keyboard_check_released(vk_enter) || keyboard_check_released(ord("J")) ;

op_length = array_length(option[menu_level])

pos += _down_key - _up_key;
if pos >= op_length {pos = 1};
if pos < 1 {pos = op_length-1};

if _accept_key {
	var _sml = menu_level;
	
switch(menu_level) {
		case 0:
	switch(pos) 
	 {
			case 1:
			alarm[0] = 10;
			break;
	
			case 2:
			alarm[1] = 10;
			break;
	  }
	  break;
 }
	
	op_length = array_length(option[menu_level])
}