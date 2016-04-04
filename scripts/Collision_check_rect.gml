///Collision_check_rect(rect1_l, rect1_r, rect1_t, rect1_b, rect2_l, rect2_r, rect2_t, rect2_b)
var rc1L = argument0;
var rc1R = argument1;
var rc1T = argument2;
var rc1B = argument3;

var rc2L = argument4;
var rc2R = argument5;
var rc2T = argument6;
var rc2B = argument7;

if (rc1L <= rc2R) && (rc1T <= rc2B) && (rc1R >= rc2L) && (rc1B >= rc2T) return true;
//if (rc1L <= rc2L) && (rc1T <= rc2T) && (rc1R >= rc2R) && (rc1B >= rc2B) return true;
else return false;
