if (mudei) and alpha != 0
{
alpha -= .01
} else
{
alpha += .01;
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
