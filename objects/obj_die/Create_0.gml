width = 768;
height = 13660;
depth = -10000
pos = 0;
var tempo_fly = choose(60*10, 60*14, 60*17);
alarm[2] = tempo_fly;
op_border = 5;
op_space = 20;

option[0, 0] = "Você morreu..";
option[0, 1] = "Tentar denovo";
option[0, 2] = "Menu";

op_length = array_length(option);
menu_level = 0;