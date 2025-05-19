if inicializar == true {
var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

var _xx = 0;
var _yy = _guia - 50;
var _c = c_black;
var _sprite = texto_grid[# Infos.Retrato, pagina];
var _texto = string_copy(texto_grid[# Infos.Texto, pagina], 0, caractere);
draw_set_font(fnt_dialogo);

if texto_grid[# Infos.Lado, pagina] == 0
 {
draw_rectangle_color(_xx + 50, _yy, _guil, _guia, _c, _c, _c, _c, false);
draw_text(_xx + 66, _yy - 32, texto_grid[# Infos.Nome, pagina]);
draw_text_ext(_xx + 60, _yy + 10, _texto, 32, _guil - 60);

draw_sprite_ext(_sprite, 0, 25, _guia, 3, 3, 0, c_white, 1);
 } else
 {
draw_rectangle_color(_xx, _yy, _guil - 50, _guia, _c, _c, _c, _c, false)
var _stgw = string_width(texto_grid[# Infos.Nome, pagina]);
draw_text(_xx + 16, _yy - 25, texto_grid[# Infos.Nome, pagina]);
draw_text_ext(_xx + 10, _yy + 10, _texto, 32, _guil - 60);

draw_sprite_ext(_sprite, 0, 280, _guil - 140, -3, 3, 0, c_white, 1);
 }
}


