instance_destroy(other);
effect_create_layer("Instances", ef_explosion,  x,  y, 1,  c_white);

if (sprite_index == spr_rock_big){
	sprite_index = spr_rock_small;
	instance_copy(true);
}
else if (instance_number(obj_rock) < 12){
	x = -100;
	sprite_index = spr_rock_big;
}
else {
	instance_destroy();
}

obj_game.points += 50;