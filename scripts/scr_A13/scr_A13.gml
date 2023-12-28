// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_A13(){
	// Location: Boss Next Phase Check (scr_Next_Phase_Check)
	if (global.A[13] > 0)
	{
		with (obj_Soul_Parent)
		{
			if (isSoulAmbitious) // If the soul has taken no damage...
			{
				soulAmbitiousCounter++;
				spowerfactor += 2.5 * global.A[13]; // 25% permanent increase to damage until room transition.
				repeat(4) {
					scr_Particle_Burst(obj_State_Trail_Front, spr_Soul_Big_Bit, c_orange, c_maroon, 1, 3 + random(3), 60 + random(60), 0, 80, 0.2 + random(0.3), 20 + random(20))	
				}
			}
			else // Reset the value for the next phase check if they have taken damage.
			{
				isSoulAmbitious = true;
			}
		}
	}
}