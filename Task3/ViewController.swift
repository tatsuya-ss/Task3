//
//  ViewController.swift
//  Task3
//
//  Created by 坂本龍哉 on 2020/10/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField1.keyboardType = UIKeyboardType.numberPad
        self.textField2.keyboardType = UIKeyboardType.numberPad
        
    }
    
    @IBAction func resultAction(_ sender: Any) {
        
        var num1:Double = Double(textField1.text!) ?? 0
        var num2:Double = Double(textField2.text!) ?? 0
        
        if switch1.isOn {
            num1 = num1 * -1
            label1.text = "-\(String(textField1.text!))"
        }else{
            num1 += 0
            label1.text = "\(String(textField1.text!))"
        }
        
        if switch2.isOn {
            num2 = num2 * -1
            label2.text = "-\(String(textField2.text!))"
            
        }else{
            num2 += 0
            label2.text = "\(String(textField2.text!))"
            
        }
        
        let kekka = num1 + num2
        resultLabel.text = String(kekka)
        
    }
    
}

