//
//  Tigers.swift
//  lionsAndTigers
//
//  Created by ankurchdry on 9/28/14.
//  Copyright (c) 2014 ankurchdry. All rights reserved.
//

import Foundation
import UIkit

struct tiger {
    
    var name = ""
    var age = 0
    var breed = ""
    var image = UIImage (named: "")
    
    func chuff() {
        println("Chuff Chuff")
    }
    
    func chuffNumberOfTimes(numberOfTimes: Int) {
        
        for var chuff = 0 ; chuff < numberOfTimes; chuff++ {
            
            self.chuff()
            
        }
    }
}