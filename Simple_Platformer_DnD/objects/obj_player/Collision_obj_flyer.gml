/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 41BBD61E
/// @DnDArgument : "expr" "vspeed > 0 and y < other.y"
if(vspeed > 0 and y < other.y)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D9A7D8D
	/// @DnDApplyTo : other
	/// @DnDParent : 41BBD61E
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 25A096FA
	/// @DnDParent : 41BBD61E
	/// @DnDArgument : "speed" "jump_height"
	/// @DnDArgument : "type" "2"
	vspeed = jump_height;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 443EBAD3
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A47C418
	/// @DnDParent : 443EBAD3
	instance_destroy();
}