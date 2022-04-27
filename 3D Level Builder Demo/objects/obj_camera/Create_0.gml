#region Window
var scalar = 3;
surface_resize(application_surface, RESX, RESY);
window_set_size(RESX*scalar, RESY*scalar);
window_center();
#endregion

#region Camera Properties
camPos = new Vector3(0, YRATIO*500, -ZRATIO*500);
camLook = new Vector3(0, -YRATIO, ZRATIO);
perspective = false;
#endregion

#region GPU Settings
gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);
gpu_set_alphatestenable(true);
//gpu_set_fog(true, c_white, 400,600);
#endregion
