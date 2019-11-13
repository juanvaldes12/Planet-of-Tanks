
// Process tank movement

var a = keyboard_check(ord("A"));
var d = keyboard_check(ord("D"));
var w = keyboard_check(ord("W"));
var s = keyboard_check(ord("S"));

if (w) 
{
 speed += acc;
}

if (d)
{
 direction -= speed*turnradius;
}

if (s) 
{
 speed -= acc;
}

if (a)
{
 direction += speed*turnradius;
}

//braking
if !w and !s
{
 if friction < 1 friction += 0.001;
}
else friction = 0;

//set max speed forward and reverse
if speed > forwardspd speed = forwardspd;
if speed < reversespd speed = reversespd;

//process forward collisions. I cannot figure out how to make it stop
//when it collides in reverse.
if(place_meeting(x+forwardspd, y, obj_wall)){
	while(!place_meeting(x+sign(forwardspd), y, obj_wall)){
		x += sign(forwardspd);
	}
	forwardspd = 0;
}
else forwardspd = 3;


image_angle = direction;