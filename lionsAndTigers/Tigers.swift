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
        
        func randomFact() -> String {
            
            let randomNumber = Int(arc4random_uniform(UInt32(3)))
            
            var randomFact:String
            
            if randomNumber == 0 {
                randomFact = "This is huge tiger and respect it"
            }
            else if randomNumber == 1 {
                randomFact = " This is hunting tiger and its awesome"
            }
            
            else {
                randomFact = "This is the last Tiger"
            }
            
            return randomFact
        }
   
}