/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 06516757
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "limit_movement"
/// @DnDArgument : "arg" "in_obj"
/// @DnDArgument : "arg_1" "in_move_speed"
function limit_movement(in_obj, in_move_speed) 
{
	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 3354CBBA
	/// @DnDApplyTo : {obj_block}
	/// @DnDParent : 06516757
	/// @DnDArgument : "x" "in_move_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "not" "1"
	with(obj_block) var l3354CBBA_0 = place_empty(x + in_move_speed, y + 0);
	if (l3354CBBA_0)
	{
	
	}
}