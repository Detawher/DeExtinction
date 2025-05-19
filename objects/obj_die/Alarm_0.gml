audio_pause_sound(snd_fly_die_1);
audio_pause_sound(snd_fly_die_2);
audio_pause_sound(snd_fly_die_3);
sys_load("save.ini");
if (global.player_local_room == 0)
{
audio_play_sound(snd_hover, 1, false)
var tran = instance_create_layer(0, 0, "Dialogo", obj_transicao_die);
obj_transicao_die.destino = rm_room1;
instance_destroy(obj_player);
} 
else
{
	audio_play_sound(snd_hover, 1, false)
	var tran = instance_create_layer(0, 0, "Dialogo", obj_transicao_die);
	if (global.player_local_room == 1){var _sala = rm_room11}
	if (global.player_local_room == 2){var _sala = rm_room10}
	obj_player.x = global.player_local_x;
	obj_player.y = global.player_local_y;
	obj_transicao_die.destino = _sala
	global.jogo = false;
	obj_player.face = 1;
}