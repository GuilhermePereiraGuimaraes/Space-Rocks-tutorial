if(powerup == 2) exit;

effect_create_layer("Instances", ef_firework, x, y, 1, c_white);
audio_play_sound(snd_lose, 0, false, 1, 0, random_range(0.6, 1.1));
instance_destroy();
obj_game.alarm[0] = 60;