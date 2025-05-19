audio_pause_sound(snd_fly_die_1);
audio_pause_sound(snd_fly_die_2);
audio_pause_sound(snd_fly_die_3);
var tran = instance_create_layer(0, 0, "Dialogo", obj_transicao_die);
obj_transicao_die.destino = rm_menu;
obj_controler.snd_song_menu = 0;
obj_controler.player_destroy = 0;
