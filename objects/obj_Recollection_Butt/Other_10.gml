/// @description Insert description here
// You can write your code in this editor
if image_alpha != 0 {
    global.recollectDisplayValue = itemVal;
    instance_destroy(obj_Recollection_Info_Butt);
	
    with instance_create(camera_get_view_x(view) + 720,camera_get_view_y(view) + 320,obj_Recollection_Info_Butt) {
		depth = other.depth;
	
        itemVal = other.itemVal;
        recollectionString = other.recollectionString;
        recollectionSprite = other.recollectionSprite;
        recollectionSize = other.recollectionSize;
        recollectionPower = other.recollectionPower;
        recollectionEssence = other.recollectionEssence;
        recollectionRecharge = other.recollectionRecharge;
        recollectionSpeed = other.recollectionSpeed;
        recollectionLifespan = other.recollectionLifespan;
        recollectionAccuracy = other.recollectionAccuracy;
        recollectionExtraStats = other.recollectionExtraStats;
        recollectionDescription = other.recollectionDescription;
        recollectionCount = other.recollectionCount;
		recollectionPalette = other.recollectionPalette;
		recollectionComplexity = other.recollectionComplexity;
        
		for(u = 0; u < 10; u++) {
			recollectionBSprite[u] = other.recollectionBSprite[u];
			recollectionBString[u] = other.recollectionBString[u];
	        recollectionHealth1[u] = other.recollectionHealth1[u];
	        recollectionHealth2[u] = other.recollectionHealth2[u];
	        recollectionDefense1[u] = other.recollectionDefense1[u];
	        recollectionDefense2[u] = other.recollectionDefense2[u];
	        recollectionDanger[u] = other.recollectionDanger[u];
	        recollectionImaginaryResist[u] = other.recollectionImaginaryResist[u];
	        recollectionSharpResist[u] = other.recollectionSharpResist[u];
	        recollectionExplosiveResist[u] = other.recollectionExplosiveResist[u];
	        recollectionMagicResist[u] = other.recollectionMagicResist[u];
	        recollectionEnergyResist[u] = other.recollectionEnergyResist[u];
			recollectionPaletteIndex[u] = other.recollectionPaletteIndex[u];
		}
		recollectionChamp = other.recollectionChamp;
    }
    
}

