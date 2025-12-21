function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
        UP,
        DOWN,
        LEFT,
        RIGHT,
        ACCEPT,
        CANCEL,
        ACTION,
        SPECIAL,
        PAUSE,
		SHOOT,
		WARP,
		W_LEFT,
		W_RIGHT,
		AS_UP,
        AS_DOWN,
        AS_LEFT,
        AS_RIGHT,
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
    }
    
    if (not INPUT_ON_SWITCH)
    {
        InputDefineVerb(INPUT_VERB.UP,      "up",         [vk_up,    "W"],    [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,    "down",       [vk_down,  "S"],    [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,    "left",       [vk_left,  "A"],    [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,   "right",      [vk_right, "D"],    [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.ACCEPT,  "accept",      vk_space,            gp_face1);
        InputDefineVerb(INPUT_VERB.CANCEL,  "cancel",      vk_backspace,        gp_face2);
        InputDefineVerb(INPUT_VERB.ACTION,  "action",      vk_enter,            gp_face3);
        InputDefineVerb(INPUT_VERB.SPECIAL, "special",     vk_shift,            gp_face4);
        InputDefineVerb(INPUT_VERB.PAUSE,   "pause",      [vk_escape, "P"],     gp_start);
        InputDefineVerb(INPUT_VERB.SHOOT,   "shoot",       undefined,           gp_shoulderl);
        InputDefineVerb(INPUT_VERB.WARP,    "warp",       undefined,            gp_shoulderr);
		InputDefineVerb(INPUT_VERB.W_LEFT,  "w_left",       undefined,          gp_shoulderlb);
        InputDefineVerb(INPUT_VERB.W_RIGHT, "w_right",       undefined,         gp_shoulderrb);
		InputDefineVerb(INPUT_VERB.AS_UP,      "up",         undefined,    -gp_axisrv);
        InputDefineVerb(INPUT_VERB.AS_DOWN,    "down",       undefined,    gp_axisrv);
        InputDefineVerb(INPUT_VERB.AS_LEFT,    "left",       undefined,    -gp_axisrh);
        InputDefineVerb(INPUT_VERB.AS_RIGHT,   "right",      undefined,    gp_axisrh);
    }
    else //Flip A/B over on Switch
    {
        InputDefineVerb(INPUT_VERB.UP,      "up",      undefined, [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,    "down",    undefined, [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,    "left",    undefined, [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,   "right",   undefined, [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.ACCEPT,  "accept",  undefined,   gp_face2); // !!
        InputDefineVerb(INPUT_VERB.CANCEL,  "cancel",  undefined,   gp_face1); // !!
        InputDefineVerb(INPUT_VERB.ACTION,  "action",  undefined,   gp_face3);
        InputDefineVerb(INPUT_VERB.SPECIAL, "special", undefined,   gp_face4);
        InputDefineVerb(INPUT_VERB.PAUSE,   "pause",   undefined,   gp_start);
    }
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, INPUT_VERB.UP, INPUT_VERB.RIGHT, INPUT_VERB.DOWN, INPUT_VERB.LEFT);
}
