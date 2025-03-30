turret_height = 10;
p0 = 0;
p1 = 11;
p2 = 2;

module rook(scale=1,segments=64,cutouts=4) {
    scale(scale) difference () {
        rotate_extrude(convexity = 10, $fn = segments)
        import(file = "profiles/rook_profile.svg"); 

        // cutouts
        translate([0, 0, 33]) {
            for (i=[0:cutouts]) {    
              rotate([0, 0, 360/cutouts*i])
                linear_extrude(height = turret_height) {
                    polygon( points=[[0,0],[p1,p2],[p1,-p2]] );
                }
            }
        }   
    }
}

rook();
