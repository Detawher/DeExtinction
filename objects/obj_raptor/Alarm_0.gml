if sprite == spr_raptor_walk{alarm[0] = 30}
if sprite == spr_raptor_run{alarm[0] = 15}
if sprite == spr_raptor_bite
{
alarm[0] = 60
//show_message("mordeu, e vai andar")
}
if sprite == spr_raptor_rugi
{
alarm[0] = 60
//show_message("rugi")
}
if sprite == spr_raptor_idle
{
alarm[0] = 60 * 2
//show_message("nada")
} else
{
var rondom = irandom(4)
var som = snd_dino_step_1
if rondom == 1
{
som = snd_dino_step_2
}
if rondom == 2
{
som = snd_dino_step_3
}
if rondom == 3
{
som = snd_dino_step_4
}
if rondom == 4
{
som = snd_dino_step_5
}
if (distance_to_object(obj_player) < obj_control_sound.max_distance_to_be_heard)
{
screem_shake(obj_control_sound.multiplier*.5,15)
}
//audio_play_sound_at(som, x, y, 0, obj_control_sound.max_distance_to_be_heard, obj_control_sound.start_dropping_off_at, obj_control_sound.multiplier, 0, 1);
audio_play_sound(som, 0, 0)
}