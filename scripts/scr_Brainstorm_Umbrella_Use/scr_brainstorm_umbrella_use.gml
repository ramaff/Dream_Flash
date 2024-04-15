function scr_Brainstorm_Umbrella_Use() {
	scr_Default_Weapon_Stats();

	Shot_Spread += 0;
	Shot_Accuracy += 1;
	Shot_Count += 0;

	Shot_Sprite = spr_Brainstorm_Umbrella;
	Shot_Type = obj_Umbrella_Shot;
	Weapon_Melee = 1;
	Weapon_Mouse_Maintain = 1;
	Weapon_Soul_Maintain = 1;

	Shot_Speed = 1;
	Shot_Power = 10;
	Shot_Knock_Back = 0;
	Shot_Life_Span = 51;

	Shot_Rebound_Type = 1;
	Shot_Rebound_Power = 10;

	Shot_Pierce += 14;
	Shot_Phasing = 1;
	
	Shot_Form_Show = 0;
	
	Shot_Size = 0.5;
	Shot_Mouse = 0;
	
	Shot_Direction = point_direction(x,y,mouse_x,mouse_y);
	
	Shot_Image_Direction = Shot_Direction;

	scr_Shot_Creation();



}
