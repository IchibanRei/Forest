/// @description Move State
image_speed = 0;
var x_input = keyboard_check(vk_right) - keyboard_check(vk_left);
var y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var input_direction_ = point_direction(0, 0, x_input, y_input);
var attack_input = keyboard_check_pressed(ord("X"));
var evade_input = keyboard_check_pressed(ord("Z"));
roll_direction_ = direction_facing_ * 90;

if(x_input == 0 && y_input == 0){
	image_index = 0;
	image_speed = 0
	apply_friction_to_movement_entity();
} else{
	image_speed = 1.2;
	if(x_input != 0){
		image_xscale = x_input;
	}
	get_direction_facing(input_direction_);
	add_movement_maxspeed(input_direction_, acceleration_, max_speed_);
	roll_direction_ = direction_facing_ * 90;
}

if(attack_input == true){
	image_index = 0;
	state_ = player.sword;
}

if(evade_input == true){
	image_index = 0;
	state_ = player.evade;
}


move_movement_entity(false);