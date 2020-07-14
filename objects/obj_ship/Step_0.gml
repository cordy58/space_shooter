/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left)) {
	image_angle = image_angle + 5;
}

if (keyboard_check(vk_right)) {
	image_angle = image_angle - 5;
}	
if (keyboard_check(vk_up)) {
	speed = 5;
	motion_set(image_angle, speed);
}
/*if (keyboard_check(vk_down)) { //I have no clue why this if statement doesn't work. 
	speed -= 0.2;
	motion_set(-image_angle, speed);
}*/
if (!keyboard_check(vk_up)) {
	if (speed > 0) {
		speed -= 0.5;
		motion_set(image_angle, speed);
	}
	else if (speed < 0) {
		speed += 0.5;
		motion_set(image_angle, speed);
	}
}

if (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_zap, 1, false);
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.image_angle = image_angle;
	inst.direction = image_angle;
}
move_wrap(true, true, sprite_width/2);
