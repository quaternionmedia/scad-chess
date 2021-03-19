use<chess_rook.scad>
use<chess_knight.scad>
use<chess_bishop.scad>
use<chess_queen.scad>
use<chess_king.scad>
use<chess_pawn.scad>

square = 30;

module chess_set() {
    scale(.7) {
        rook();
        translate([square, 0, 0]) knight();
        translate([square*2, 0, 0]) bishop();
        translate([square*3, 0, 0]) queen();
        translate([square*4, 0, 0]) king();
        translate([square*5, 0, 0]) bishop();
        translate([square*6, 0, 0]) knight();
        translate([square*7, 0, 0]) rook();
        
        for (i=[0 : 7]) {
            translate([square*i, square, 0]) pawn();
        }
    }
}

chess_set();