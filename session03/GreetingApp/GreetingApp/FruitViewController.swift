//
//  FruitViewController.swift
//  GreetingApp
//
//  Created by DAMII on 24/09/24.
//

import UIKit

class FruitViewController: UIViewController {
    
    var completion: ((String) -> Void)?

    @IBAction func fruitWasChosen(_ sender: UIButton) {
        guard let label = sender.titleLabel else { 
            return }
        
        guard let fruit = label.text else {

            return }
        
        guard let completion = completion else { 

            return }
dismiss(animated: true)
        completion(fruit)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

   
}
