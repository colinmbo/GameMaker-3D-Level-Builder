var inputX = keyboard_check(vk_right) - keyboard_check(vk_left);
var inputY = keyboard_check(vk_down) - keyboard_check(vk_up);
var inputJump = keyboard_check_pressed(vk_space);
var inputSprint = keyboard_check(vk_shift);

var moveSpeed = runSpeed;
if (inputSprint) {
	moveSpeed = sprintSpeed;
}

velocity.x = inputX * moveSpeed;
velocity.y = inputY * moveSpeed;
velocity.z += gravForce;

if (position.z + velocity.z >= 0) {
	velocity.z = 0;
	position.z = 0;
	if (inputJump) {
		velocity.z = jumpForce;
	}
}

position.Add(velocity);