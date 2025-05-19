var som = choose(snd_fly_die_1, snd_fly_die_2, snd_fly_die_3);
audio_play_sound(som, 1, false);
var tempo_fly = choose(60*20, 60*25, 60*17, 60*30, 60*23);
alarm[2] = tempo_fly
