var rondom = irandom(2)
var som = snd_dino_rugi_1
if rondom == 1
{
som = snd_dino_rugi_2
}
if rondom == 2
{
som = snd_dino_rugi_3
}
rugindo = false;
if (distance_to_object(obj_player) < obj_control_sound.max_distance_to_be_heard)
{
screem_shake(10,15)
}
//audio_play_sound_at(som, x, y, 0, obj_control_sound.max_distance_to_be_heard, obj_control_sound.start_dropping_off_at, obj_control_sound.multiplier, 0, 1);
audio_play_sound(som, 0, 0);
