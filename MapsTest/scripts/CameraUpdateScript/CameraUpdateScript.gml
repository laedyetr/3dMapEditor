//var zz = -32;
//var xx = lengthdir_x(128,-current_time/100) + (room_width*0.5);//Rotation is negative now to match with the old gif and spin clockwise
//var yy = lengthdir_y(128,-current_time/100) + (room_height*0.5);
//LookAt = 1(x,y,z,x+LookX,y+LookY,z+LookZ,0,0,-1);
//LookAt = matrix_build_lookat(xx,yy,zz,xx+global.LookX,yy+global.LookY,zz+global.LookZ,0,0,-1);


camera_set_view_mat(view_camera[0], global.LookAt);