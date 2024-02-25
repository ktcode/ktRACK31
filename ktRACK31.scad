//
// ktRack31
//
//


gap1 = 0.001;
gap2 = 0.002;
th = 2;
W = 19;
WW = W+2;
hoot_r = 8.3/2;


R = 10; //keyboard angle (degrees)



translate([WW*0, W, 0]) STAND(5);
translate([WW*0, W+WW, 0]) STAND();
translate([WW*1, W, 0]) STAND();
translate([WW*1, W+WW, 0]) STAND();
//translate([WW*2, W*2, 0]) STAND_ISO();
//translate([WW*3, W*2, 0]) STAND_ISO();


module STAND(ROW=6)
{
    Y = ROW*W-W/2;
    hull()
    {
        translate([W/2, -W/2, Y*tan(R)]) cylinder(r=hoot_r, h=gap1, $fn=100);
        translate([0, -W, 0]) translate([0, 0, 0]) cube([W, W, th]);
    }
}

module STAND_ISO(ROW=4)
{
    Y = ROW*W-W;
    hull()
    {
        translate([W/2, -W, Y*tan(R)]) cylinder(r=hoot_r, h=gap1, $fn=100);
        translate([0, -W-W/2, 0]) translate([0, 0, 0]) cube([W, W, th]);
    }
    translate([0, -W*2, 0]) translate([0, 0, 0]) cube([W, W*2, th]);
}




/*
ROW = 6; //ktKBD95
//ROW = 4; //ktKBD53

translate([(W+2)*0, (W+2)*0, 0]) STAND_RL1A(19*ROW);
translate([(W+2)*1, (W+2)*0, 0]) STAND_RL1A(19*ROW);
translate([(W+2)*0, (W+2)*1, 0]) STAND_RL1A(19*ROW);
translate([(W+2)*1, (W+2)*1, 0]) STAND_RL1A(19*ROW);



module STAND_RL1A(_Y=0, OFFSET=0)
{
    Z = (_Y-W/2)*sin(R)-0.5;
    difference()
    {
        hull()
        {
            translate([W/2, W/2, Z]) rotate([R, 0, 0,]) cylinder(r=8.3/2, h=gap1, $fn=100);
            translate([0, 0, 0]) cube([W, W, th]);
        }
        translate([W/2-1, 0, th]) cube([2, 3, 30]);
    }
    translate([W/2, W/2, Z]) rotate([R, 0, 0,]) cylinder(r=8.3/2, h=0.5, $fn=100);
}
*/
