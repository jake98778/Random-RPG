/// step runs the whole time

//Basic Move stuff
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


//Collision of wall
if place_meeting(x + xspd, y, Obj_Wall) == true
	{
		xspd = 0;
	}
	
if place_meeting(x, y + yspd, Obj_Wall) == true
	{
		yspd = 0;
	}


//Move speed setting to x and y
x += xspd;
y += yspd;

