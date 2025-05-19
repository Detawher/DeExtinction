function scr_textos(){
switch npc_nome{
     case "rm_1":
 ds_grid_add_text("Esse lugar ta bem acado...", spr_player_retrato_1, 0, "Alex")
 break;
     case "rm_11":
 ds_grid_add_text("Otimo um pc, posso salvar meus dados aqui", spr_player_retrato_1, 0, "Alex")
 break;
     case "rm_2":
 ds_grid_add_text("Tem um raptor aqui, Vou ter que tomar cuidado", spr_player_retrato_1, 0, "Alex")
 ds_grid_add_text("Sorte ter esses armarios", spr_player_retrato_1, 0, "Alex")
 break;
     case "rm_3":
 ds_grid_add_text("Essa foi por sorte, espero que seja o unico", spr_player_retrato_1, 0, "Alex")
 break;
     case "rm_5":
 ds_grid_add_text("Que bom que a energia ainda funciona aqui", spr_player_retrato_1, 0, "Alex")
 break;
     case "rm_61":
 ds_grid_add_text("Tem uma atadura lá no fundo, mas em compensação tem um raptor tambem", spr_player_retrato_1, 0, "Alex")
 break;
     case "rm_7":
 ds_grid_add_text("Outro raptor, estão por toda parte...", spr_player_retrato_1, 0, "Alex")
 break;
      case "rm_101":
 ds_grid_add_text("Mais uma atadura", spr_player_retrato_1, 0, "Alex")
 ds_grid_add_text("...", spr_player_retrato_1, 0, "Alex")
 ds_grid_add_text("e mais um raptor", spr_player_retrato_1, 0, "Alex")
 break;
      case "rm_110":
 ds_grid_add_text("Estou vendo o portal, faltas pouco, e tambem... um raptor", spr_player_retrato_1, 0, "Alex")
 break;
      case "Elemento_1":
 ds_grid_add_text("Otimo, um elemento", spr_player_retrato_1, 0, "Alex");
 var som = choose(snd_glass, snd_glass1, snd_glass2);
 audio_play_sound(som, 0, false);
 ds_grid_add_text("falta dois agora", spr_player_retrato_1, 0, "Alex");
 instance_destroy(obj_elementos);
 obj_player.elemento_1 = 1;
 break;
     case "Elemento_2":
 ds_grid_add_text("Otimo, mais um elemento", spr_player_retrato_1, 0, "Alex");
 var som = choose(snd_glass, snd_glass1, snd_glass2);
 audio_play_sound(som, 0, false);
 instance_destroy(obj_elementos);
 obj_player.elemento_2 = 1;
 break;
     case "Elemento_3":
 ds_grid_add_text("Certo, mais um elemento", spr_player_retrato_1, 0, "Alex");
 var som = choose(snd_glass, snd_glass1, snd_glass2);
 audio_play_sound(som, 0, false);
 instance_destroy(obj_elementos);
 obj_player.elemento_3 = 1;
 break;
     case "Atadura":
 ds_grid_add_text("Esta aqui ela, vou usar", spr_player_retrato_1, 0, "Alex");
 var som = choose(snd_atadura, snd_atadura1);
 audio_play_sound(som, 0, false);
 instance_destroy(obj_atadura);
 if !obj_player.vida == 4 {obj_player.vida += 1;}
 obj_player.atadura_usada = true;
 break;
}
}

function ds_grid_add_row()
{
var _grid = argument[0];
ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text()
{
var _grid = texto_grid;
var _y = ds_grid_add_row(_grid);

_grid[# 0, _y] = argument[0];
_grid[# 1, _y] = argument[1];
_grid[# 2, _y] = argument[2];
_grid[# 3, _y] = argument[3];
}