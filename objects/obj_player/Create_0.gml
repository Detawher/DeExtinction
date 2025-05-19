xspd = 0;
move_vel = 1;
stamina = 100;
stamina_max = 100;
face = 1;

//informações para salvar quantidade de um item
atadura_usada = false;

_entrou = false;
dentro_armario = false;
andar = false;

dano = false;
vida_max = 4;
vida = vida_max;
tempo_inv = 60;

elemento_1 = 0;
elemento_2 = 0;
elemento_3 = 0;

health_bar_width = 70;
health_bar_height = 6;
healthbar_x = 9;
healthbar_y = 10;

empurrar_dir = 0;
empurrar_veloc = 0;

toma_dano = function()
{
	if (vida == 0){morreu() return};
	if (dano) return;
	if (dentro_armario == true)
	{
	//caso esteja dentro do armario 
	repeat 13 {instance_create_layer(obj_player.x, obj_player.y - 20, "Player", obj_blood_drop);}
	audio_play_sound(snd_door_armario_closing, 1, false)
	audio_pause_sound(snd_breathing)
	var camera = instance_create_layer(x, y, "Instances", obj_camera)
    var camera_destruida = instance_destroy(obj_camera_armario);
	var som = choose(snd_hurt_player_1, snd_hurt_player_2, snd_hurt_player_3, snd_hurt_player_4);
	audio_play_sound(som, 1, false);
	global.dialogo = true;
	global.iluminacao = false;
	obj_armario.image_index = 0
	obj_armario._entrou = false;
	sprite_index = spr_player_hurt;
	alarm[0] = tempo_inv;
	screem_shake(15,30);
	face = 0;
	vida--;
	dano = true;
	dentro_armario = false;
	} else
	{
	//caso não esteja dentro do armario
	repeat 8 {instance_create_layer(obj_player.x, obj_player.y - 20, "Player", obj_blood_drop);}
	screem_shake(15,30);
	var som = choose(snd_hurt_player_1, snd_hurt_player_2, snd_hurt_player_3, snd_hurt_player_4);
	audio_play_sound(som, 1, false);
	face = 0;
	global.dialogo = true;
	global.iluminacao = false;
	dentro_armario = false;
	vida--;
	sprite_index = spr_player_hurt;
	dano = true;
	alarm[0] = tempo_inv;
	}
}

morreu = function()
{
	if (dentro_armario == true)
	{
		audio_play_sound(snd_door_armario_closing, 1, false);
		audio_pause_sound(snd_breathing);
		var camera = instance_create_layer(x, y, "Instances", obj_camera);
	    var camera_destruida = instance_destroy(obj_camera_armario);
		dentro_armario = false;
		obj_armario.image_index = 0
		obj_armario._entrou = false;
	}
	face = 0;
	sprite_index = spr_player_death;
	global.dialogo = true;
	global.iluminacao = true;
	global.iluminacao_die = true;
	alarm[5] = 50;
	obj_raptor.obj_alvo = noone;
	obj_raptor.estado_parado();
	instance_create_layer(x,y,"Dialogo",obj_die);
}