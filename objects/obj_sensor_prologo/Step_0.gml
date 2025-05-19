var passar_sala = keyboard_check_pressed(ord("J"))



if (passar_sala)
{
var tran = instance_create_layer(0, 0, "Dialogo", obj_transicao_prologo);
if (som == 1)
{
instance_create_layer(0, 0, layer, obj_music);
audio_pause_sound(snd_menu)
}
tran.destino = destino;
};
