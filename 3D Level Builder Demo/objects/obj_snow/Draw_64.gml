part_system_position(snowSurf,-obj_camera.camPos.x,-obj_camera.camPos.y);
//part_emitter_region(snowSystem, snowEmitter, -RESX+obj_camera.camPos.x, RESX*2+obj_camera.camPos.x, -RESY/2+obj_camera.camPos.y, RESY/2+obj_camera.camPos.y, ps_shape_rectangle, ps_distr_linear);
part_emitter_region(snowSystem, snowEmitter, -RESX+obj_camera.camPos.x, RESX*2+obj_camera.camPos.x, -RESY+obj_camera.camPos.y, RESY*2+obj_camera.camPos.y, ps_shape_rectangle, ps_distr_linear);


if (surface_exists(snowSurf)) {
	surface_set_target(snowSurf);
	draw_clear_alpha(c_white,0);
	part_system_drawit(snowSystem);
	surface_reset_target();
} else {
	snowSurf = surface_create(RESX,RESY);
}

draw_surface(snowSurf,0,0);