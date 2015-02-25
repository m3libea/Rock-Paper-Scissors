//
//  RPSModel.swift
//  RPS
//
//  Created by m3libea on 19/02/15.
//  Copyright (c) 2015 ccsf. All rights reserved.
//

import UIKit

class RPSModel {
    
    enum RPS: Printable {
        
        case Rock, Paper, Scissors
        
        var description: String{
            switch(self){
            case .Paper:
                return "Paper"
            case .Rock:
                return "Rock"
            case .Scissors:
                return "Scissors"
            }
            
        }
        
        init(){
            switch(arc4random_uniform(3)){
            case 0:
                self = .Rock
            case 1:
                self = .Paper
            case _:
                self = .Scissors
            }
            
        }
        
    }
    
    
    enum Outcome: Printable {
        
        case Win, Loss, Ties
        
        var description: String{
            
            switch(self){
            case .Win:
                return "Win"
            case .Loss:
                return "Lose"
            case .Ties:
                return "Tie"
            }
            
        }
    }
    
    let imageRock = UIImage(named: "rock.png") as UIImage?
    let imagePaper = UIImage(named: "paper.png") as UIImage?
    let imageScissors = UIImage(named: "scissors.png") as UIImage?


    
    var playerMove: RPS?
    var opponentMove: RPS?
    var outcome: Outcome{
        if playerMove == .Rock {
            if opponentMove == .Scissors{
                return .Win
            }else if opponentMove == .Paper{
                return .Loss
            }
            
        }
        if playerMove == .Paper {
            if opponentMove == .Rock{
                return .Win
            }else if opponentMove == .Scissors{
                return .Loss
            }
            
        }
        if playerMove == .Scissors {
            if opponentMove == .Paper{
                return .Win
            }else if opponentMove == .Rock{
                return .Loss
            }
            
        }
        
        return .Ties
    }
    
    var playerImage:UIImage?
    var opponentImage: UIImage?
    
    func match(pm: RPS){
        playerMove = pm
        opponentMove = RPS()
        playerImage = chooseImage(playerMove!)
        opponentImage = chooseImage(opponentMove!)
    }
    
    init(){
    }
    
    func chooseImage(pm:RPS)->UIImage{
        if pm == .Paper{
            return imagePaper!
        }else if pm == .Scissors{
            return imageScissors!
        }else{
            return imageRock!
        }
    }
    
}
