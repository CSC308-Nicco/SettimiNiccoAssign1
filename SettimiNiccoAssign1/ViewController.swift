//
//  ViewController.swift
//  SettimiNiccoAssign1
//
//  Created by Settimi, Niccolo B. on 2/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var conversionOutput: UILabel!
    @IBOutlet weak var conversionInput: UITextField!
    
    @IBOutlet weak var conversionTypeBtn: UIButton!
    
    @IBAction func conversionTypeBtnPress(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        
        let cToFAction = UIAlertAction(title: "Celsius to Fahrenheit", style: .default) {_ in self.conversionTypeBtn.setTitle("C to F", for: .normal)}
        
        let fToCAction = UIAlertAction(title: "Fahrenheit to Celsius", style: .default) {_ in self.conversionTypeBtn.setTitle("F to C", for: .normal)}
        
        let kToMAction = UIAlertAction(title: "Kilometers To Miles", style: .default) {_ in self.conversionTypeBtn.setTitle("Km to Miles", for: .normal)}
              
        let mToKAction = UIAlertAction(title: "Miles To Kilometers", style: .default) {_ in self.conversionTypeBtn.setTitle("Miles to Km", for: .normal)}
        
        actionSheet.addAction(cToFAction)
        actionSheet.addAction(fToCAction)
        actionSheet.addAction(kToMAction)
        actionSheet.addAction(mToKAction)
        
        present(actionSheet, animated: true)
    }
    @IBAction func convertBtnPress(_ sender: UIButton) {
        let inputValue = Double(conversionInput.text!)!
        let conversionType = conversionTypeBtn.currentTitle!
        var result: Double = 0
        
        switch (conversionType)
        {
            case "C to F":
            result = inputValue * 9/5 + 32
            
            case "F to C":
            result = (inputValue - 32) * 5/9
            
            case "Km to Miles":
            result = inputValue * 0.621371
            
            case "Miles to Km":
            result = inputValue / 0.621371
            
            default:
            return
        }
        
        conversionOutput.text = String(format: "%.4f", result)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

