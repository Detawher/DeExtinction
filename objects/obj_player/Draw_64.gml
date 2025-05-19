draw_sprite_stretched(spr_health_bar, 1, healthbar_x, healthbar_y, (vida/vida_max) * health_bar_width, health_bar_height);
draw_sprite(spr_health_border, 1, healthbar_x, healthbar_y);

draw_sprite(spr_estamina_tras, 1, 8, 27);
draw_sprite_ext(spr_estamina_frente, 1, 10, 28, max(0,stamina/stamina_max), 1, 0, c_white, 1);

if (elemento_1 == 1)
{
draw_sprite(spr_elemento_1, 0, 90, 28);
}

if (elemento_2 == 1)
{
draw_sprite(spr_elemento_2, 0, 110, 28);
}
if (elemento_3 == 1)
{
draw_sprite(spr_elemento_3, 0, 130, 28);
}