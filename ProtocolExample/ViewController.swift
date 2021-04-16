//
//  ViewController.swift
//  ProtocolExample
//
//  Created by Neha Gupta on 16/04/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "" {
            let colorViewController =  segue.destination as! ColorsViewController
            colorViewController.colorDelegate = self
        }
    }


}

extension ViewController : BackgroundColor {
    func setBackgroundColor(selectedColorIndex: Int) {
        
    }
    
    
}

