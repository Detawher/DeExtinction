// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function sys_save(_nome_arquivo = "nome_arquivo.ini")
{
ini_open(_nome_arquivo);

ini_write_real("player", "local_player_x", obj_player.x);
ini_write_real("player", "local_player_y", obj_player.y);
ini_write_real("player", "local_player_room", obj_pc.room_save);
ini_write_real("player", "vida", obj_player.vida);
ini_write_real("elementos", "type_1", obj_player.elemento_1);
ini_write_real("elementos", "type_2", obj_player.elemento_2);
ini_write_real("elementos", "type_3", obj_player.elemento_3);
ini_write_real("cutscine", "section_1", obj_controler.cutscine_1_go);
ini_write_real("cutscine", "section_11", obj_controler.cutscine_11_go);
ini_write_real("cutscine", "section_2", obj_controler.cutscine_2_go);
ini_write_real("cutscine", "section_3", obj_controler.cutscine_3_go);
ini_write_real("cutscine", "section_5", obj_controler.cutscine_5_go);
ini_write_real("cutscine", "section_61", obj_controler.cutscine_61_go);
ini_write_real("cutscine", "section_7", obj_controler.cutscine_7_go);
ini_write_real("cutscine", "section_101", obj_controler.cutscine_101_go);
ini_write_real("cutscine", "section_110", obj_controler.cutscine_110_go);

ini_close();
}

function sys_load(_nome_arquivo = "save.ini")
{
ini_open(_nome_arquivo)

var _local_player_x = ini_read_real("player", "local_player_x", 0);
var _local_player_y = ini_read_real("player", "local_player_y", 0);
var _local_player_room = ini_read_real("player", "local_player_room", 0);
var _player_vida = ini_read_real("player", "vida", 0)
var _elemento_type_1 = ini_read_real("elementos", "type_1", 0);
var _elemento_type_2 = ini_read_real("elementos", "type_2", 0);
var _elemento_type_3 = ini_read_real("elementos", "type_3", 0);
var _cutscine_1 = ini_read_real("cutscine", "section_1", 0);
obj_controler.cutscine_1_go = _cutscine_1;
var _cutscine_11 = ini_read_real("cutscine", "section_11", 0);
obj_controler.cutscine_11_go = _cutscine_11;
var _cutscine_2 = ini_read_real("cutscine", "section_2", 0);
obj_controler.cutscine_2_go = _cutscine_2;
var _cutscine_3 = ini_read_real("cutscine", "section_3", 0);
obj_controler.cutscine_3_go = _cutscine_3;
var _cutscine_5 = ini_read_real("cutscine", "section_5", 0);
obj_controler.cutscine_5_go = _cutscine_5;
var _cutscine_61 = ini_read_real("cutscine", "section_61", 0);
obj_controler.cutscine_61_go = _cutscine_61;
var _cutscine_7 = ini_read_real("cutscine", "section_7", 0);
obj_controler.cutscine_7_go = _cutscine_7;
var _cutscine_101 = ini_read_real("cutscine", "section_101", 0);
obj_controler.cutscine_101_go = _cutscine_101;
var _cutscine_110 = ini_read_real("cutscine", "section_110", 0);
obj_controler.cutscine_110_go = _cutscine_110;
global.player_local_x = _local_player_x;
global.player_local_y = _local_player_y;
global.player_local_room = _local_player_room;
obj_player.vida = _player_vida;
obj_player.elemento_1 = _elemento_type_1 
obj_player.elemento_2 = _elemento_type_2 
obj_player.elemento_3 = _elemento_type_3

ini_close();
}