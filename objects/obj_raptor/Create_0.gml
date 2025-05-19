randomize();
estado = noone;
tempo_estado = 60 * 10;
timer_estado = 0;
destino_x = x;
destino_y = y;
vel = 1;
velh = 0;
room_espace = room_height;
alvo = noone;
obj_alvo = obj_player;
alvo_x = 0;
alvo_y = 135;
sat = 0;
duracao_ataque = 0.5;
tempo_ataque = duracao_ataque;
sprite = sprite_index;
xscale = 1;
yscale = 1;
alarm[0] = 60 * 2;
alarm_preparando = true;
alarm_ataque = true
rugiu = false
rugindo = true;
_velh = sign(velh);


muda_estado = function(_estado)
{
  tempo_estado--;
  timer_estado = irandom(tempo_estado);

if (timer_estado == tempo_estado or tempo_estado <= 0)
{
estado = _estado[irandom(array_length(_estado)-1)];
tempo_estado = 60 * 7;
}
}

campo_visao = function(_largura, _altura, _xscale)
{
	var _x1, _y1, _x2, _y2;
	_x1 = x;
	_y1 = y + _altura / 2 - sprite_height / 2;
	_x2 = _x1 + _largura * _xscale;
	_y2 = _y1 - _altura;
	
	
	var _alvo = collision_rectangle(_x1, _y1, _x2, _y2, obj_alvo, 0, 1);
	
	return _alvo;
}

estado_parado = function()
{
	sprite = spr_raptor_idle;
	rugindo = true
	scanning = true;
	velh = 0
	
	alvo = campo_visao(larg_visao, sprite_height * alt_visao, xscale);
	
	if (alvo)
	{
	screem_shake(obj_control_sound.multiplier*.2,15)
	//audio_play_sound_at(snd_dino_rugi_longo, x, y, 0, obj_control_sound.max_distance_to_be_heard, obj_control_sound.start_dropping_off_at, obj_control_sound.multiplier, 0, 1);
	audio_play_sound(snd_dino_rugi_longo, 0, 0)
	estado = estado_persegue;
	}
	
	muda_estado([estado_passeando, estado_rugindo]);
};

estado_passeando = function()
{
	sprite = spr_raptor_walk;
	
	var _dist = point_distance(x, y, destino_x, destino_y);
	if (_dist < room_espace)
	{
	  destino_x = random(room_width)
	}
	var _dir = point_direction(x,y, destino_x, destino_y)
	
	if (velh != 0)
	{
	xscale = sign(velh)
	}
	
	velh = lengthdir_x(vel,_dir)
	
	alvo = campo_visao(larg_visao, sprite_height * alt_visao, xscale);
	
	if (alvo)
	{
	screem_shake(obj_control_sound.multiplier*.2,15)
	//audio_play_sound_at(snd_dino_rugi_longo, x, y, 0, obj_control_sound.max_distance_to_be_heard, obj_control_sound.start_dropping_off_at, obj_control_sound.multiplier, 0, 1);
	audio_play_sound(snd_dino_rugi_longo, 0, 0);
	estado = estado_persegue;
	} 
	
muda_estado([estado_parado, estado_rugindo]);
}

estado_rugindo = function()
{
	sprite = spr_raptor_rugi;
	
	velh = 0
	if rugindo == true
	{
	alarm[3] = 1;
	}
	if rugiu == true
	{
	rugiu = false
	estado = estado_parado
	}
	alvo = campo_visao(larg_visao * .8, sprite_height * alt_visao, xscale);
	
	if (alvo)
	{
	screem_shake(obj_control_sound.multiplier*.2,15)
	//audio_play_sound_at(snd_dino_rugi_longo, x, y, 0, obj_control_sound.max_distance_to_be_heard, obj_control_sound.start_dropping_off_at, obj_control_sound.multiplier, 0, 1);
	audio_play_sound(snd_dino_rugi_longo, 0, 0);
	estado = estado_persegue;
	}
}


desenha_sprite = function()
{
draw_sprite_ext(sprite, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha)
}

desenha_sombra = function()
{
	draw_sprite_ext(spr_sombra, 0, x, y, .5, .6, 0, c_white, .25)
}

estado_persegue = function()
{
if (instance_exists(alvo))
{
	alarm_preparando = true
	sprite = spr_raptor_run
	sat = 0;
	rugindo = true
	image_speed = 1;
	if (velh != 0)
	{
	xscale = sign(velh)
	vel = 2;
	}
    var _dir = point_direction(x, y, alvo.x, alvo.y);
    velh = lengthdir_x(vel, _dir);
	var _dist = point_distance(x, y, alvo.x, alvo.y)
	if (_dist < larg_visao / 2)
	{
	estado = estado_prepara_ataque;
	}
	if (_dist > larg_visao * 1.7)
	{
	alvo = noone;
	}
	} else
	{
	muda_estado([estado_parado, estado_passeando]);
	}
}

estado_prepara_ataque = function()
{
	alarm_ataque = true
	if alarm_preparando == true
	{
	alarm[2] = 1;
	alarm_preparando = false;
	}
	if distance_to_object(obj_alvo) >= 20
	{
	if (velh != 0)
	{
	xscale = sign(velh)
	}
	}
	sat += delta_time / 1000000;
	
	sprite = spr_raptor_idle;
	velh = 0;
	if (sat > tempo_preparar_ataque_1) && global.iluminacao == true
	{
	estado = estado_ataque;
	alvo_x = alvo.x;
	sat = 0;
	}
	if (sat > tempo_preparar_ataque_2) && global.iluminacao == false
	{
	estado = estado_ataque;
	alvo_x = alvo.x;
	sat = 0;
	}
}

estado_ataque = function()
{
	if distance_to_object(obj_alvo) >= distance_player
	{
	estado = estado_persegue
	} else
	{
	sprite = spr_raptor_bite;
	if alarm_ataque == true
	{
	alarm[1] = 1;
	alarm_ataque = false;
	}
	tempo_ataque -= delta_time / 2000000;
	var _dir = point_direction(x, y, alvo_x, alvo_y);
	velh = lengthdir_x(vel * vel_mult, _dir);
	if distance_to_object(obj_alvo) <= 10 
	{
	obj_player.toma_dano();
	}
	if (tempo_ataque <= 0)
	{
	estado = estado_persegue;
	tempo_ataque = duracao_ataque;
	}
	}
}

estado = estado_parado;

