/*Created by SlasherX
As seen on SlasherXGAMES
https://www.youtube.com/user/SlasherXGAMES
*/
if (global.gameDone == false)
{
	instance_create_depth(x,y,0,objDrawScores);
	instance_destroy();
}

max_width=490 //maximum width
selected=true //is the player typing here?
blink=false //show "|"?
txt="" //what does it contain?
alarm[0]=30 //start the blinking animation
can_click = true;