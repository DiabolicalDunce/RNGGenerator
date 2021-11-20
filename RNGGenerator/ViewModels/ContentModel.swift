//
//  ContentModel.swift
//  RNGGenerator
//
//  Created by Jonathan Lau on 11/18/21.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var coin = Coin()
    @Published var die = Die()
    @Published var number = Number()
    
    
    @Published var lowerNumber = "" {
        didSet {
            let filter = lowerNumber.filter {$0.isNumber}
            
            if lowerNumber != filter {
                lowerNumber = filter
            }
        }
    }
    
    @Published var upperNumber = "" {
        didSet {
            let filter = upperNumber.filter {$0.isNumber}
            
            if upperNumber != filter {
                upperNumber = filter
            }
        }
    }
    
    var dieArray = [Int]()
    
     
    
    
    func CoinFlip(){
        coin.rng = Int.random(in: 0...1)
    }
    
    func DiceRoll(_ numOfDie:Int) -> [Int]{
        
        for _ in (0..<numOfDie) {
            die.rng = Int.random(in: 0...5) + 1
            dieArray.append(die.rng)
        }
        
        
        return dieArray
    }
    
    func clearDice() ->[Int] {
        dieArray.removeAll()
        return dieArray
    }
    
    func NumberPicker(){
        
        if number.lowerRng! > number.upperRng! {
            swapNumbers()
        }
        
        number.chosenNumber = Int.random(in: number.lowerRng!...number.upperRng!)
    }
    
    func swapNumbers() {
        let temp = number.lowerRng
        number.lowerRng = number.upperRng
        number.upperRng = temp
        
    }
    
    
}
