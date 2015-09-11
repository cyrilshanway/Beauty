//
//  ViewController.swift
//  Beauty
//
//  Created by Cyrilshanway on 2015/9/11.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰", "李冰冰", "王菲" ,"楊冪" ,"周迅"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beautyPicker.delegate = self
        beautyPicker.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery" {
            let index = beautyPicker.selectedRowInComponent(0)
            
            
            
            
            var imageName = String()
            
            switch index {
            case 0:
                imageName = "fangbingbing"
            case 1:
                imageName = "libingbing"
            case 2:
                imageName = "wangfei"
            case 3:
                imageName = "yangmi"
            case 4:
                imageName = "zhouu"
            default:
                imageName =  ""
            }
            
            var vc = segue.destinationViewController as! Gallery
            vc.imageName = imageName
            
        }
    }
    // 把button 連到Exit
    // Unwind segue
    @IBAction func close(segue:UIStoryboardSegue) {
        println("close")
    }
}

