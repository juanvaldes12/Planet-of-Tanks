

// Process tank movement

var a = keyboard_check(ord("J"));
var d = keyboard_check(ord("L"));
var w = keyboard_check(ord("I"));
var s = keyboard_check(ord("K"));

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


image_angle = direction;