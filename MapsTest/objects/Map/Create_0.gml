global.MapW = 16;
global.MapH = 16;

global.FloorHeight = -8;
global.MapTileSize = 16;
global.Texture = SprTexmap;

global.MapGridType = ds_grid_create(global.MapW,global.MapH);
/*
0 = Wall, closed space
1 = open space
*/

global.MapGridData = ds_grid_create(global.MapW,global.MapH);
/*
f = floor; adding a floor creates a low for this tile starting at floorheight and ending at number specified
c = ceiling; adds a high to the floor below
*/


global.MapGridTextures = ds_grid_create(global.MapW,global.MapH);




global.MapModel = vertex_create_buffer();
vertex_begin(global.MapModel,global.Format);
vertex_end(global.MapModel);
//Basic Map
ds_grid_set_region(global.MapGridType,0,0,global.MapW,global.MapH,1);
ds_grid_set_region(global.MapGridData,0,0,global.MapW,global.MapH,"f32t1");
ds_grid_set_region(global.MapGridData,1,1,global.MapW-2,global.MapH-2,"f0t1");
ds_grid_set_region(global.MapGridData,4,4,global.MapW-5,global.MapH-5,"f64t1");
ds_grid_set_region(global.MapGridData,5,5,global.MapW-6,global.MapH-6,"f0t1c56t1t0f64");
ds_grid_set_region(global.MapGridTextures,0,0,global.MapW,global.MapH,"f0t1c0t1t0");
