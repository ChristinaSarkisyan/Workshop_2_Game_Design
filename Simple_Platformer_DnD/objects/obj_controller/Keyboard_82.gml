/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 5D33B174
/// @DnDArgument : "output" "over"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "global.game_over"
var over = global.game_over;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 67597A62
/// @DnDArgument : "var" "over"
/// @DnDArgument : "value" "true"
if(over == true)
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 2FDE0F67
	/// @DnDParent : 67597A62
	game_restart();
}