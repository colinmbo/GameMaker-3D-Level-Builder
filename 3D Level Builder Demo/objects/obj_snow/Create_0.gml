snowSystem = part_system_create();

snowType = part_type_create();
part_type_sprite(snowType,spr_snow,false,false,false);
part_type_size(snowType, 0.025, 0.2, 0, 0);
part_type_scale(snowType, 1, 1);
part_type_color1(snowType, c_white);
part_type_speed(snowType, 0.2, 1.5, 0, 0);
part_type_direction(snowType, 240, 315, 0.2, 20);
part_type_life(snowType, 15, 180);

part_system_automatic_draw(snowSystem, false);

snowEmitter = part_emitter_create(snowSystem);
part_emitter_region(snowSystem, snowEmitter, -100, RESX+100, -100, RESY+100, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(snowSystem, snowEmitter, snowType, 5);

snowSurf = surface_create(RESX,RESY);