//
//  ConverterViewController.swift
//  ConversionCalculator
//
//  Created by Logan VanDerBeck on 11/9/17.
//  Copyright © 2017 Logan VanDerBeck. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    let converters:[Converter] = [
        Converter(label: "Fahrenheit -> Celcius", inputUnit: "°F", outputUnit: "°C"),
        Converter(label: "Celcius -> Fahrenheit", inputUnit: "°C", outputUnit: "°F"),
        Converter(label: "Miles -> Kilometers", inputUnit: "mi", outputUnit: "km"),
        Converter(label: "Kilometers -> Miles", inputUnit: "km", outputUnit: "mi")
    ]
    
    @IBOutlet weak var OutputDisplay: UITextField!
    
    @IBOutlet weak var InputDisplay: UITextField!
    
    @IBAction func convertTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: nil, message: "Choose a Converter", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        for converter in converters{
            alert.addAction(UIAlertAction(title: converter.label, style: UIAlertActionStyle.default, handler: {
                (alertAction) -> Void in
                self.InputDisplay.text = converter.inputUnit
                self.OutputDisplay.text = converter.outputUnit
            }))
        
    }
        self.present(alert, animated: true, completion: nil)
}
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultConverter = converters[0]
        
        InputDisplay.text = defaultConverter.inputUnit
        OutputDisplay.text = defaultConverter.outputUnit
    }
        // Do any additional setup after loading the view.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
