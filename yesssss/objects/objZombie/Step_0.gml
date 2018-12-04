//x += sign(objPlayer.x - x) * spd;
//y += sign(objPlayer.y - y) * spd;

var tx, ty;
tx = objPlayer.x; ty = objPlayer.y;
mp_potential_step(tx,ty,spd,false);

//collisions
//making enemies not visible behind walls
if collision_line(x,y,objPlayer.x,objPlayer.y,objWall,1,0)
{
	visible = false;
}
else
{
	visible = true;
}
// killing player
if (place_meeting(x,y,objPlayer))
{
	game_restart();
}