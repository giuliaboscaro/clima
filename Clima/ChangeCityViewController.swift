//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Giulia Boscaro on 02/12/2018.
//

import UIKit


protocol ChangeCityDelegate {
    func userEntederedCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    var delegate : ChangeCityDelegate?
    
    @IBOutlet weak var changeCityTextField: UITextField!

    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEntederedCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
