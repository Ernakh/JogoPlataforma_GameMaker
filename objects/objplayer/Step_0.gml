/// @description Insert description here
// You can write your code in this editor

/*
//movimentação para 8 direções
velocity = 3;
    xVel = 0;
    yVel = 0;

    // check keyboard events
    isUp = keyboard_check(vk_up);   
    isDown = keyboard_check(vk_down);
    isRight = keyboard_check(vk_right);
    isLeft = keyboard_check(vk_left);    
    
    // Set x/y velocity based on direction of keys
    if (isUp) yVel = -1;
    if (isDown) yVel = 1;
    if (isRight) xVel = 1;
    if (isLeft) xVel = -1;

    // proposed new position
    newX = x + xVel * velocity;
    newY = y + yVel * velocity;
    // update position if free
    if (place_free(newX, newY)) {
        x = newX;
        y = newY;
    } else if (place_free(newX, y)) {
        x = newX; // update the x, if the y isn't free
    } else if (place_free(x, newY)) {
        y = newY; // update the y, if the x isn't free
    } else {
        // nothing free.
    }
	*/
	
	velocidade = 4;
    isRight = keyboard_check(vk_right);
    isLeft = keyboard_check(vk_left);        
	isJump = keyboard_check_pressed(vk_space);   
	onGround = place_meeting(x, y+1, objChao);

	var movimento = isRight - isLeft;
	
	vertical_speed = vertical_speed + gravity;
	
	//if(place_meeting(x + horizontal_speed, y, objChao))
	//{
	//	horizontal_speed = 0;
	//}
	
	//if(place_meeting(x, y + vertical_speed, objChao))
	//{
	//	vertical_speed = 0;
	//}
	
	
	horizontal_speed = movimento * walkSpeed;
	
	x = x + horizontal_speed;
	
	/*if(onGround)
	{
		//pulo
		if(isJump)
		{
			vertical_speed = -7;
		}
	}*/
	

	
//var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("Q"));
//var jump = keyboard_check_pressed(vk_space);
//var onTheGround = place_meeting(x, y + 1, objChao);

////if (xDirection != 0) image_xscale = xDirection;

//xSpeed = xDirection * spd;
//ySpeed++;

//if (onTheGround) {
//	/*if (xDirection != 0) { sprite_index = sPlayerRun_strip7; } 
//	else { sprite_index = sPlayerIdle_strip4; }*/

//	if (jump) {
//		ySpeed = -15;
//	}
//} else {
//	//sprite_index = sPlayerJump;
//}

//if (place_meeting(x + xSpeed, y, objChao)) { 
	
//	while (!place_meeting(x + sign(xSpeed), y, objChao)) {
//		x += sign(xSpeed);
//	}
	
//	xSpeed = 0; 
//}

//x += xSpeed;


//if (place_meeting(x, y + ySpeed, objChao)) { 
	
//	while (!place_meeting(x, y + sign(ySpeed), objChao)) {
//		y += sign(ySpeed);
//	}
	
//	ySpeed = 0; 
//}

//y += ySpeed;