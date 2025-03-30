use <chess_rook.scad>
use <chess_knight.scad>
use <chess_bishop.scad>
use <chess_queen.scad>
use <chess_king.scad>
use <chess_pawn.scad>

// chessboard square size (mm)
square = 32;
// scale of set, relative to size of square
SCALE = 1;
// number of divisions for rotate_extrude
// set to 64 or larger for circular pieces
$fn = 6;

// number of cutouts for the rook
CUTOUTS = 6;

module chess_set() {
    translate([square/2, -square/2, 0])
    {
        translate([square*0, square*0, 0]) rook(SCALE,$fn, cutouts=CUTOUTS);
        translate([square*1, square*0, 0]) knight(SCALE,$fn);
        translate([square*2, square*0, 0]) bishop(SCALE,$fn);
        translate([square*3, square*0, 0]) queen(SCALE,$fn);
        translate([square*4, square*0, 0]) king(SCALE,$fn);
        translate([square*5, square*0, 0]) bishop(SCALE,$fn);
        translate([square*6, square*0, 0]) knight(SCALE,$fn);
        translate([square*7, square*0, 0]) rook(SCALE,$fn, cutouts=CUTOUTS);
        
        for (i=[0 : 7]) {
            translate([square*i, -square, 0]) pawn(SCALE,$fn);
        }

	// some extras (pawn promotion, etc.)
	/*
        translate([square*0, square*1, 0]) rook(SCALE,$fn);
        translate([square*1, square*1, 0]) knight(SCALE,$fn);
        translate([square*2, square*1, 0]) bishop(SCALE,$fn);
        translate([square*3, square*1, 0]) queen(SCALE,$fn);
        translate([square*6, square*1, 0]) knight(SCALE,$fn);
	*/

    }
    // reference markers
    /*translate([square/2, 0, 0]) 
        for (i=[0 : 7]) {
        	for (j=[-1 : 1]) {
	            %translate([square*i, square*j, 0]) circle(d=square);
        	}
	}*/
}

// full chess set
chess_set();

// individual pieces (so printing can be cancelled per-piece in case one fails, see Marlin's M486 command)
*bishop(SCALE,$fn);
*king(SCALE,$fn);
*knight(SCALE,$fn,dfix=.97);
*pawn(SCALE,$fn);
*queen(SCALE,$fn,rfix=15);
*rook(SCALE,$fn,cutouts=CUTOUTS);
