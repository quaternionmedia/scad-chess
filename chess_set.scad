use <chess_rook.scad>
use <chess_knight.scad>
use <chess_bishop.scad>
use <chess_queen.scad>
use <chess_king.scad>
use <chess_pawn.scad>

// chessboard square size (mm)
square = 32;
// scale of set, relative to size of square
SCALE = .7;
// number of divisions for rotate_extrude
$fn = 5;

module chess_set() {
    translate([square/2, 0, 0])
    {
        translate([square*0, square*0, 0]) rook(square*SCALE,$fn);
        translate([square*1, square*0, 0]) knight(square*SCALE,$fn);
        translate([square*2, square*0, 0]) bishop(square*SCALE,$fn);
        translate([square*3, square*0, 0]) queen(square*SCALE,$fn);
        translate([square*4, square*0, 0]) king(square*SCALE,$fn);
        translate([square*5, square*0, 0]) bishop(square*SCALE,$fn);
        translate([square*6, square*0, 0]) knight(square*SCALE,$fn);
        translate([square*7, square*0, 0]) rook(square*SCALE,$fn);
        
        for (i=[0 : 7]) {
            translate([square*i, -square, 0]) pawn(square*SCALE,$fn);
        }

	// some extras (pawn promotion, etc.)
	/*
        translate([square*0, square*1, 0]) rook(square*SCALE,$fn);
        translate([square*1, square*1, 0]) knight(square*SCALE,$fn);
        translate([square*2, square*1, 0]) bishop(square*SCALE,$fn);
        translate([square*3, square*1, 0]) queen(square*SCALE,$fn);
        translate([square*6, square*1, 0]) knight(square*SCALE,$fn);
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
*chess_set();

// individual pieces (so printing can be cancelled per-piece in case one fails, see Marlin's M486 command)
*bishop(square*SCALE,$fn);
*king(square*SCALE,$fn);
*knight(square*SCALE,$fn,dfix=.97);
pawn(square*SCALE,$fn);
*queen(square*SCALE,$fn,rfix=15);
*rook(square*SCALE,$fn,cutouts=4);
