/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 42BF31AE
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l42BF31AE_0 = false;
l42BF31AE_0 = instance_exists(obj_player);
if(l42BF31AE_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 02096243
	/// @DnDParent : 42BF31AE
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "obj_player.y"
	/// @DnDArgument : "y_relative" "1"
	x += obj_player.x;
	y += obj_player.y;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 214483FD
	/// @DnDParent : 42BF31AE
	/// @DnDArgument : "expr" "obj_player.image_xscale"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = obj_player.image_xscale;
}