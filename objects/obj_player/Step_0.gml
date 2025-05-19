var _right_key = keyboard_check(ord("D"));
var _left_key = keyboard_check (ord("A"));
var _rum_key = keyboard_check(ord("H"));
var _velh = sign(xspd);


if (global.dialogo == false){
    xspd = (_right_key - _left_key) * move_vel;
} else {xspd = 0;}

repeat(abs(xspd)) {
	if (_rum_key == true) && (stamina > 0) && !place_meeting(x+sign(xspd),y,obj_colisao)
	{
		stamina -= .5;
		sprite_index = spr_player_rum;
		x += _velh
	} 
}
if place_meeting(x + xspd, y, obj_colisao) == true
{
	xspd = 0;
} else
{
x += _velh
}
if dentro_armario {face = 0; obj_player.sprite_index = noone; stamina += 1}
if xspd == 0 and face == 1 {sprite_index = spr_player_idle};
if xspd > 0 {if _rum_key == false or stamina <= 0 {sprite_index = spr_player_walk; } image_xscale=1 face = 1};
if xspd < 0 {if _rum_key == false or stamina <= 0 {sprite_index = spr_player_walk; } image_xscale=-1 face = 1};
if !(_rum_key){stamina += .25}
if (stamina > 100){stamina = 100}
if (stamina < 0){stamina = 0}

if sprite_index == spr_player_rum && andar == false 
{
andar = true
alarm[4] = 20;
}

if distance_to_object(obj_par_npcs) <= 10
{
if keyboard_check_pressed(ord("J")) and global.dialogo == false
{
  var _npc = instance_nearest(x,y,obj_par_npcs);
  var _dialogo = instance_create_layer(x,y,"Dialogo",obj_dialogo);
  _dialogo.npc_nome= _npc.nome;
 }
}

if distance_to_object(obj_pc) <= 10
{
if keyboard_check_pressed(ord("J")) and global.dialogo == false
{
  var _pc = instance_nearest(x,y,obj_pc);
  var _save_salvar = instance_create_layer(170, 100, "Pause", obj_button_salvar);
  var _save_carregar = instance_create_layer(170, 130, "Pause", obj_button_carregar);
  var _save_voltar = instance_create_layer(170, 160, "Pause", obj_button_voltar);
  audio_play_sound(snd_pause, 1, false)
  global.dialogo = true;
 }
}

if distance_to_object(obj_sensor) <= 5
{
	obj_sensor.player = true;

if keyboard_check_pressed(ord("J"))
{
if obj_sensor.type_door == 1
{
audio_play_sound(snd_door_open, 1, false)
}
obj_sensor.key = true;
}
}

