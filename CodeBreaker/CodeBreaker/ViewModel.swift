//
//  ViewModel.swift
//  CodeBreaker
//
//  Created by Spencer Hurd on 7/30/22.
//

import Foundation

class ViewModel {
    
    /**
     Lottery ball number generator
         Players pick six numbers from two separate pools of numbers
            - 5 balls from a pool of numbers ranging from 1 to 70 (the white balls)
            - 1 ball from a pool of numbers ranging from 1 to 25 (the gold ball)
         Odds of picking all six numbers according to megamillions.com: 1 in 302,575,350
     */
    
    var theChosen6powerballs: [Powerball] = []
    
    
    
    func assignPowerballs() {
        for num in 0...5 {
            var previouslyPickedNumbers: [Int] = []
            let maxNum = (num >= 0 && num < 5) ? 70 : 25
            let currentColor = (num >= 0 && num < 5) ? PowerballColor.white : PowerballColor.gold
            let randomNumber = Int.random(in: 1...maxNum)
            previouslyPickedNumbers.append(randomNumber)
            let powerball = Powerball(number: randomNumber, color: currentColor)
            theChosen6powerballs.append(powerball)
        }
        printTheChosenPowerballs()
    }
    
    func printTheChosenPowerballs() {
        print("""
            The following powerballs were chosen: \n
            powerball1 = number: \(theChosen6powerballs[0].number) color: \(theChosen6powerballs[0].color) \n
            powerball2 = number: \(theChosen6powerballs[1].number) color: \(theChosen6powerballs[1].color) \n
            powerball3 = number: \(theChosen6powerballs[2].number) color: \(theChosen6powerballs[2].color) \n
            powerball4 = number: \(theChosen6powerballs[3].number) color: \(theChosen6powerballs[3].color) \n
            powerball5 = number: \(theChosen6powerballs[4].number) color: \(theChosen6powerballs[4].color) \n
            powerball6 = number: \(theChosen6powerballs[5].number) color: \(theChosen6powerballs[5].color) \n
        """)
    }
    
}
