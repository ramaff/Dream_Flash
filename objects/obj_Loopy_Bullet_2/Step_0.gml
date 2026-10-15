speed += (bulletspeed * 2) / bulletlife;
direction += diradd;
diradd += diraddadd;

if abs(diradd) > 5 {
    diraddadd = diraddadd * -1;
}