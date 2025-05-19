if surface_exists(sombra_surface){
surface_set_target(sombra_surface);

draw_set_alpha(1);
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);

gpu_set_blendmode(bm_subtract);


if instance_exists(obj_player) && global.iluminacao == false
{

draw_set_alpha(.3)
draw_circle(obj_player.x, obj_player.y - 20, 15 + irandom(1), false);

draw_set_alpha(.1);
draw_circle(obj_player.x, obj_player.y - 20, 30 + irandom(1), false);
draw_set_alpha(1);
}

if instance_exists(obj_player) && global.iluminacao_die = true
{
if (obj_player.image_xscale == 1)
{
draw_set_alpha(.2)
draw_circle(obj_player.x + 10, obj_player.y - 5, 15 + irandom(1), false);

draw_set_alpha(.1);
draw_circle(obj_player.x + 10, obj_player.y - 5, 30 + irandom(1), false);
draw_set_alpha(1);
} else
{
	draw_set_alpha(.2)
draw_circle(obj_player.x - 10, obj_player.y - 5, 15 + irandom(1), false);

draw_set_alpha(.1);
draw_circle(obj_player.x - 10, obj_player.y - 5, 30 + irandom(1), false);
draw_set_alpha(1);
}
}



if instance_exists(obj_armario) && global.iluminacao == true && global.iluminacao_die == false
{
var _num = instance_number(obj_armario);
for (var i = 0; i < _num; i++)
{
var _inst = instance_find(obj_armario, i);

draw_set_alpha(.6)
draw_circle(_inst.x, _inst.y - 30, 24 + irandom(1), false);

draw_set_alpha(.2);
draw_circle(_inst.x, _inst.y - 30, 40 + irandom(1), false);
draw_set_alpha(1);
}
}


if global.iluminacao == true{
draw_set_alpha(.1);
} else
{
draw_set_alpha(.2);
}
draw_rectangle(0, 0,room_width, room_height, false);



gpu_set_blendmode(bm_normal);
draw_set_alpha(1);


surface_reset_target();
} else {
sombra_surface = surface_create(room_width, room_height);
}

draw_surface(sombra_surface, 0, 0);