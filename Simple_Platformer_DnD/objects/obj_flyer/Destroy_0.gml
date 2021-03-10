/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4F49BF37
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_monster_dead"
/// @DnDSaveInfo : "objectid" "obj_monster_dead"
instance_create_layer(x + 0, y + 0, "Instances", obj_monster_dead);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 453D4520
/// @DnDArgument : "soundid" "snd_kill_monster"
/// @DnDSaveInfo : "soundid" "snd_kill_monster"
audio_play_sound(snd_kill_monster, 0, 0);