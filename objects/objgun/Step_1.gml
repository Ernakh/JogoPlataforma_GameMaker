/// @description Insert description here
// You can write your code in this editor


x = objPlayer.x + 50;
y = objPlayer.y - 50;

disparoDelay -= 1;
image_angle = point_direction(x,y,mouse_x, mouse_y);

if(mouse_check_button(mb_left) && disparoDelay < 0)
{
	disparoDelay = 5;
	
	with(instance_create_layer(x,y, "Instances", objBullet))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}