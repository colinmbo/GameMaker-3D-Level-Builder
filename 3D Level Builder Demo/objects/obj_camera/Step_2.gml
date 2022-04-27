if (instance_exists(obj_player)) {
	camPos.x = obj_player.position.x;
	camPos.y = obj_player.position.y + 500*YRATIO;
	camPos.z = 0 - 500*ZRATIO;
}