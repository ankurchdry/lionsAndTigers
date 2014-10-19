//
//  Lioncubs.swift
//  lionsAndTigers
//
//  Created by ankurchdry on 10/19/14.
//  Copyright (c) 2014 ankurchdry. All rights reserved.
//

import Foundation


class LionCub: Lion {
    
    override func randomFact() -> String {
        var randomFactString:String
        
        if isMaleAplha {
            randomFactString = "Cubs are usually hidden in the dense bush for approximately six weeks."
        }
        else {
            randomFactString = "Cubs begin eating meat at about the age of six weeks"
        }
        return randomFactString
    }
}