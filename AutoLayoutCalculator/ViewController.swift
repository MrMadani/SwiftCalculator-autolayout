//
//  ViewController.swift
//  AutoLayoutCalculator
//
//  Created by shahinmadani on 28/7/21.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen : Double = 0
    var previousNumber : Double = 0
    var performingMath = false
    var operation=0
    var result : Double = 0
    
    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btnDec: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
@IBAction func buttonPressed(_ sender: UIButton) {
    if performingMath == true && sender.tag != 10{
        textView.text = String(sender.tag)
        numberOnScreen = Double(textView.text!)!
        performingMath = false
    }else if sender.tag != 10{
        textView.text = textView.text! + String(sender.tag)
        numberOnScreen = Double(textView.text!)!
        
    }else if sender.tag == 10{
        textView.text = textView.text! + "."
        numberOnScreen = Double(textView.text!)!
        
    }
    
}
    @IBAction func `operator`(_ sender: UIButton) {
    
        if textView.text != "" && sender.tag != 16 && sender.tag != 15
        {
            previousNumber = Double(textView.text!)!
            if sender.tag == 11{//divide
                textView.text="/"
            }else if sender.tag == 12{//multiply
                textView.text="x"
            }else if sender.tag==13 {//subtract
                textView.text="-"
            }else if sender.tag == 14{//addition
                textView.text = "+"
            }
            operation = sender.tag
            performingMath = true
        }
        if sender.tag == 15{
            if operation == 11{//divide
                result = previousNumber / numberOnScreen
                textView.text = String(result)
            }else if operation == 12 {//multiply
                result = previousNumber * numberOnScreen
                textView.text = String(result)
            }else if operation == 13{//subtract
                result = previousNumber - numberOnScreen
                textView.text = String(result)
            }else if operation == 14{//addition
                result = previousNumber + numberOnScreen
                textView.text = String(result)
                }
        }
        if sender.tag == 16{
            textView.text=""
            numberOnScreen = 0
            previousNumber = 0
            operation = 0
            
           }
    }
        
    
}


