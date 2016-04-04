///apply_friction(amount, _isRun)
var amount = argument[0];

if(STATE == RUN)
{
    image_index = 0;
    sprite_index = spr_sunbee_n_friction;
    image_speed = .75;
    STATE = RUN_STOP;
}
else if(STATE == RUN_ATTACK)
{
    image_index = 0;
    image_speed = .4;
    sprite_index = spr_sunbee_run_atck;
    STATE = RUN_ATTACK_STOP;
}

if(hspd != 0) {
    if(abs(hspd)-amount > 0) {
        hspd -= amount*sign(hspd);
    } else {
        hspd = 0;
    }
}

if(vspd != 0) {
    if(abs(vspd)-amount > 0) {
        vspd -= amount*sign(vspd);
    } else {
        vspd = 0;
    }
}

if(hspd == 0 && vspd == 0) {
    STATE = IDLE;
}


