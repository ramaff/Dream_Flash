/// @description Insert description here
// You can write your code in this editor
alarm[8] = 1;

count += fdir;
//fspd += 1 * fdir * (count / 800)

bulletbounceY -= 6 * fdir * (count / 40);
y += 6 * fdir * (count / 40);

if count >= 40 {
	fdir = -1;
}

if count <= 0 {
	fdir = 1;	
}