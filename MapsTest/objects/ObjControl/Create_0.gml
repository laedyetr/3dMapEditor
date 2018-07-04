vertex_format_begin();
vertex_format_add_position_3d();//Add 3D position info
vertex_format_add_color();
vertex_format_add_normal();
vertex_format_add_textcoord();//Texture coordinate info
global.Format = vertex_format_end();


game_set_speed(60,gamespeed_fps)



gpu_set_alphatestenable(true);
gpu_set_alphatestref(1);


global.Freeze = false;



randomize()