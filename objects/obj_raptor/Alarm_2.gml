var rondom = irandom(1)
var som = snd_dino_preparando_morder_1
if rondom == 1
{
som = snd_dino_preparando_morder_2
}
//audio_play_sound_at(som, x, y, 0, obj_control_sound.max_distance_to_be_heard, obj_control_sound.start_dropping_off_at, obj_control_sound.multiplier, 0, 1);
audio_play_sound(som, 0, 0);