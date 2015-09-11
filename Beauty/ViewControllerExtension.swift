//
//  ViewControllerExtension.swift
//  Beauty
//
//  Created by Cyrilshanway on 2015/9/11.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

import UIKit

extension ViewController : UIPickerViewDataSource {
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return beauties.count
    }
}


extension ViewController : UIPickerViewDelegate {
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
    
        return beauties[row]
    }
}
