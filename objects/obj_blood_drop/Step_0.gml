vspeed += gravity; // Aplica a gravidade à velocidade vertical
if (y > 166 + sprite_height) // Remove a partícula quando ela estiver fora da tela
    instance_destroy();