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
    var calculatorManager = CalculatorManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - func
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        
        calculatorManager.calculate(buttonTitle: sender.currentTitle!, first: firstText.text!, second: secondText.text!)
        
        result = calculatorManager.getResult()
        guard let resultVC = storyboard?.instantiateViewController(withIdentifier: "resultVC") as? ResultViewController else {return}
        resultVC.firstVCdata = String(result!)
        resultVC.modalPresentationStyle = .fullScreen
        present(resultVC, animated: true)
        
        firstText.text = ""
        secondText.text = ""
        
    }
}


