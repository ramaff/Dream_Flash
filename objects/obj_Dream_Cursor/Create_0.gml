/// @description Insert description here
// You can write your code in this editor
if instance_number(obj_Dream_Cursor) > 1 {
	instance_destroy()	
}

stop_following_mouse = 0
controller_movement = 0;

if InputDeviceGetAnyGamepadConnected() {
	stop_following_mouse = 1;	
}

movement_delay = 0;
target_button = noone;

function InputDeviceGetAnyActive()
{
    static _gamepadArray = __InputSystem().__gamepadArray;
    
    if (INPUT_BAN_GAMEPADS) return false;
    
    var _i = 0;
    repeat(array_length(_gamepadArray))
    {
        if (InputDeviceIsActive(_i)) return true;
        ++_i;
    }
    
    return false;
}

menu_grid = [];
xx = 0;
yy = 0;
max_x = 0;
max_y = 0;
