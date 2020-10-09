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
        //varからletに変更。
        let num1:Double = Double(textField1.text!) ?? 0
        let num2:Double = Double(textField2.text!) ?? 0
        //定数の追加
        let signedNum1: Double
        if switch1.isOn {
            //マイナスをつけるだけで良い
            signedNum1 = -num1
        }else{
             signedNum1 = num1
        }
        label1.text = String(signedNum1)
        //定数の追加
        let signedNum2: Double
        if switch2.isOn {
            signedNum2 = -num2
        }else{
            signedNum2 = num2
        }
        label2.text = String(signedNum2)
        //数値の計算でも結果をStringで括って肩の変更ができる。
        resultLabel.text = String(signedNum1 + signedNum2)
    }
    
}

