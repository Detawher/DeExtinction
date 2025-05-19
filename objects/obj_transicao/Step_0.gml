if (mudei)
{
alpha -= .1;
} else
{
alpha += .1;
}

if (alpha >= 1)
{
room_goto(destino);
global.dialogo = false;
obj_player.x = destino_x;
obj_player.y = destino_y;
if obj_sensor.type_door == 0 or obj_sensor.type_door == 1 {audio_play_sound(snd_door_close, 1, false)}
if obj_sensor.type_door == 2 {audio_play_sound(snd_elevator, 1, false)}
}

if (mudei && alpha <= 0 )
{
instance_destroy();
}
