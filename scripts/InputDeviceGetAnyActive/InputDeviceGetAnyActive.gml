// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InputDeviceGetAnyActive() {
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