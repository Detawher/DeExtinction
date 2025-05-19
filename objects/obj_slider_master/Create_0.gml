/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
valor = 1;
color_cube = c_white;

altera_alvo = function()
{
	var _valor = valor;
	global.valor = _valor
	global.vol_master = _valor;
	scr_mudar_volume()

}

desenhar_slider = function()
{
draw_self();
draw_text_color(x + 90, y - 40, "Master", c_silver, c_silver, c_silver, c_silver, 1)
var _x_cubo = x + (sprite_width * valor)

draw_sprite_part_ext(spr_slider_bar, 0, 0, 0, sprite_width * valor, sprite_height, x, y - sprite_yoffset, 1, 1, c_white, 1);

draw_sprite_ext(spr_slider_button, 0, _x_cubo, y, 1, 1, 0, color_cube, 1);
}

altera_valor = function()
{
	altera_alvo();
	static _mover = false;
	
var _cubo_x = x + (sprite_width * valor);
var _cubo_y = y;
var _margem = 8;

var _mouse_sobre = point_in_rectangle(mouse_x, mouse_y,bbox_left - _margem, bbox_top - _margem, bbox_right + _margem, bbox_bottom + _margem)
var _mouse_click = mouse_check_button(mb_left);
var _mouse_press = mouse_check_button_pressed(mb_left);


if (_mouse_sobre)
{ if (_mouse_press)
{
 _mover = true;
}

}

if (_mover)
{
 
	
if (_mouse_click)
{

 valor = (mouse_x - x) / sprite_width;
 valor = clamp(valor, 0, 1);
} else 
{
	_mover = false;
}
}
}