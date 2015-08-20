//
//  ViewController.swift
//  captureBlur
//
//  Created by Takuya Okamoto on 2015/08/20.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg = UIImageView(image: UIImage(named: "ifttt"))
        bg.frame = view.frame
        view.addSubview(bg)
        
        NSTimer.schedule(delay: 1) { timer in
            let capturedImg: UIImage = self.view.screenShot().horizontalInversion().blurEffect(50)
            let secondVC = SecondViewController()
            secondVC.capturedImg = capturedImg
            secondVC.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
            self.presentViewController(secondVC, animated: true, completion: nil)
        }
    }
}










