//3d camera
global.Fov = 100

gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_cullmode(cull_counterclockwise);


view_enabled = true;
view_set_visible(0, true);

Cam = camera_create();

ProjMat = matrix_build_projection_perspective_fov(global.Fov,view_get_wport(0)/view_get_hport(0),1,32000);

camera_set_proj_mat(Cam, ProjMat);

view_set_camera(0, Cam);

camera_set_update_script(view_camera[0], CameraUpdateScript);


display_set_gui_size(view_wport[0]/2,view_hport[0]/2)


SkyZoneAng = 0;

z = 0;
global.LookX = 0;
global.LookY = 0;
global.LookZ = 0;
global.CameraX = x;
global.CameraY = y;
global.CameraZ = z;

global.HitX = 0
global.HitY = 0
global.HitZ = 0
global.HitNormalX = 0;
global.HitNormalY = 0;
global.HitNormalZ = 0;
global.Hit = false


global.LookAt = 0;
MHor = 0;
MVer = 0;
Spd = 1;

