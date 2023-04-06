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
    var delegate: CalculateDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // MARK: - func

    @IBAction func plusButtonTapped(_ sender: UIButton) {
        guard let firstNum = Double(firstText.text!) else {return}
        guard let secondNum = Double(secondText.text!) else {return}
        
        result = firstNum + secondNum
//        if let firstNum = Double(firstText.text!),
//           let secondNum = Double(secondText.text!) {
//            result = firstNum + secondNum
//        } else {
//
//        }
        
        
        
        
        guard let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? resultViewController else {return}
        
        resultVC.firstVCdata = String(result!)
        present(resultVC, animated: true)
        
        firstText.text = ""
        secondText.text = ""
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        guard let firstNum = Double(firstText.text!) else {return}
        guard let secondNum = Double(secondText.text!) else {return}
        result = firstNum - secondNum


        guard let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? resultViewController else {return}

        resultVC.firstVCdata = String(result!)
        present(resultVC, animated: true)

        firstText.text = ""
        secondText.text = ""
    }

    @IBAction func multipleButtonTapped(_ sender: UIButton) {
        guard let firstNum = Double(firstText.text!) else {return}
        guard let secondNum = Double(secondText.text!) else {return}
        result = firstNum * secondNum


        guard let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? resultViewController else {return}

        resultVC.firstVCdata = String(result!)
        present(resultVC, animated: true)

        firstText.text = ""
        secondText.text = ""
    }

    @IBAction func divisonButtonTapped(_ sender: UIButton) {
        guard let firstNum = Double(firstText.text!) else {return}
        guard let secondNum = Double(secondText.text!) else {return}
        result = firstNum / secondNum


        guard let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? resultViewController else {return}

        resultVC.firstVCdata = String(result!)
        present(resultVC, animated: true)

        firstText.text = ""
        secondText.text = ""
    }
    
    
    
    
    
}


