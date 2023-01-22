// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Item_Pool_Names(pool){
	
	var pool_name = " Item Pool"
	switch(pool) {
	
		case "A":
			pool_name = "Strength" + pool_name;
			break;
		case "B":
			pool_name = "Vitality" + pool_name;
			break;
		case "C":
			pool_name = "Essence" + pool_name;
			break;
		case "D":
			pool_name = "Dexterity" + pool_name;
			break;
		case "E":
			pool_name = "Perception" + pool_name;
			break;
		case "F":
			pool_name = "State" + pool_name;
			break;
		case "G":
			pool_name = "Gem" + pool_name;
			break;
		case "H":
			pool_name = "Heart" + pool_name;
			break;
		case "I":
			pool_name = "Emotion" + pool_name;
			break;
		case "J":
			pool_name = "Food" + pool_name;
			break;
		case "K":
			pool_name = "Tangible" + pool_name;
			break;
		case "L":
			pool_name = "Intangible" + pool_name;
			break;
		case "M":
			pool_name = "Minion" + pool_name;
			break;
		case "N":
			pool_name = "Behavior" + pool_name;
			break;
		case "OA":
			pool_name = "Hope" + pool_name;
			break;
		case "OB":
			pool_name = "Bliss" + pool_name;
			break;
		case "OC":
			pool_name = "Assurance" + pool_name;
			break;
		case "P":
			pool_name = "Personality" + pool_name;
			break;
		case "Q":
			pool_name = "Question" + pool_name;
			break;
		case "R":
			pool_name = "Recollection" + pool_name;
			break;
		case "S":
			pool_name = "Defense Mechanisms" + pool_name;
			break;
		case "T":
			pool_name = "Coping Mechanisms" + pool_name;
			break;
		case "U":
			pool_name = "Mental Phenomena" + pool_name;
			break;
		case "V":
			pool_name = "Mindstate" + pool_name;
			break;
		case "W":
			pool_name = "Warp" + pool_name
			break;
		case "XA":
			pool_name = "Loathing" + pool_name;
			break;
		case "XB":
			pool_name = "Paranoia" + pool_name;
			break;
		case "XC":
			pool_name = "Despair" + pool_name;
			break;
		
	}
	
	return pool_name;

}