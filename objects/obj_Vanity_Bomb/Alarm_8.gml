/// @description Insert description here
// You can write your code in this editor
alarm[8] = 1 / bulletimagespeed;

bulletbounceY += bulletbouncedirection * 1;
y -= bulletbouncedirection * 2;

if abs(bulletbounceY) < 18 {
    bulletbounceY += bulletbouncedirection * 1;
    y -= bulletbouncedirection * 2;
}

if abs(bulletbounceY) < 30 {
    bulletbounceY += bulletbouncedirection * 1;
    y -= bulletbouncedirection * 2;
}

if abs(bulletbounceY) >= 38 || bulletbounceY <= 0 {
    bulletbouncedirection = bulletbouncedirection * -1;
}

