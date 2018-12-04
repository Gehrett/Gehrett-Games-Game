depth = 0.1;
/// Movement
spd = 6;
var mright = keyboard_check(ord("D")); var mleft = keyboard_check(ord("A"));
var mdown = keyboard_check(ord("S")); var mup = keyboard_check(ord("W"));

var xadd = mright - mleft;
var yadd = mdown - mup;
/// x collision
if (place_meeting(x + (xadd * spd), y, objWall))
{
	while(! place_meeting(x + sign(xadd * spd), y, objWall))
	{
		x += sign(xadd);
	}
}
else
{
	x += xadd * spd;
}

/// y collision
if (place_meeting(x, y + (yadd * spd), objWall))
{
	while(! place_meeting(x, y + (yadd * spd), objWall))
	{
		y += sign(yadd);
	}
}
else
{
	y += yadd * spd;
}
