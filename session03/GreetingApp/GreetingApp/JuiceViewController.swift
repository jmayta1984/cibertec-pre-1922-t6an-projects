//
//  JuiceViewController.swift
//  GreetingApp
//
//  Created by DAMII on 24/09/24.
//

import UIKit

class JuiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var juiceLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let vc = segue.destination as? FruitViewController else { return }
        vc.completion = { fruit in
            self.juiceLabel.isHidden = false
            self.juiceLabel.text = fruit
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
