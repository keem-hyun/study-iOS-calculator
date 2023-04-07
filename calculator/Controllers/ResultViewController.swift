//
//  resultViewController.swift
//  calculator
//
//  Created by 김강현 on 2023/04/05.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultData: UILabel!
    var firstVCdata : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultData.text = firstVCdata

    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        resultData.text = ""
        dismiss(animated: true)
    }
}
