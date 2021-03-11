/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4C06FEA5
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "object" "obj_ladder"
/// @DnDSaveInfo : "object" "obj_ladder"
var l4C06FEA5_0 = instance_place(x, y, obj_ladder);
if ((l4C06FEA5_0 > 0))
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 66177E75
	/// @DnDParent : 4C06FEA5
	/// @DnDArgument : "key" "vk_up || vk_down"
	var l66177E75_0;
	l66177E75_0 = keyboard_check(vk_up || vk_down);
	if (l66177E75_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7AE8D0A3
		/// @DnDParent : 66177E75
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "climbing"
		climbing = true;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4C8AF633
		/// @DnDParent : 66177E75
		/// @DnDArgument : "type" "2"
		vspeed = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
		/// @DnDVersion : 1
		/// @DnDHash : 1DF8A3AC
		/// @DnDParent : 66177E75
		/// @DnDArgument : "force" "0"
		gravity = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 47567EFC
		/// @DnDParent : 66177E75
		/// @DnDArgument : "spriteind" "spr_climbing"
		/// @DnDSaveInfo : "spriteind" "spr_climbing"
		sprite_index = spr_climbing;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 49D2C0F0
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B1BE6DB
	/// @DnDParent : 49D2C0F0
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "climbing"
	climbing = false;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 20248718
	/// @DnDParent : 49D2C0F0
	/// @DnDArgument : "spriteind" "spr_player"
	/// @DnDSaveInfo : "spriteind" "spr_player"
	sprite_index = spr_player;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 133A236A
/// @DnDArgument : "var" "climbing"
/// @DnDArgument : "value" "true"
if(climbing == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 01B89A6E
	/// @DnDParent : 133A236A
	/// @DnDArgument : "key" "vk_down"
	var l01B89A6E_0;
	l01B89A6E_0 = keyboard_check(vk_down);
	if (l01B89A6E_0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 30978A4F
		/// @DnDParent : 01B89A6E
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "climb_speed"
		/// @DnDArgument : "y_relative" "1"
		x += 0;
		y += climb_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2DFBE7D1
	/// @DnDParent : 133A236A
	/// @DnDArgument : "key" "vk_up"
	var l2DFBE7D1_0;
	l2DFBE7D1_0 = keyboard_check(vk_up);
	if (l2DFBE7D1_0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0296716F
		/// @DnDParent : 2DFBE7D1
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-1 * climb_speed"
		/// @DnDArgument : "y_relative" "1"
		x += 0;
		y += -1 * climb_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 184FDA67
	/// @DnDParent : 133A236A
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "self.image_yscale"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block"
	/// @DnDSaveInfo : "object" "obj_block"
	var l184FDA67_0 = instance_place(x + 0, y + self.image_yscale, obj_block);
	if ((l184FDA67_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CDBA321
		/// @DnDParent : 184FDA67
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "climbing"
		climbing = false;
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 3043DF02
		/// @DnDParent : 184FDA67
		/// @DnDArgument : "key" "vk_left"
		var l3043DF02_0;
		l3043DF02_0 = keyboard_check(vk_left);
		if (l3043DF02_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 180B1BE4
			/// @DnDParent : 3043DF02
			/// @DnDArgument : "x" "-move_speed"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x += -move_speed;
			y += 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 118188FC
			/// @DnDParent : 3043DF02
			/// @DnDArgument : "speed" "jump_height"
			/// @DnDArgument : "type" "2"
			vspeed = jump_height;
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 774AD8B3
		/// @DnDParent : 184FDA67
		/// @DnDArgument : "key" "vk_right"
		var l774AD8B3_0;
		l774AD8B3_0 = keyboard_check(vk_right);
		if (l774AD8B3_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 08D98202
			/// @DnDParent : 774AD8B3
			/// @DnDArgument : "x" "move_speed"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "0"
			/// @DnDArgument : "y_relative" "1"
			x += move_speed;
			y += 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 66BE6C93
			/// @DnDParent : 774AD8B3
			/// @DnDArgument : "speed" "jump_height"
			/// @DnDArgument : "type" "2"
			vspeed = jump_height;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6CD967B1
else
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5B08C90D
	/// @DnDParent : 6CD967B1
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
	/// @DnDParent : 6CD967B1
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
	/// @DnDParent : 6CD967B1
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
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 24072856
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "vspeed_max"
if(vspeed > vspeed_max)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A626E91
	/// @DnDParent : 24072856
	/// @DnDArgument : "expr" "vspeed_max"
	/// @DnDArgument : "var" "vspeed"
	vspeed = vspeed_max;
}

/// @DnDAction : YoYo Games.Collisions.If_Any_Object_At
/// @DnDVersion : 1
/// @DnDHash : 17371E1D
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y + 1"
var l17371E1D_0 = place_empty(x, y + 1);
if (!l17371E1D_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 7E7BE3C3
	/// @DnDParent : 17371E1D
	/// @DnDArgument : "force" "0"
	gravity = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1A48D006
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 190045B9
	/// @DnDParent : 1A48D006
	/// @DnDArgument : "force" ".5"
	gravity = .5;
}