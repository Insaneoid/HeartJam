ini_open("Scores.ini");
for (i = 0; i < 10; i++)
{
	global.score_array[i, 0] = "Empty";
	global.score_array[i, 1] = 0;
}
global.points = 0;
global.gameDone = false;
room_goto_next();