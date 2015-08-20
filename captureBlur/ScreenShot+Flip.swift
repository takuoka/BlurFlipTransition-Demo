//
//  ScreenShot+Flip.swift
//  captureBlur
//
//  Created by Takuya Okamoto on 2015/08/20.
//  Copyright (c) 2015年 Uniface. All rights reserved.
//

import UIKit

extension UIView {
    func screenShot() -> UIImage {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 0.0)
        let context: CGContextRef = UIGraphicsGetCurrentContext()
        self.layer.renderInContext(context)
        let capturedImage : UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return capturedImage
    }
}

extension UIImage {
    func horizontalInversion() -> UIImage {
        let imgRef: CGImageRef = self.CGImage
        UIGraphicsBeginImageContext(self.size)
        let context: CGContextRef = UIGraphicsGetCurrentContext()
        CGContextTranslateCTM(context, self.size.width, self.size.height)
        CGContextScaleCTM(context, -1.0, -1.0)
        CGContextDrawImage(context, CGRectMake(0, 0, self.size.width, self.size.height), imgRef)
        let inverseImage: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return inverseImage
    }
}

