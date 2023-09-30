// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Get_Item_Pools(_letter = false){
	if _letter {
		return ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "OA", "OB", "OC", "P", "R", "S", "T", "U", "V", "W", "XA", "XB", "XC"]
	} else {
		return [global.AItemPool, global.BItemPool, global.CItemPool, global.DItemPool, global.EItemPool, global.FItemPool, global.GItemPool, global.HItemPool, global.IItemPool, global.JItemPool, global.KItemPool, global.LItemPool, global.MItemPool, global.NItemPool, global.OAItemPool, global.OBItemPool, global.OCItemPool, global.PItemPool, global.RItemPool, global.SItemPool, global.TItemPool, global.UItemPool, global.VItemPool, global.WItemPool, global.XAItemPool, global.XBItemPool, global.XCItemPool];
	}
}