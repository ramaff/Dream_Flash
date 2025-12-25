/// @description Insert description here
// You can write your code in this editor
percent = clamp(percent, 0, 100)

if type = 1 and category = 3 {
    global.gameSound = percent;
}
if type = 2 and category = 3 {
    global.gameMusic = percent;
}
if type = 4 and category = 1 {
    global.gameScreenShake = percent / 100;
}
if type = 13 and category = 4 {
    global.gameBloomShader = percent / 100;
}
if type = 15 and category = 4 {
    global.gameParticles = percent / 100;
}