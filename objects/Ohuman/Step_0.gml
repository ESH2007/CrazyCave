xvelocity = 0;
yvelocity += 0.05; // gravedad
velocitywalk = 1.5;

// Saltar solo si está en el suelo
if (place_meeting(x, y + 1, Ograss)) {
    if (keyboard_check_pressed(vk_up)) {
        yvelocity = -2;
		 
    }
	else {
		 yvelocity = 0
		
	}
}
// reinicar el juego si se sale de los limites
if (y> room_height)
{
	room_restart()		
	
}	
// Movimiento horizontal
if (keyboard_check(vk_right)) {
    xvelocity = 0.8;
}
else if (keyboard_check(vk_left)) {
    xvelocity = -0.8;
}

move_and_collide(xvelocity, yvelocity, Ograss)

// Movimiento y colisión
move_and_collide(xvelocity, yvelocity, Ograss);