//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Dendej Sawarnkatat on 11/25/14.
//  Copyright (c) 2014 Dendej Sawarnkatat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menShoeSizeTextField: UITextField!
    @IBOutlet weak var menConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = menShoeSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt()
        let sizeFromTextField = menShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        menConvertedShoeSizeLabel.hidden = false
        menConvertedShoeSizeLabel.text = "\(conversionConstant + sizeFromTextField)" + "in European Shoe Size"
    }

}

