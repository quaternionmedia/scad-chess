turret_height = 10;
p0 = 0;
p1 = 7;
p2 = 10;

module rook(scale=1,segments=64) {
    scale(scale/20)
        difference () {
            rotate_extrude(convexity = 10, $fn = segments)
            import(file = "profiles/rook_profile.svg"); 

            // Four cutouts
            translate([0, 0, 33]) {
                for (i=[0 : 90 : 360]) {    
                  rotate([0, 0, i])
                    linear_extrude(height = turret_height) {
                        polygon( points=[[0,0],[p2,p1],[p1,p2]] );
                    }
                }
            }   
        }
}

rook();
