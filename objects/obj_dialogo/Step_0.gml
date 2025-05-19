if inicializar== false {
scr_textos();
inicializar = true;
}

if keyboard_check_pressed(ord("J"))
{
if caractere < string_length(texto_grid[# Infos.Texto, pagina])
{
	caractere = string_length(texto_grid[# Infos.Texto, pagina])
} else
{
	alarm[0] = 1;
	caractere = 0;
 if pagina < ds_grid_height(texto_grid) - 1
   {
	   pagina++;
   }else
{
	global.dialogo = false;
instance_destroy();
}
}
} 



