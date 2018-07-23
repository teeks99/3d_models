$fn = 20;
knobD = 12; // Measured: hole = 13, knob 12
slotW = 6; // Measured: Hole is 7 width is 6ish
knobCenter = 16.5 - 12/2; // measured; 18mm from end to end
pegDepth = 9; // measured: 10.5
pegD = 5; // measured: 5
trackH = 11.5; // measured: 12

peg();
//translate([0,20,0])peg();
//translate([0,-20,0])peg();
module peg(){
translate([knobCenter,0,0])cylinder(r = knobD/2, h = trackH);
translate([0,-slotW/2,0])cube([knobCenter, slotW, trackH]);
translate([-pegDepth,0,trackH/2])rotate([0,90,0])cylinder(r1=pegD/2*0.9,r2=pegD/2,h = pegDepth);
}


//supportW = pegD*.6;
//difference(){
//translate([-pegDepth,-supportW/2,0])cube([pegDepth-1,supportW,trackH/2]);
//translate([-pegDepth,0,trackH/2])rotate([0,90,0])cylinder(r1=pegD/2*0.8+.3,r2=pegD/2+.3,h = pegDepth);
//};
