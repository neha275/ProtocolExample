//
//  ColorsViewController.swift
//  ProtocolExample
//
//  Created by Neha Gupta on 16/04/21.
//

import UIKit

class ColorsViewController: UIViewController {

    
    var colorDelegate:BackgroundColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func onChooseColor(sender: AnyObject){
        dissmissView(selectedColor: sender.tag)
    }
    
    func dissmissView(selectedColor: Int) {
        self.dismiss(animated: true, completion: {()-> Void in
            self.colorDelegate?.setBackgroundColor(selectedColorIndex: selectedColor)
                        
                     
        })
    }

}
