/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 601B1F53
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7B05501B
/// @DnDArgument : "soundid" "snd_get_mushroom"
/// @DnDSaveInfo : "soundid" "snd_get_mushroom"
audio_play_sound(snd_get_mushroom, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 102F34BA
/// @DnDApplyTo : {obj_controller}
/// @DnDArgument : "score" "5"
/// @DnDArgument : "score_relative" "1"
with(obj_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(5);
}