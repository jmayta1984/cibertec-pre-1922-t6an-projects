//
//  ViewController.swift
//  DemoApp
//
//  Created by DAMII on 17/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBAction func sayHi(_ sender: UIButton) {
        if let name = nameTextField.text {
            greetingLabel.text = "Hi, \(name)"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

