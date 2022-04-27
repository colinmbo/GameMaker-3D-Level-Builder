shader_set(sdr_vertSprite);
shader_set_uniform_f(u_spritePos, correctX(position.x),correctY(position.y),correctZ(position.z));
draw_sprite(sprite_index, image_index, 0,0);
shader_reset();