//
//  ViewController.swift
//  calculator
//
//  Created by 김강현 on 2023/04/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    var result: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - func
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        guard let firstNum = Double(firstText.text!) else {return}
        guard let secondNum = Double(secondText.text!) else {return}
        
        switch sender.currentTitle! {
        case "+":
            result = firstNum + secondNum
        case "-":
            result = firstNum - secondNum
        case "X":
            result = firstNum * secondNum
        case "%":
            result = firstNum / secondNum
        default:
            break
        }
        
        guard let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? resultViewController else {return}
        resultVC.firstVCdata = String(result!)
        resultVC.modalPresentationStyle = .fullScreen
        present(resultVC, animated: true)
        
        firstText.text = ""
        secondText.text = ""
        
    }
}


