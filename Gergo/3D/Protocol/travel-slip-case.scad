//One Piece Travel Slip Case
//20210920 JKL

//TODO 
// x-edit dxf to fill in and make...1mm larger in all dimensions?
// x-square bottom for 1.5u keys
// x-move slant angle down for 2 top key overhangs
// x-make dxf with 0.5 offset for interior of case


caseInteriorHeight = 27; //this seems to be a good amount of squish for rubber dome feet on the bare PCB and low profile kailh keycaps. NB: YMMV

extrusionWidth = 0.41;
wallThicknessTopBottom = extrusionWidth*3;
//wallThicknessTopBottom = 1;

////translate([0,15,0]){
//difference(){    
//    linear_extrude(height = caseInteriorHeight+wallThicknessTopBottom*2, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0, $fn = 16) {
//        import("/home/justin/code/gergo-case/Gergo/3D/Protocol/left-outline-plus3mmCase.dxf");
//    }
//    linear_extrude(height = caseInteriorHeight, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0, $fn = 16) {
//                import("/home/justin/code/gergo-case/Gergo/3D/Protocol/left-outline-plus1mm-and1mmCutout.dxf");
//    }
//
//}

rubberBandWidth = 10;

difference(){    
    linear_extrude(height = caseInteriorHeight+wallThicknessTopBottom*2, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0, $fn = 16) {
        import("/home/justin/code/gergo-case/Gergo/3D/Protocol/left-outline-plus1.5mm-1.5mmBumpOuts-1.5mmEnd.dxf");
    }
    linear_extrude(height = caseInteriorHeight, center = true, convexity = 10, twist = 0, slices = 20, scale = 1.0, $fn = 16) {
                import("/home/justin/code/gergo-case/Gergo/3D/Protocol/left-outline-plus0.5mm-5mmExtension-squared-1mmBumpOut.dxf");
    }
    
//    //remove top rubber band notch from bottom
//    translate([190,-50,(caseInteriorHeight+wallThicknessTopBottom*2)/2+3]){
//    rotate([0,45,0]){
//        cube([10,rubberBandWidth,5]);
//    }
//}
    
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
    
//        //remove top rubber band notch from bottom
//    translate([43,-50,(caseInteriorHeight+wallThicknessTopBottom*2)/2+1]){
//        rotate([0,90,0]){
//            cube([(caseInteriorHeight+wallThicknessTopBottom*2)+2,rubberBandWidth,5]);
//        }
//    }

translate([44,-44,-(caseInteriorHeight+wallThicknessTopBottom*2)/2-1]){
    cylinder((caseInteriorHeight+wallThicknessTopBottom*2)+2,15,15);
}

}

//    //remove top rubber band notch from bottom
//    translate([43,-50,(caseInteriorHeight+wallThicknessTopBottom*2)/2]){
//        rotate([0,90,0]){
//            cube([(caseInteriorHeight+wallThicknessTopBottom*2),rubberBandWidth,5]);
//        }
//    }

//translate([45,-45,-(caseInteriorHeight+wallThicknessTopBottom*2)/2-1]){
//    cylinder((caseInteriorHeight+wallThicknessTopBottom*2)+2,15,15);
//}
