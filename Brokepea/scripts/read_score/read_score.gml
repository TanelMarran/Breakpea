ini_open("score.ini");
global.highscore = ini_read_real("score", "score", 0);
ini_close();