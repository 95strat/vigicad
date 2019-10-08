/*
 * Copyright (c) 2019, Vigibot
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 *   * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 * 
 * Description: OpenSCAD design for Vigibot middle plate
 * Design:      Quillès Jonathan / Pascal Piazzalungua
 * Author:      Gilles Bouissac
 */

use <../lib/plates.scad>

// ----------------------------------------
//                  API
// ----------------------------------------

module plateMiddle() {
    plateBigWheels(
        mirrorXYHoles = [
            getMotorsFourHolesBigWheels(),
            getRaspberryFourHoles(),
            getMotorPcbFourHoles(),
            getOblongFourHoles(),
            getToolFourHoles(),
        ]
    );
}

// ----------------------------------------
//                 Showcase
// ----------------------------------------
plateMiddle($fn=100);

//%import( "../../stl/plate_middle.stl" );

