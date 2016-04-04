///Collision_area_create(x, y, z, W, H, L, dur, parID, ownID)
var _x = argument0;
var _y = argument1;
var _z = argument2;
var _w = argument3;
var _h = argument4;
var _l = argument5;
var _dur = argument6;
var _instID = argument7;
var _ownerID = argument8;

with(instance_create(_x, _y, obj_hit_area))
{
    z = _z;
    
    grabArea_w = _w;
    grabArea_h = _h;
    grabArea_l = _l;
    
    alarm[0] = _dur;
    parentID = _instID;
    ownerID = _ownerID;
    
    
    if (parentID = -1) parentID = noone;
    with(parentID)
    {
        //other.origin_x = (_x - x) * cDir;
        other.origin_x = (_x - x);
        other.origin_y = (_y - y);
        other.origin_z = (_z - z); 
    }

    return id;
}
