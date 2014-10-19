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
    
    @IBOutlet weak var tigerFact: UILabel!
    
    var currentIndex = 0
    
    var myTigers:[tiger] = []
    var lion:[Lion] = []
    
    var currentAnimal = (Animal: "Tiger", animalIndex: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = tiger()
        
        myTiger.age = 2
        myTiger.name = "Tiggers"
        myTiger.breed = "African"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTiger.chuff()
        
        myTigers.append(myTiger)
        
        println( "My Tigers name is  \(myTiger.name) and its age is \(myTiger.age)and its breed is \(myTiger.breed) and its image is \( myTiger.image)" )
        
        self.myImageView.image = myTiger.image
        self.myNameLabel.text = myTiger.name
        self.myAgeLable.text = "\(myTiger.age)"
        self.myBreedLabel.text = myTiger.breed
        self.tigerFact.text = myTiger.randomFact()
        
        
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
        
         self.myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        println(" my tiger name is \(myTigers)")
        
        
        var lion = Lion()
        lion.age = 4
        lion.isMaleAplha = true
        lion.image = UIImage(named: "Lion.jpg")
        lion.name = "Mufasa"
        lion.subSpecies = "first subspecies"
        
        var lioness = Lion()
        lioness.age = 4
        lioness.isMaleAplha = false
        lioness.image = UIImage(named: "Lioness.jpeg")
        lioness.name = "Mufasa"
        lioness.subSpecies = "second subspecies"
        
        self.lion += [lion, lioness]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func myNextAction(sender: UIBarButtonItem) {
        
        updateAnimal()
        updateView()
        
    }
    
    
    func updateAnimal () {
        
        switch currentAnimal {
            
        case ("Tiger", _):
           let randomIndex = Int(arc4random_uniform(UInt32(lion.count)))
            currentAnimal  = ("Lion", randomIndex)
            
            println("Calling Tiger \(randomIndex)")
         
        default :
            let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
            currentAnimal  = ("Tiger", randomIndex)
            
            println("Calling lion \(randomIndex)")
            
        }
        
    }
    
    func updateView () {
        
      /*  var randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        let tiger = self.myTigers[randomIndex]
        
        while self.currentIndex == randomIndex {
            randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        }
        self.currentIndex = randomIndex */
        
        /*myImageView.image = tiger.image
        myNameLabel.text = tiger.name
        myAgeLable.text = "\(tiger.age)"
        myBreedLabel.text = tiger.breed*/
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
           /* self.myImageView.image = tiger.image
            self.myNameLabel.text = tiger.name
            self.myAgeLable.text = "\(tiger.age)"
            self.myBreedLabel.text = tiger.breed
            self.tigerFact.text = tiger.randomFact()*/
            
            println("what is the animla name \(self.currentAnimal.Animal)")
            
            if self.currentAnimal.Animal == "Tiger" {
                let tiger = self.myTigers[self.currentAnimal.animalIndex]
                self.myImageView.image = tiger.image
                self.myNameLabel.text = tiger.name
                self.myAgeLable.text = "\(tiger.age)"
                self.myBreedLabel.text = tiger.breed
                self.tigerFact.text = tiger.randomFact()
                
                 println("Calling if Tiger \(tiger.image)")
            }
            else if  self.currentAnimal.Animal == "Lion" {
                let lion = self.lion[self.currentAnimal.animalIndex]
                self.myImageView.image = lion.image
                self.myNameLabel.text = lion.name
                self.myAgeLable.text = "\(lion.age)"
                self.myBreedLabel.text = lion.subSpecies
                self.tigerFact.text = lion.randomFact()
                
                println("Calling if lion \(lion.image)")
                
            }
            self.tigerFact.hidden = false
            
            
            }, completion: { (finished: Bool) -> () in
        })

        
    }
    

}

