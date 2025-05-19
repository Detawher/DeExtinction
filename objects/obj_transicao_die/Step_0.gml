if (mudei) and alpha != 0
{
alpha -= .1;
} else
{
alpha += .1;
}

if (alpha >= 1)
{
room_goto(destino);
global.dialogo = false;
alarm[0] = 60;
}

if (mudei && alpha <= 0 )
{
instance_destroy();
}
