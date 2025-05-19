if place_meeting(x,y,obj_player){
  var _dialogo = instance_create_layer(x-32,y-32,"Dialogo",obj_dialogo);
  _dialogo.npc_nome = nome;
  instance_destroy();
}