//Particles
partElementalSys = part_system_create();
part_system_depth(partElementalSys, Depth.Particle);

partElementalFire = part_type_create();
part_type_shape(partElementalFire,pt_shape_pixel);
part_type_scale(partElementalFire,2,2);
part_type_size(partElementalFire,1.5,2.5,-0.005,0);
part_type_color3(partElementalFire,c_yellow,c_orange,c_red);
part_type_alpha2(partElementalFire,0.8,0.5);
part_type_speed(partElementalFire,0.1,0.5,0,0);
part_type_direction(partElementalFire,0,359,0,0);
part_type_gravity(partElementalFire,0.02,90);
part_type_life(partElementalFire,20,80);
part_type_blend(partElementalFire,1);

partElementalFrost = part_type_create();
part_type_shape(partElementalFrost,pt_shape_snow);
part_type_scale(partElementalFrost,0.3,0.3);
part_type_size(partElementalFrost,0.3,0.6,-0.005,0);
part_type_color3(partElementalFrost,c_blue,c_aqua,c_white);
part_type_alpha2(partElementalFrost,0.8,0.5);
part_type_speed(partElementalFrost,0.1,0.5,0,0);
part_type_direction(partElementalFrost,0,359,0,0);
part_type_gravity(partElementalFrost,0.02,90);
part_type_life(partElementalFrost,20,80);
part_type_blend(partElementalFrost,1);