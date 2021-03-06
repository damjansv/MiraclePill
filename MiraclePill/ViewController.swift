//
//  ViewController.swift
//  MiraclePill
//
//  Created by AD on 8/1/17.
//  Copyright © 2017 AD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var enterYourCountry: UITextField!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var enterYourZipCode: UITextField!
    
    let states = ["Alaska", "Alabama", "Arkansas", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        country.isHidden = true
        enterYourCountry.isHidden = true
        zipCode.isHidden = true
        enterYourZipCode.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        country.isHidden = false
        enterYourCountry.isHidden = false
        zipCode.isHidden = false
        enterYourZipCode.isHidden = false
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
    }
}

