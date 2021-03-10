/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7544CEE6
/// @DnDArgument : "color" "$FFBFFBFF"
draw_set_colour($FFBFFBFF & $ffffff);
var l7544CEE6_0=($FFBFFBFF >> 24);
draw_set_alpha(l7544CEE6_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 35C859B9
/// @DnDComment : TODO Insert lives block below$(13_10)this block
/// @DnDArgument : "x1" "50"
/// @DnDArgument : "y1" "5"
/// @DnDArgument : "x2" "150"
/// @DnDArgument : "y2" "45"
/// @DnDArgument : "fill" "1"
draw_rectangle(50, 5, 150, 45, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3774EEBA
/// @DnDComment : TODO Insert lives block above$(13_10)this block
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 66C1D94B
/// @DnDArgument : "x" "55"
/// @DnDArgument : "y" "55"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(55, 55, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 18148BE8
/// @DnDArgument : "output" "go"
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "game_over"
var go = global.game_over;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C7CFAA3
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "true"
if(go == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0E123656
	/// @DnDParent : 4C7CFAA3
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 77BBA774
	/// @DnDParent : 4C7CFAA3
	/// @DnDArgument : "x" "room_width / 2"
	/// @DnDArgument : "y" "room_height / 2"
	/// @DnDArgument : "caption" ""Game Over! Press R to restart.""
	draw_text(room_width / 2, room_height / 2, string("Game Over! Press R to restart.") + "");
}