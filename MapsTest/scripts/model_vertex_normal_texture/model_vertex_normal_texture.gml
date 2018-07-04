///model_vertex_normal_texture(Model,x,y,z,nx,ny,nz,xtex,ytex)
///@param Model
///@param x
///@param y
///@param z
///@param nx
///@param ny
///@param nz
///@param xtex
///@param ytex

vertex_position_3d(argument0,argument1,argument2,argument3);
vertex_color(argument0,draw_get_color(),draw_get_alpha());
vertex_normal(argument0,argument4,argument5,argument6);
vertex_texcoord(argument0,argument7,argument8);

