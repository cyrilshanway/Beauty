//
//  Gallery.swift
//  Beauty
//
//  Created by Cyrilshanway on 2015/9/11.
//  Copyright (c) 2015年 Cyrilshanway. All rights reserved.
//

import Foundation
import UIKit

class Gallery: UIViewController {
    
    var imageName:String?
    
    @IBOutlet weak var beautyImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if imageName != nil {
            beautyImg.image = UIImage(named: imageName!)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


