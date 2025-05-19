/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor









// Inherit the parent event
event_inherited();
var player = instance_create_layer(0, 0, "Player", obj_player)
sys_load("save.ini");
if (global.player_local_room == 0){audio_play_sound(snd_denied, 1, false)} 
else
{
	audio_play_sound(snd_hover, 1, false)
	audio_pause_sound(snd_menu)
	var tran = instance_create_layer(0, 0, "Dialogo", obj_transicao_prologo);
	instance_create_layer(0, 0, layer, obj_music);
	if (global.player_local_room == 1){var _sala = rm_room11}
	if (global.player_local_room == 2){var _sala = rm_room10}
	obj_player.x = global.player_local_x;
	obj_player.y = global.player_local_y;
	tran.destino = _sala
	global.jogo = false;
}