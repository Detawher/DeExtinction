var _tecla = keyboard_check_pressed(ord("J"))

if distance_to_object(obj_player) <= 10
{
if (_tecla and global.dialogo == false and _entrou == false)
{
  obj_player.dentro_armario = true;
  obj_player.x = x;
  obj_player.stamina += 1;
  global.dialogo = true;
  global.iluminacao = true;
  audio_play_sound(snd_door_armario_open, 1, false)
  audio_play_sound(snd_breathing,2,true);
  image_index = 1;
  var camera_destruida = instance_destroy(obj_camera);
  var camera = instance_create_layer(x, y, "Instances", obj_camera_armario)
  alarm[0] = 60;
 }
 if (keyboard_check_pressed(ord("J")) and _entrou == true)
{
  obj_player.dentro_armario = false;
  audio_play_sound(snd_door_armario_closing, 1, false)
  audio_pause_sound(snd_breathing)
  obj_armario.image_index = 0;
  global.dialogo = false;
  global.iluminacao = false;
  var camera = instance_create_layer(x, y, "Instances", obj_camera)
  var camera_destruida = instance_destroy(obj_camera_armario);
  _entrou = false;
 }
}

