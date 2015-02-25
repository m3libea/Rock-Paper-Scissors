//
//  ResultController.swift
//  RPS
//
//  Created by m3libea on 19/02/15.
//  Copyright (c) 2015 ccsf. All rights reserved.
//

import UIKit

class ResultController: UIViewController {
    
    var model: RPSModel?
    
    
    @IBOutlet weak var playerMove: UIImageView!
    @IBOutlet weak var opoMove: UIImageView!
    
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        playerMove.image = model!.playerImage
        opoMove.image = model!.opponentImage

        result.text = "You \(model!.outcome)!"
    }
    
    
    @IBAction func returnMain() {
        dismissViewControllerAnimated(true, completion: nil)
    }


}