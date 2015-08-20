//
//  SecondViewController.swift
//  captureBlur
//
//  Created by Takuya Okamoto on 2015/08/20.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bg = UIImageView()
    var capturedImg: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bg.frame = view.frame
        bg.image = capturedImg
        view.addSubview(bg)
        
    }
}


