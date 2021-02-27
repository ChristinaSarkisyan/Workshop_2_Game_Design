/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5B08C90D
/// @DnDArgument : "key" "vk_left"
var l5B08C90D_0;
l5B08C90D_0 = keyboard_check(vk_left);
if (l5B08C90D_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1E20E645
	/// @DnDParent : 5B08C90D
	/// @DnDArgument : "x" "-move_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += -move_speed;
	y += 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2C2B214B
/// @DnDArgument : "key" "vk_right"
var l2C2B214B_0;
l2C2B214B_0 = keyboard_check(vk_right);
if (l2C2B214B_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2733A021
	/// @DnDParent : 2C2B214B
	/// @DnDArgument : "x" "move_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += move_speed;
	y += 0;
}