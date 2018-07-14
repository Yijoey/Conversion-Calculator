//
//  CalculatorViewController.swift
//  ConversionCalculator
//
//  Created by 赵益 on 7/14/18.
//  Copyright © 2018 Yi Zhao. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

   
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!

    @IBAction func convert(_ sender: Any) {
        let alert = UIAlertController(title: "choose converter",message:nil,preferredStyle:UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title:"fahrenheit to celcius",style:UIAlertActionStyle.default,handler:{ (alertAction) -> Void in
        self.inputDisplay.text = "°F"
        self.outputDisplay.text = "°C"
        }))
        
        alert.addAction(UIAlertAction(title:"celcius to fahrenheit",style:UIAlertActionStyle.default,handler:{ (alertAction) -> Void in
            self.inputDisplay.text = "°C"
            self.outputDisplay.text = "°F"
        }))
        alert.addAction(UIAlertAction(title:"miles to kilometers",style:UIAlertActionStyle.default,handler:{ (alertAction) -> Void in
            self.inputDisplay.text = "mi"
            self.outputDisplay.text = "km"
        }))
        alert.addAction(UIAlertAction(title:"kilometers to miles",style:UIAlertActionStyle.default,handler:{ (alertAction) -> Void in
            self.inputDisplay.text = "km"
            self.outputDisplay.text = "mi"
        }))
        
         self.present(alert, animated: true, completion: nil)
    }
    struct Converter{
        var Label: String
        var input: String
        var output: String
    }
    var converters = [
        Converter(Label: "fahrenheit to celcius", input: "°F", output: "°C"),
        Converter(Label: "celcius to fahrenheit", input:"°C", output: "°F"),
        Converter(Label: "miles to kilometers", input: "mi", output: "km"),
        Converter(Label: "kilometers to miles", input: "km", output: "mi")
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        outputDisplay.textAlignment = .right
        inputDisplay.textAlignment = .right
        self.outputDisplay.text = "°C"
        self.inputDisplay.text = "°F"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


