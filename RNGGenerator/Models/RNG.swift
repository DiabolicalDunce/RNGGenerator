//
//  RNG.swift
//  RNGGenerator
//
//  Created by Jonathan Lau on 11/18/21.
//

import Foundation

struct Coin: Identifiable {
    var id = 0
    var rng = 1 // Coin has two states: 0 = Tails, 1 = Heads. Intialized as Heads
}

struct Die: Identifiable {
    var id = 1
    var rng = 5 // Die has six states: 0-5 representing (self + 1) die value
}

struct Number: Identifiable {
    var id = 2
    var lowerRng:Int?
    var upperRng:Int?
    var chosenNumber = 0
}
