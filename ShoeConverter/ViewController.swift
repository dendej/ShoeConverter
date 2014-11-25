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
    
    @IBOutlet weak var womenShoeSizeTextField: UITextField!
    @IBOutlet weak var womenConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = menShoeSizeTextField.text.toInt()!
//        let conversionConstant = 30
        
//        menConvertedShoeSizeLabel.text = "\(conversionConstant + sizeFromTextField)" + " in European Shoe Size"
        menConvertedShoeSizeLabel.hidden = false
        menConvertedShoeSizeLabel.text = doConvert(menShoeSizeTextField.text, conStr: "30")
    }

    @IBAction func convertWomenShoeSizePressed(sender: UIButton) {
//        let sizeFromTextField = Double((womenShoeSizeTextField.text as NSString).doubleValue)
//        let conversionConstant = 30.5
        
//        womenConvertedShoeSizeLabel.text = "\(conversionConstant + sizeFromTextField)" + " in European Shoe Size"
        womenConvertedShoeSizeLabel.hidden = false
        womenConvertedShoeSizeLabel.text = doConvert(womenShoeSizeTextField.text, conStr: "30.5")
    }
    
    func doConvert(sizeStr:String, conStr:String)->String {
        var result:String
        if conStr.toInt() != nil {
            result = "\(conStr.toInt()! + sizeStr.toInt()!)"
            print(result)
        } else {
            result = "\((conStr as NSString).doubleValue + (sizeStr as NSString).doubleValue)"
            print(result)
        }
        return result + " in European Shoe Size"
    }
}

