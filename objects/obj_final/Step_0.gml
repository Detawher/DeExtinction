if place_meeting(x, y, obj_player)
{
instance_create_layer(x, y, "Dialogo", obj_transicao)
obj_transicao.destino = rm_room_final;
obj_transicao.destino_x = 0;
obj_transicao.destino_y = 0;
}