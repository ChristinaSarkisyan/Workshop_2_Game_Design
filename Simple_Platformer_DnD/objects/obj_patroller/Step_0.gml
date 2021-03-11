/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4F3392AE
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l4F3392AE_0 = false;
l4F3392AE_0 = instance_exists(obj_player);
if(l4F3392AE_0)
{

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 321B0E1E
/// @DnDArgument : "var" "distance_to_object(obj_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "aggro_range"
if(distance_to_object(obj_player) < aggro_range)
{
	/// @DnDAction : YoYo Games.Paths.Stop_Path
	/// @DnDVersion : 1
	/// @DnDHash : 4E9A439F
	/// @DnDParent : 321B0E1E
	path_end();

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 417A0944
	/// @DnDParent : 321B0E1E
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 20A8DAB2
	/// @DnDParent : 321B0E1E
	/// @DnDArgument : "speed" "hsp"
	speed = hsp;
}