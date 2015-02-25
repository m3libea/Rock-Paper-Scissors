//
//  ViewController.swift
//  RPS
//
//  Created by m3libea on 18/02/15.
//  Copyright (c) 2015 ccsf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model:RPSModel?

    override func viewDidLoad() {
        
        super.viewDidLoad()
       // buttonRock.setImage(imageRock, forState: .Normal)
        model = RPSModel()
    }
    
    @IBAction func rockButton(sender: AnyObject) {
        model?.match(.Rock)
        var resultController = self.storyboard!.instantiateViewControllerWithIdentifier("Result") as ResultController
        
        resultController.model = model
        
        presentViewController(resultController, animated: true, completion: nil)
    }
    
    @IBAction func paperButton(sender: AnyObject) {
        performSegueWithIdentifier("PaperFlip", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        if segue.identifier == "ScissorsFlip"{
            var resultController = segue.destinationViewController as ResultController

            model?.match(.Scissors)
            resultController.model = model

        }
        
        if segue.identifier == "PaperFlip"{
            var resultController = segue.destinationViewController as ResultController

            model?.match(.Paper)
            resultController.model = model

        }
        

    }

}

