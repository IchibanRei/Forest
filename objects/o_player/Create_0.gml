initialize_movement_entity(.5, 1, o_solid);
image_speed = 0;
acceleration_ = 0.5;
max_speed_ = 1.5;
direction_facing_ = dir.right;
roll_direction_ = 0;
roll_speed_ = 2;
direction_ = 0;
global.player_health = 4;

enum player {
	move,
	sword,
	evade
}

enum dir {
	right,
	up,
	left,
	down
}

state_ = player.move

// Sprite move lookup table
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.left] = s_player_run_right;
sprite_[player.move, dir.down] = s_player_run_down;

// Sprite attack lookup table
sprite_[player.sword, dir.right] = s_player_sword_right;
sprite_[player.sword, dir.up] = s_player_sword_up;
sprite_[player.sword, dir.left] = s_player_sword_right;
sprite_[player.sword, dir.down] = s_player_sword_down;

// Sprite evade lookup table
sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.left] = s_player_roll_right;
sprite_[player.evade, dir.down] = s_player_roll_down;