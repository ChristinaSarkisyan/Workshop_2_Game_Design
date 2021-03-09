/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5B08C90D
/// @DnDArgument : "key" "vk_left"
var l5B08C90D_0;
l5B08C90D_0 = keyboard_check(vk_left);
if (l5B08C90D_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 72FBBD29
	/// @DnDParent : 5B08C90D
	/// @DnDArgument : "x" "-self.move_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_block"
	var l72FBBD29_0 = instance_place(x + -self.move_speed, y + 0, obj_block);
	if (!(l72FBBD29_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33CF449D
		/// @DnDParent : 72FBBD29
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "self.image_xscale"
		self.image_xscale = -1;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 1E20E645
		/// @DnDParent : 72FBBD29
		/// @DnDArgument : "x" "-move_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += -move_speed;
		y += 0;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2C2B214B
/// @DnDArgument : "key" "vk_right"
var l2C2B214B_0;
l2C2B214B_0 = keyboard_check(vk_right);
if (l2C2B214B_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 29FD8EB3
	/// @DnDParent : 2C2B214B
	/// @DnDArgument : "x" "move_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_block"
	var l29FD8EB3_0 = instance_place(x + move_speed, y + 0, obj_block);
	if (!(l29FD8EB3_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 76B107E5
		/// @DnDParent : 29FD8EB3
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "self.image_xscale"
		self.image_xscale = 1;
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2733A021
		/// @DnDParent : 29FD8EB3
		/// @DnDArgument : "x" "move_speed"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += move_speed;
		y += 0;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 09B222EA
/// @DnDArgument : "key" "vk_up"
var l09B222EA_0;
l09B222EA_0 = keyboard_check(vk_up);
if (l09B222EA_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
	/// @DnDVersion : 1
	/// @DnDHash : 4C0A1B22
	/// @DnDParent : 09B222EA
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y + 1"
	var l4C0A1B22_0 = place_empty(x, y + 1);
	if (!l4C0A1B22_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4AB791BA
		/// @DnDParent : 4C0A1B22
		/// @DnDArgument : "speed" "jump_height"
		/// @DnDArgument : "type" "2"
		vspeed = jump_height;
	}
}