var face = 0
var Zface = 0
	
if(1)//mouse_check_button(mb_middle))
{
	face = (display_mouse_get_x() - (display_get_width()/2))/2; //the *2 ads sensitivity
	Zface = -(display_mouse_get_y() - (display_get_height()/2))/2;


	//now that we have the mouse movement, we set the mouse back to the center of the screen
	display_mouse_set(display_get_width()/2,display_get_height()/2);

}

//add them to the camera look vars
MHor += face;
MVer -= Zface;

//limit them so the camera wont look all the way backwards
MVer = clamp(MVer,-89,89);

while(MHor>360)MHor -= 360;
while(MHor<0)MHor += 360;

//now we make a vector from our camera vars
global.LookX = cos(degtorad(MHor));
global.LookY = sin(degtorad(MHor));
global.LookZ = tan(degtorad(MVer));

//and we normalise this vector
var m = sqrt((global.LookX*global.LookX) + (global.LookY*global.LookY) + (global.LookZ*global.LookZ));
global.LookX /= m;
global.LookY /= m;
global.LookZ /= m;


global.LookAt = matrix_build_lookat(global.CameraX,global.CameraY,global.CameraZ,
									global.CameraX+global.LookX,global.CameraY+global.LookY,
									global.CameraZ+global.LookZ,0,0,1);
									
									
									

if(keyboard_check(ord("W")))
{
	global.CameraX+=global.LookX*(1+keyboard_check(vk_shift));
	global.CameraY+=global.LookY*(1+keyboard_check(vk_shift));
	global.CameraZ+=global.LookZ*(1+keyboard_check(vk_shift));
}
if(keyboard_check(ord("S")))
{
	global.CameraX-=global.LookX*(1+keyboard_check(vk_shift));
	global.CameraY-=global.LookY*(1+keyboard_check(vk_shift));
	global.CameraZ-=global.LookZ*(1+keyboard_check(vk_shift));
}
if(keyboard_check(ord("D")))
{
	global.CameraX+=lengthdir_x(1+keyboard_check(vk_shift),-MHor-90)
	global.CameraY+=lengthdir_y(1+keyboard_check(vk_shift),-MHor-90)
}
if(keyboard_check(ord("A")))
{
	global.CameraX+=lengthdir_x(1+keyboard_check(vk_shift),-MHor+90)
	global.CameraY+=lengthdir_y(1+keyboard_check(vk_shift),-MHor+90)
}

