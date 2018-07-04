///d3d_model_wall(Model,x,y,z,x2,y1,z2,xtex,ytex,xtex2,ytex2)
///@param Mod
///@param x
///@param y
///@param z
///@param x2
///@param y2
///@param z2
///@param xtex
///@param ytex
///@param xtex2
///@param ytex2


var x1,y1,x2,y2,z1,z2,xtex,ytex,xtex2,ytex2;
x1 = argument1
y1 = argument2
z1 = argument3
x2 = argument4
y2 = argument5
z2 = argument6
b = 1

xtex = argument7
ytex = argument8
xtex2 = argument9
ytex2 = argument10

var Nx = lengthdir_x(1,point_direction(x1,y1,x2,y2)+90)
var Ny = lengthdir_y(1,point_direction(x1,y1,x2,y2)+90)


    model_vertex_normal_texture(argument0,x1,y1,z1,Nx,Ny,0,xtex,ytex)
    model_vertex_normal_texture(argument0,x2,y2,z1,Nx,Ny,0,xtex2,ytex)
    model_vertex_normal_texture(argument0,x2,y2,z2,Nx,Ny,0,xtex2,ytex2)
    
    
    model_vertex_normal_texture(argument0,x1,y1,z2,Nx,Ny,0,xtex,ytex2)
    model_vertex_normal_texture(argument0,x1,y1,z1,Nx,Ny,0,xtex,ytex)
    model_vertex_normal_texture(argument0,x2,y2,z2,Nx,Ny,0,xtex2,ytex2)
