//
//  ViewController.swift
//  lionsAndTigers
//
//  Created by ankurchdry on 9/28/14.
//  Copyright (c) 2014 ankurchdry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myNameLabel: UILabel!
    
    @IBOutlet weak var myAgeLable: UILabel!
    
    @IBOutlet weak var myBreedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = tiger()
        
        myTiger.age = 2
        myTiger.name = "Tiggers"
        myTiger.breed = "African"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        println( "My Tigers name is  \(myTiger.name) and its age is \(myTiger.age)and its breed is \(myTiger.breed) and its image is \( myTiger.image)" )
        
        myImageView.image = myTiger.image
        myNameLabel.text = myTiger.name
        myAgeLable.text = "\(myTiger.age)"
        myBreedLabel.text = myTiger.breed
        
        
        var secondTiger = tiger()
        
        secondTiger.age = 3
        secondTiger.name = "Tiggerees"
        secondTiger.breed = "Indo Chinness"
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        var thirdTiger = tiger()
        
        thirdTiger.age = 4
        thirdTiger.name = "myTiger"
        thirdTiger.breed = "Milan"
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        var fourthTiger = tiger()
        
        fourthTiger.age = 4
        fourthTiger.name = "hellTiger"
        fourthTiger.breed = "Siberian"
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func myNextAction(sender: UIBarButtonItem) {
    }

}

