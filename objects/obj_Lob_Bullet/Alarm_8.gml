exit;

alarm[8] = 1 / bulletimagespeed;

bulletbounceY += bulletbouncedirection * 1;
y -= bulletbouncedirection * 1;

if abs(bulletbounceY) < 18 {
    bulletbounceY += bulletbouncedirection * 1;
    y -= bulletbouncedirection * 1;
}

if abs(bulletbounceY) < 30 {
    bulletbounceY += bulletbouncedirection * 1;
    y -= bulletbouncedirection * 1;
}

if abs(bulletbounceY) >= 38 || bulletbounceY <= 0 {
    bulletbouncedirection = bulletbouncedirection * -1;
}

