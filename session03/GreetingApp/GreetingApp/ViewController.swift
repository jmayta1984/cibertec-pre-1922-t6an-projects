//
//  ViewController.swift
//  GreetingApp
//
//  Created by DAMII on 24/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let name = nameTextField.text else { return }
        guard let vc = segue.destination as? GreetingViewController else { return }
        vc.name = name
    }
    
}

