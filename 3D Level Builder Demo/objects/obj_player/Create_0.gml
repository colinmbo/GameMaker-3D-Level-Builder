position = new Vector3(0,0,0);
velocity = new Vector3(0,0,0);

runSpeed = 1;
sprintSpeed = 2;
gravForce = 0.2;
jumpForce = -5;

//Shader
u_spritePos = shader_get_uniform(sdr_vertSprite, "spritePos");