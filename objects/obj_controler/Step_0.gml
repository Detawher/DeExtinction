if instance_exists(obj_dialogo)
{
global.dialogo = true;
}

var _esc_key = keyboard_check_released(vk_escape)
if (_esc_key){game_end()}
if (snd_song_menu == 0)
{
audio_play_sound(snd_menu,0,true);
snd_song_menu = 1;
}
if (player_destroy == 0 && room == rm_menu)
{
var player = instance_deactivate_object(obj_player)
player_destroy = 1;
}

if (room == rm_room1 and cutscine_1_go == 0){
	instance_create_layer(87, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_1"
	cutscine_1_go = 1;
}
if (room == rm_room11 and cutscine_11_go == 0){
	instance_create_layer(87, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_11"
	cutscine_11_go = 1;
}
if (room == rm_room2 and cutscine_2_go == 0){
	instance_create_layer(87, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_2"
	cutscine_2_go = 1;
}
if (room == rm_room3 and cutscine_3_go == 0){
	instance_create_layer(28, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_3"
	cutscine_3_go = 1;
}
if (room == rm_room5 and cutscine_5_go == 0){
	instance_create_layer(28, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_5"
	cutscine_5_go = 1;
}
if (room == rm_room61 and cutscine_61_go == 0){
	instance_create_layer(983, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_61"
	cutscine_61_go = 1;
}
if (room == rm_room7 and cutscine_7_go == 0){
	instance_create_layer(1220, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_7"
	cutscine_7_go = 1;
}
if (room == rm_room101 and cutscine_101_go == 0){
	instance_create_layer(36, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_101"
	cutscine_101_go = 1;
}
if (room == rm_room110 and cutscine_110_go == 0){
	instance_create_layer(114, 168, "Sensores", obj_cutscene)
	obj_cutscene.nome = "rm_110"
	cutscine_110_go = 1;
}

if (!instance_exists(obj_player) && room == rm_room1)
{
var player = instance_create_layer(32, 176, "Player", obj_player)
}

if (room = rm_room31 && obj_player.elemento_1 == 0 && elemento_1_go == 0)
{
instance_create_layer(216, 155, "Instances", obj_elementos);
obj_elementos.sprite_index = spr_elemento_1;
obj_elementos.nome = "Elemento_1";
elemento_1_go = 1;
}
if (room = rm_room8 && obj_player.elemento_2 == 0 && elemento_2_go == 0)
{
instance_create_layer(232, 155, "Instances", obj_elementos);
obj_elementos.sprite_index = spr_elemento_2;
obj_elementos.nome = "Elemento_2";
elemento_2_go = 1;
}
if (room = rm_room110 && obj_player.elemento_3 == 0 && elemento_3_go == 0)
{
instance_create_layer(2168, 155, "Instances", obj_elementos);
obj_elementos.sprite_index = spr_elemento_3;
obj_elementos.nome = "Elemento_3";
elemento_3_go = 1;
}

if (room == rm_room110 && obj_final_go == false && obj_player.elemento_1 == 1 && obj_player.elemento_2 == 1 && obj_player.elemento_3 == 1)
{
 instance_create_layer(2244, 176, "Dialogo", obj_final)
 obj_final_go = true;
}