/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 3235B1D8
/// @DnDApplyTo : {obj_controller}
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(obj_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 20516E88
/// @DnDArgument : "soundid" "snd_kill_character"
/// @DnDSaveInfo : "soundid" "snd_kill_character"
audio_play_sound(snd_kill_character, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 41943895
/// @DnDApplyTo : {obj_controller}
/// @DnDArgument : "op" "2"
with(obj_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var l41943895_0 = __dnd_lives > 0;
}
if(l41943895_0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4527E5CE
	/// @DnDParent : 41943895
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 74BB9653
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5FD9F62F
	/// @DnDApplyTo : {obj_controller}
	/// @DnDParent : 74BB9653
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "global.game_over"
	with(obj_controller) {
	global.game_over = true;
	
	}
}