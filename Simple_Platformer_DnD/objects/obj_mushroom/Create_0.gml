/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 6294ED54
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 7A70E26F
/// @DnDArgument : "var" "frame"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "9"
var frame = floor(random_range(0, 9 + 1));

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 12EC430C
/// @DnDArgument : "imageind" "frame"
/// @DnDArgument : "spriteind" "spr_mushroom"
/// @DnDSaveInfo : "spriteind" "spr_mushroom"
sprite_index = spr_mushroom;
image_index = frame;