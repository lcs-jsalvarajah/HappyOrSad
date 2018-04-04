//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Make sure input was given (create a string from the string)
guard let input = rawInput else {
    //Error
    exit(9)
}

// Print out the input provided
print("You said:")
print(rawInput) // Optional String
print(input) //Non-Optional

var happyFace = 0
var sadFace = 0
// process- inspect each charachter
for individualCharacter in input {
    //Debug
    print(individualCharacter)
    
    // Catogroize each character
    if individualCharacter == "😃" {
        // Track a Happy
        happyFace += 1
    } else if individualCharacter == "☹️" {
        //track a sad
        sadFace += 1
    } else if individualCharacter == "🙂" {
        // Track happy
        happyFace += 1
    } else if individualCharacter == "😕" {
        //Track a sad
        sadFace += 1
    } else if individualCharacter == "😔" {
//Track a sad
         sadFace += 1
    }  else if individualCharacter == "🙁" {
        //Track a sad
        sadFace += 1
    }  else if individualCharacter == "☺️" {
        // Track happy
      sadFace += 1
    } else if individualCharacter == "😄" {
        // Track happy
        happyFace += 1
    }
}
//Output
// Tell the user "happy", "sad" or "unsure" based on counts above

if happyFace > sadFace {
    print("Happy")
} else if sadFace > happyFace {
    print("Sad")
} else {
    print("Unsure")
}

