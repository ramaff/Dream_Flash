function scr_Shop_Item_Spawn() {
	totalItems = 7;
	currItem = 1;

	fieldType = argument[0];
	item[1] = argument[1];
	item[2] = argument[2];
	item[3] = argument[3];
	item[4] = argument[4];
	item[5] = argument[5];
	item[6] = argument[6];
	item[7] = argument[7];
	item[8] = argument[8];
	item[9] = argument[9];
	item[10] = argument[10];

	for(i = 1; i <= 10; i++) {	
		isweap[i] = 1;
	}

	for(i = 1; i <= 10; i++) {
	    if string_digits(item[i]) = item[i] {
	        item[i] = real(item[i]);
			weapBought[i] = frac(item[i]);
			isweap[i] = 1;
		} else if(string_length(string_digits(string_replace(item[i], ".", ""))) == (string_length(item[i]) - string_count(".", item[i]))) {
			item[i] = real(item[i]);
			weapBought[i] = frac(item[i]);
			isweap[i] = 1;
		} else {
			isweap[i] = 0;	
		}
	}
	
	var baseCost = 20 + (global.currentchapter * 10);

	repeat(1)
	{       
	    if item[currItem] != 0 and item[currItem] != "0" {
	        with instance_create(1024 + 50,576,obj_Item_Parent) {
	            path_start(Shop_Path,0.25,path_action_continue,1)
	            path_position = other.currItem / other.totalItems;
	            itemOrbit = 999;
	            itemVal = other.item[other.currItem];
	            if string_digits(itemVal) = itemVal {
	                itemVal = real(itemVal);
	            }
	            itemData = 7 + other.currItem - 1;
	            shop = 1;
	            flashcost = baseCost;
				
				scr_Initial_Item_Memory_Get()
	        }
	    }
	    currItem++;
	}

/*
	if item[currItem] != 0 and item[currItem] != "0" {
	    with instance_create(1024 + 50,576,obj_Item_Parent) {
	        path_start(Shop_Path,0.25,path_action_continue,1)
	        path_position = other.currItem / other.totalItems;
	        itemOrbit = 999;
	        itemVal = other.item[other.currItem];
	        if string_digits(itemVal) = itemVal {
	            itemVal = real(itemVal);
	        }
	        itemData = 7 + other.currItem - 1;
	        shop = 1;
	        flashcost = baseCost;
	    }
	}
    
	    currItem++;
		*/
	//}

	repeat(1)
	{
	    if item[currItem] != 0 and item[currItem] != "0" {
	        with instance_create(1024 + 50,576, obj_Item_Parent) {
	            path_start(Shop_Path,0.25,path_action_continue,1)        
	            path_position = other.currItem / other.totalItems;
	            itemOrbit = 999;
	            itemVal = other.item[other.currItem];
	            if string_digits(itemVal) = itemVal {
	                itemVal = real(itemVal);
	            }
	            itemData = 7 + other.currItem - 1;
	            shop = 1;
				
	            flashcost = ceil((baseCost * 0.9 - 5) / 5) * 5;
	            if itemVal = "H01" {
	                flashcost = ceil((baseCost * 0.8 - 10) / 5) * 5;
	            }
				
				scr_Initial_Item_Memory_Get()
	        }
	    }
        
	        currItem++;
	    //}

	}
    
	repeat(2) {
	    if item[currItem] != 0 and item[currItem] != "0" {
			if !(is_string(item[currItem])) {
	        if frac(item[currItem]) = 0 {
	            with instance_create(1024,576, obj_Item_Parent) {
	                path_start(Shop_Path,0.25,path_action_continue,1);
	                path_position = other.currItem / other.totalItems;
	                itemOrbit = 999;
	                weapon = 1;
	                itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
	                if string_digits(itemVal) = itemVal {
	                    itemVal = real(itemVal);
	                }
	                itemData = 7 + other.currItem - 1;
	                shop = 1;
	                flashcost = ceil((baseCost * 0.9 + 5) / 5) * 5;
					
					scr_Initial_Item_Memory_Get()
	            }
	        } else {
	            with instance_create(1024,576, obj_Item_Parent) {
	                path_start(Shop_Path,0.25,path_action_continue,1);
	                path_position = other.currItem / other.totalItems;
	                itemOrbit = 999;
	                weapon = 1;
	                itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
	                if string_digits(itemVal) = itemVal {
	                    itemVal = real(itemVal);
	                }
	                itemData = 7 + other.currItem - 1;
	                shop = 0;
	                flashcost = 0;
					
					scr_Initial_Item_Memory_Get()
	            }
	        }
			}
	    }
	        currItem++;
	    //}
	}

	repeat(3) {
		if currItem < (totalItems + 1) {
		    if item[currItem] != 0 and item[currItem] != "0" {
				if !(is_string(item[currItem])) {
		        if frac(item[currItem]) = 0 {
			        with instance_create(1024 + 50,576, obj_Item_Parent) {
			            path_start(Shop_Path,0.25,path_action_continue,1);
		                path_position = other.currItem / other.totalItems;
		                itemOrbit = 999;
		                weapon = 1;
		                itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
		                if string_digits(itemVal) = itemVal {
		                    itemVal = real(itemVal);
		                }
		                itemData = 7 + other.currItem - 1;
		                shop = 1;
		                flashcost = ceil((baseCost * 0.9 + 5) / 5) * 5;
						
						scr_Initial_Item_Memory_Get()
			        }
			    } else {
		            with instance_create(1024,576, obj_Item_Parent) {
		                path_start(Shop_Path,0.25,path_action_continue,1);
		                path_position = other.currItem / other.totalItems;
		                itemOrbit = 999;
		                weapon = 1;
		                itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
		                if string_digits(itemVal) = itemVal {
		                    itemVal = real(itemVal);
		                }
		                itemData = 7 + other.currItem - 1;
		                shop = 0;
		                flashcost = 0;
						
						scr_Initial_Item_Memory_Get()
		            }
		        }
				} else {
					with instance_create(1024 + 50,576, obj_Item_Parent) {
			            path_start(Shop_Path,0.25,path_action_continue,1)        
			            path_position = other.currItem / other.totalItems;
			            itemOrbit = 999;
			            itemVal = other.item[other.currItem];
			            if string_digits(itemVal) = itemVal {
			                itemVal = real(itemVal);
			            }
			            itemData = 7 + other.currItem - 1;
			            shop = 1;
			            flashcost = ceil((baseCost * 1.1 + 5) / 5) * 5;
						
						scr_Initial_Item_Memory_Get()
			        }
				}
			}
		        currItem++;
		    //}
		}
	}
	
	/*

	if global.currentchapter >= 2 {
		if isweap[currItem] = 0 {
		    if item[currItem] != 0 and item[currItem] != "0" {
		        with instance_create(1024 + 50,576, obj_Item_Parent) {
		            path_start(Shop_Path,0.25,path_action_continue,1)        
		            path_position = other.currItem / other.totalItems;
		            itemOrbit = 999;
		            itemVal = other.item[other.currItem];
					shop = 1;
		            flashcost = 25;
					if string_digits(itemVal) = itemVal {
						itemVal = real(itemVal);
					}
		            if (is_real(itemVal)) {
						weapon = 1
						flashcost = 0; 
			            shop = 0;
						itemVal = floor(itemVal);
		            }
					if itemVal = "H01" {
						flashcost = 15;	
					}
		            itemData = 7 + other.currItem - 1;
		        }
			}
		} else {
			if item[currItem] != 0 and item[currItem] != "0" {
				if frac(item[currItem]) = 0 {
			        with instance_create(1024 + 50,576, obj_Item_Parent) {
			            path_start(Shop_Path,0.25,path_action_continue,1)        
			            path_position = other.currItem / other.totalItems;
			            itemOrbit = 999;
			            itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
		                if string_digits(itemVal) = itemVal {
		                    itemVal = real(itemVal);
		                }
						if itemVal = "H01" {
							flashcost = 15;	
						}
						itemVal = floor(itemVal);
		                itemData = 7 + other.currItem - 1;
		                shop = 1;
						weapon = 1
			            shop = 1;
			            flashcost = 30;
			        }
				}
				else {
					with instance_create(1024 + 50,576, obj_Item_Parent) {
			            path_start(Shop_Path,0.25,path_action_continue,1)        
			            path_position = other.currItem / other.totalItems;
			            itemOrbit = 999;
			            weapon = 1;
			            itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
		                if string_digits(itemVal) = itemVal {
		                    itemVal = real(itemVal);
		                }
						itemVal = floor(itemVal);
			            itemData = 7 + other.currItem - 1;
			            flashcost = 0; 
			            shop = 0;
			        }	
				}
			}
		}
	    currItem++;
	}

	if global.currentchapter >= 3 {
		if isweap[currItem] = 0 {
		    if item[currItem] != 0 and item[currItem] != "0" {
		        with instance_create(1024 + 50,576, obj_Item_Parent) {
		            path_start(Shop_Path,0.25,path_action_continue,1)        
		            path_position = other.currItem / other.totalItems;
		            itemOrbit = 999;
		            itemVal = other.item[other.currItem];
					shop = 1;
		            feelcost = 25;
		            if string_digits(itemVal) = itemVal {
		                itemVal = real(itemVal);
		            }
		            if (is_real(itemVal)) {
		                weapon = 1;
						shop = 0;
						feelcost = 0;
						itemVal = floor(itemVal);
		                //itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
		            }
					if itemVal = "H01" {
						flashcost = 15;	
					}
				
		            itemData = 7 + other.currItem - 1;
		        }
			}
		} else {
			if item[currItem] != 0 and item[currItem] != "0" {
				if frac(item[currItem]) = 0 {
			        with instance_create(1024 + 50,576, obj_Item_Parent) {
			            path_start(Shop_Path,0.25,path_action_continue,1)        
			            path_position = other.currItem / other.totalItems;
			            itemOrbit = 999;
			            itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
			            if string_digits(itemVal) = itemVal {
			                itemVal = real(itemVal);
			            }
						itemVal = floor(itemVal);
						weapon = 1;
			            itemData = 7 + other.currItem - 1;
			            shop = 1;
			            feelcost = 30;
						if itemVal = "H01" {
							flashcost = 15;	
						}
			        }
				} else {
					with instance_create(1024 + 50,576, obj_Item_Parent) {
			            path_start(Shop_Path,0.25,path_action_continue,1)        
			            path_position = other.currItem / other.totalItems;
			            itemOrbit = 999;
			            weapon = 1;
			            itemVal = other.item[other.currItem] - frac(other.item[other.currItem]);
		                if string_digits(itemVal) = itemVal {
		                    itemVal = real(itemVal);
		                }
						itemVal = floor(itemVal);
			            itemData = 7 + other.currItem - 1;
			            flashcost = 0; 
			            shop = 0;
					
		            
			        }
				}
			}
		}
	    currItem++;
	}
	
	*/



}
