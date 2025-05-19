var player = place_meeting(x,y, obj_player);

if (type_door == 0)
{
 key = true;
}



if (player && key == true)
{
	global.dialogo = true;
	var tran = instance_create_layer(0, 0, "Dialogo", obj_transicao);
	tran.destino = destino;
	tran.destino_x = destino_x;
	tran.destino_y = destino_y;
};



