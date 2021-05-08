segments = 64;
turret_height = 40;
p0 = 0;
p1 = 50;
p2 = 60;

module rook() {
    scale(0.2) {
        difference () {
            rotate_extrude(convexity = 10, $fn = segments) {
                scale(.25)
                import(file = "profiles/rook_profile.svg"); 
            }
            // Four cutouts
            translate([0, 0, 170]) {
                for (i=[0 : 90 : 360]) {    
                  rotate([0, 0, i])
                    linear_extrude(height = turret_height) {
                        polygon( points=[[0,0],[p2,p1],[p1,p2]] );
                    }
                }
            }   
        }
    }
}

scale(.7) rook();