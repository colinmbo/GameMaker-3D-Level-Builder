#region Clear Screen
draw_clear(c_black);
#endregion

#region Camera Setup
var currentCam = camera_get_active();
camera_set_view_mat(currentCam, 
					matrix_build_lookat(correctX(camPos.x),				correctY(camPos.y),				correctZ(camPos.z),
										correctX(camPos.x)+camLook.x,	correctY(camPos.y)+camLook.y,	correctZ(camPos.z)+camLook.z,
										0,								0,								1));
if (perspective) { camera_set_proj_mat(currentCam, matrix_build_projection_perspective_fov(30, RESX/RESY, 10, 10000)); }
else { camera_set_proj_mat(currentCam, matrix_build_projection_ortho(RESX, RESY, 10, 10000)); }
camera_apply(currentCam);
#endregion

//Loop through the buffer array and submit
for(var i = 0; i < array_length(obj_builder.bufferArray); i++) {
	vertex_submit(obj_builder.bufferArray[i][0], pr_trianglelist, obj_builder.bufferArray[i][1]);
}
