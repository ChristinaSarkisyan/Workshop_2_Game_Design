/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 6D487BBF
/// @DnDArgument : "key" "ord("R")"
var l6D487BBF_0;
l6D487BBF_0 = keyboard_check_pressed(ord("R"));
if (l6D487BBF_0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 47DF4DDB
	/// @DnDParent : 6D487BBF
	room_restart();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 6A28A92C
/// @DnDArgument : "key" "ord("G")"
var l6A28A92C_0;
l6A28A92C_0 = keyboard_check_pressed(ord("G"));
if (l6A28A92C_0)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 0AC49AEB
	/// @DnDParent : 6A28A92C
	game_restart();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 2F56D356
/// @DnDArgument : "key" "ord("L")"
var l2F56D356_0;
l2F56D356_0 = keyboard_check_pressed(ord("L"));
if (l2F56D356_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1D2D6245
	/// @DnDParent : 2F56D356
	/// @DnDArgument : "lives" "5"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(5);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 309A37B9
/// @DnDArgument : "key" "ord("N")"
var l309A37B9_0;
l309A37B9_0 = keyboard_check_pressed(ord("N"));
if (l309A37B9_0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0FC9F1C3
	/// @DnDParent : 309A37B9
	room_goto_next();
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 64BBB20A
/// @DnDArgument : "key" "ord("J")"
var l64BBB20A_0;
l64BBB20A_0 = keyboard_check_pressed(ord("J"));
if (l64BBB20A_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4E7FC768
	/// @DnDComment : will teleport your player to the end of the room
	/// @DnDApplyTo : {obj_player}
	/// @DnDParent : 64BBB20A
	/// @DnDArgument : "x" "862"
	/// @DnDArgument : "y" "670"
	with(obj_player) {
	x = 862;
	y = 670;
	}
}