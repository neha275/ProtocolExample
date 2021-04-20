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
        
        switch selectedColorIndex {
        case 0:
            self.view.backgroundColor = UIColor(named: "option1")
            break
        case 1:
            self.view.backgroundColor = UIColor(named: "option2")
            break
        default:
            self.view.backgroundColor = UIColor(named: "option3")
        }
    }
    
    
}

