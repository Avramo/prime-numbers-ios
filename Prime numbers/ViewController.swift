//
//  ViewController.swift
//  Prime numbers
//
//  Created by admin on 21/01/2020.
//  Copyright © 2020 AM Kirsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(_ sender: Any) {
        
        if let num2Check = Double(number.text!){
            if num2Check.truncatingRemainder(dividingBy: 1.0 ) == 0.0{
                let  intNum2Check = Int(num2Check)
                
                if intNum2Check == 2 || isPrime(num: intNum2Check){
                    resultLabel.text = "Yes! \(intNum2Check) is a prime number"
                } else {
                    resultLabel.text = "Nope! \(intNum2Check) is not a prime number"
                } 
            } else {
                resultLabel.text = "Please enter a whole positive number"
            }
        }
    }
    
    func isPrime(num:Int) -> Bool {
        //if a decimal, less than 2, or negative
        if ( (num % 1 != 0) || (num < 2) ){
                return false
            }
        // rules out all even numbers.
        else if (num % 2  == 0 ){
            return false
        }
        else if ( (num != 3 && num % 3 == 0)
            || (num != 5  && num % 5 == 0)
            || (num != 7  && num % 7 == 0)
            || (num != 11 && num % 11 == 0)
            || (num != 13 && num % 13 == 0) ) {
              return false
        }
        var i = 3
        while i * i <= num {
            if (num % i == 0){ // checking only odd numbers .
                return false;
            }
            i += 2
        }
        return true;
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

