//  ViewController.swift
//  Calculator
//
//  Created by Emily Lakic on 11/30/16.
//  Copyright © 2016 Emily Lakic. All rights reserved.
//
//UKit is a module
import UIKit

class ViewController: UIViewController { //definition of a class, ViewController is name of class
    
    @IBOutlet weak var display: UILabel! //property on our controller called display, type is UILabel! --> ! also means optional, same kind of optional as question mark
    //the last var was not initialized because optionals are always initialized to 'not set's --> aka '= nil' is always happening (UILabel? = nil above)
    var userIsInTheMiddleOfTyping = false //every property in Swift has to have an initial value
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle! ///! is unwrapping optional
        if userIsInTheMiddleOfTyping {
            let textCurrentlyinDisplay = display.text!
            display.text = textCurrentlyinDisplay + digit //concatenate strings
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
}
//inside curly brackets are all properties and methods
//example = print("touched \(digit) digit") //if something is a constant and never changes, uses let instead of var
