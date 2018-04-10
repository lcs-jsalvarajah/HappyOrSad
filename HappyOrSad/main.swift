//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Loop forever until value input is given
var validInput = ""
while 1==1 {
    guard let givenInput = readLine() else {
        // Tell the user that there is a problem
        print("Please Enter a string between 1 to 255 characters.")
        //Go to the next itteration of the loop
        continue
    }
    
    //Is the string the correct length
    if givenInput.count < 1 || givenInput.count >= 255 {
        // Tell the user that there is a problem
        print("Please Enter a string between 1 to 255 characters.")
        //Go to the next itteration of the loop
        continue
    }
    
    //If we got this far the input is valid
    validInput = givenInput
    break // Very Important - this stops the while loop
}

// Get the user input
var rawInput = readLine()

// Make sure input was given (create a string from the string)


// Print out the input provided --> COMMENTED OUT: USEFUL FOR DEBUGGING
//print("You said:")
//print(rawInput) // Optional String
//print(input) //Non-Optional


//PROCESS
var happyFace = 0
var sadFace = 0
// process- inspect each charachter
for individualCharacter in validInput {
    
    
    // Catogroize each character
    switch individualCharacter {
    case "😃" , "🙂" , "😊" , "😄" :
        happyFace += 1
    case "☹️" , "😕" , "😔" , "🙁" :
        sadFace += 1
    default:
        break // Do nothing
    }

}
//Output
// Tell the user "happy", "sad" or "unsure" based on counts above

if happyFace > sadFace {
    print("Happy")
} else if sadFace > happyFace {
    print("Sad")
} else if happyFace == 0 && sadFace == 0 {
    print("none")
} else {
    print("Unsure")
}

