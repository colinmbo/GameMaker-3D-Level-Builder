#region Camera Control
var inputX = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var inputY = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var inputZ = keyboard_check(ord("E")) - keyboard_check(ord("Q"));

camPos.x += inputX;
camPos.y += inputY;
camPos.z += inputZ;

if (keyboard_check_pressed(vk_tab)) {
	perspective = !perspective;
}
#endregion