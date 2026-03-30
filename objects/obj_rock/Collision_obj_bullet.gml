if(obj_game.powerup_time < 0){
	var _obj =  choose(obj_powerup_spread, obj_powerup_ghost);
	instance_create_layer(x, y, "Instances", _obj);
	obj_game.powerup_time = 20;
}

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
audio_play_sound(snd_rockdestroy, 0, false);
obj_game.points += 50;