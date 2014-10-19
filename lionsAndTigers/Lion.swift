//
//  Lion.swift
//  lionsAndTigers
//
//  Created by ankurchdry on 10/10/14.
//  Copyright (c) 2014 ankurchdry. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    
    var age = 0
    var isMaleAplha = false
    var image = UIImage(named: "")
    var name = ""
    var subSpecies = ""
    
    func randomFact() -> String {
        var randomFact:String
        
        if self.isMaleAplha {
            randomFact = "Male lions are easy to recognize thanks to their distinctive manes. Males with darker manes are more likely to attract females."
        }
        else {
            randomFact = "Female Lionesses form the stable social unit and do not tolerate outside females."
        }
        return randomFact
    }
    
}

