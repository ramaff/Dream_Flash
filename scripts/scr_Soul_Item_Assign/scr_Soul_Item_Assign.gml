function scr_Soul_Item_Assign() {
	
	/*
	var letterArray = ["A","M"];
	var j = 0;
	
	for(var i = 0; i < array_length(letterArray); i++) {
		if letterArray[i] = "A" {
			for(j = 1; j <= 29; j++) {
				if global.A[i] > 0 {
					numOfButts++;
					soulItemCount[numOfButts] = global.A[i];
				}
			}
		}
		if letterArray[i] = "M" {
			for(var j = 1; j <= 29; j++) {
				if global.M[i] > 0 {
					numOfButts++;
					soulItemCount[numOfButts] = global.M[i];
				}
			}
		}
		
		for(var j = 1; j <= numOfButts; j++) {
			if soulItemCount[numOfButts] > 0 {
			    if j < 10 {
			        soulItems[numOfButts] = letterArray[i] + "0" + string(j);
			    } else {
			        soulItems[numOfButts] = letterArray[i] + string(j)
			    }
			}
		}
	}
	*/
	
	for(i = 1; i <= 99; i++) {
		if global.A[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "A" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "A" + string(i)
	        }
			soulItemCount[numOfButts] = global.A[i] - 1;
		}
	}
	for(i = 1; i <= 99; i++) {
	    if global.B[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "B" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "B" + string(i)
	        }
			soulItemCount[numOfButts] = global.B[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.C[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "C" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "C" + string(i)
	        }
			soulItemCount[numOfButts] = global.C[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.D[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "D" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "D" + string(i)
	        }
			soulItemCount[numOfButts] = global.D[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.E[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "E" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "E" + string(i)
	        }
			soulItemCount[numOfButts] = global.E[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.F[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "F" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "F" + string(i)
	        }
			soulItemCount[numOfButts] = global.F[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.G[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "G" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "G" + string(i)
	        }
			soulItemCount[numOfButts] = global.G[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.J[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "J" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "J" + string(i)
	        }
			soulItemCount[numOfButts] = global.J[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.K[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "K" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "K" + string(i)
	        }
			soulItemCount[numOfButts] = global.K[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.L[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "L" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "L" + string(i)
	        }
			soulItemCount[numOfButts] = global.L[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.M[i] >= 1 {
	        numOfButts++;
	        if i < 10 {
	            soulItems[numOfButts] = "M" + "0" + string(i);
	        } else {
	            soulItems[numOfButts] = "M" + string(i);
	        }
			soulItemCount[numOfButts] = global.M[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.N[i] >= 1 {
	        numOfButts++;
	        if i < 10 {
	            soulItems[numOfButts] = "N" + "0" + string(i);
	        } else {
	            soulItems[numOfButts] = "N" + string(i);
	        }
			soulItemCount[numOfButts] = global.N[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.OA[i] >= 1 {
	        numOfButts++;
	        if i < 10 {
	            soulItems[numOfButts] = "OA" + "0" + string(i);
	        } else {
	            soulItems[numOfButts] = "OA" + string(i);
	        }
			soulItemCount[numOfButts] = global.OA[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.OB[i] >= 1 {
	        numOfButts++;
	        if i < 10 {
	            soulItems[numOfButts] = "OB" + "0" + string(i);
	        } else {
	            soulItems[numOfButts] = "OB" + string(i);
	        }
			soulItemCount[numOfButts] = global.OB[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.OC[i] >= 1 {
	        numOfButts++;
	        if i < 10 {
	            soulItems[numOfButts] = "OC" + "0" + string(i);
	        } else {
	            soulItems[numOfButts] = "OC" + string(i);
	        }
			soulItemCount[numOfButts] = global.OC[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.P[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "P" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "P" + string(i)
			}
			soulItemCount[numOfButts] = global.P[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.R[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "R" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "R" + string(i)
	        }
			soulItemCount[numOfButts] = global.R[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.S[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "S" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "S" + string(i)
	        }
			soulItemCount[numOfButts] = global.S[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.T[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "T" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "T" + string(i)
	        }
			soulItemCount[numOfButts] = global.T[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.U[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "U" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "U" + string(i)
	        }
			soulItemCount[numOfButts] = global.U[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.V[i] >= 1 {
	        numOfButts++
		    if i < 10 {
		        soulItems[numOfButts] = "V" + "0" + string(i)
		    } else {
		        soulItems[numOfButts] = "V" + string(i)
		    }
			soulItemCount[numOfButts] = global.V[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.W[i] >= 1 {
	        numOfButts++
	        if i < 10 {
	            soulItems[numOfButts] = "W" + "0" + string(i)
	        } else {
	            soulItems[numOfButts] = "W" + string(i)
	        }
			soulItemCount[numOfButts] = global.W[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.XA[i] >= 1 {
	        numOfButts++;
	        if i < 10 {
	            soulItems[numOfButts] = "XA" + "0" + string(i);
	        } else {
	            soulItems[numOfButts] = "XA" + string(i);
	        }
			soulItemCount[numOfButts] = global.XA[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.XB[i] >= 1 {
	        numOfButts++;
	        if i < 10 {
	            soulItems[numOfButts] = "XB" + "0" + string(i);
	        } else {
	            soulItems[numOfButts] = "XB" + string(i);
	        }
			soulItemCount[numOfButts] = global.XB[i] - 1;
	    }
	}
	for(i = 1; i <= 99; i++) {
	    if global.XC[i] >= 1 {
	        numOfButts++;
	        if i < 10 {
	            soulItems[numOfButts] = "XC" + "0" + string(i);
	        } else {
	            soulItems[numOfButts] = "XC" + string(i);
	        }
			soulItemCount[numOfButts] = global.XC[i] - 1;
	    }
	}
}
