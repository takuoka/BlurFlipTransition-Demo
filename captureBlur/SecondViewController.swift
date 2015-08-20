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
        
        let effect = UIBlurEffect(style: UIBlurEffectStyle.ExtraLight)
        let effectView = UIVisualEffectView(effect: effect)
        effectView.frame = view.frame
        view.addSubview(effectView)

        
        let label = UILabel()
        label.text = "second view controller"
        label.frame = CGRectMake(0, 0, 300, 300)
        label.font = UIFont.systemFontOfSize(30)
        label.numberOfLines = 0
        label.center = view.center
        view.addSubview(label)
    }
}


