//
//  BezierUIView.swift
//  DropIt
//
//  Created by Hanzhou Shi on 1/17/16.
//  Copyright © 2016 USF. All rights reserved.
//

import UIKit

class BezierUIView: UIView {
    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
    
    func setPath(path: UIBezierPath?, named name: String) {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
    private var bezierPaths = [String:UIBezierPath]()
}
