//
//  GreetingViewController.swift
//  GreetingApp
//
//  Created by DAMII on 24/09/24.
//

import UIKit

class GreetingViewController: UIViewController {

    var name: String?
    
    @IBOutlet weak private var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let name = name else { return }
        nameLabel.text = "Hi, \(name)"

    }
    
}
