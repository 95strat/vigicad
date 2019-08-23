/*
 * Copyright (c) 2019, Vigibot
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 *   * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * 
 * Description: OpenSCAD design for Vigibot clamp
 * Design:      Quillès Jonathan / Pascal Piazzalungua
 * Author:      Gilles Bouissac
 */

use <../lib/clamp.scad>

// ----------------------------------------
//                  API
// ----------------------------------------

module clampFingerA(ratio=1) {
    translate( [-getClampPitchDiameter()/2,0,0] )
        clampFingerAImpl(ratio*getClampArmBaseLength(), ratio*getClampArmBaseRadius());
}

// ----------------------------------------
//                 Showcase
// ----------------------------------------
difference() {
    clampFingerA( $fn=100 );
    if (0) {
        import( "../../stl/clamp_finger_a.stl" );
    }
}

if (0) {
    %import( "../../stl/clamp_finger_a.stl" );
}
