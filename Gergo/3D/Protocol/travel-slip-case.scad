//One Piece Travel Slip Case for Gergo Protocol Keyboard
//20210926 JKL

caseInteriorHeight = 27; //this seems to be a good amount of squish for rubber dome feet on the bare PCB and low profile kailh keycaps. NB: YMMV

extrusionWidth = 0.41; //actual extrusion width was 0.40mm
wallThicknessTopBottom = extrusionWidth*3;
//wallThicknessTopBottom = 1;

rubberBandWidth = 10;

difference(){
    //make outside shap eof case
    linear_extrude(height = caseInteriorHeight+wallThicknessTopBottom*2, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0, $fn = 16) {
        import("case-outerBoundary.dxf");
    }
    
    //remove PCB area, plus 0.5mm buffer and some for keycaps
    linear_extrude(height = caseInteriorHeight, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0, $fn = 16) {
                import("case-innerShape.dxf");
    }
       
    //remove top rubber band notch from bottom
    translate([190,-50,(caseInteriorHeight+wallThicknessTopBottom*2)/2+1.5]){
        rotate([0,30,0]){
            cube([10,rubberBandWidth,5]);
        }
    }
    
    //remove bottom rubber band notch from bottom
    translate([190,-50,-(caseInteriorHeight+wallThicknessTopBottom*2)/2-7.25]){
        rotate([0,-30,0]){
            cube([10,rubberBandWidth,5]);
        }
    }
    
    //remove thumbhole from top of case    
    translate([44,-44,-(caseInteriorHeight+wallThicknessTopBottom*2)/2-1]){
        cylinder((caseInteriorHeight+wallThicknessTopBottom*2)+2,15,15);
    }
} //end difference


