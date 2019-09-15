//
//  BackgroundViewViewController.swift
//  iOSProject
//
//  Created by Magdalena on 15/09/2019.
//  Copyright © 2019 Magdalena. All rights reserved.
//

import UIKit

class BackgroundViewViewController: UIViewController {
    @IBOutlet weak var Bg: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a gradient layer.
        let gradientLayer = CAGradientLayer()
        // Set the size of the layer to be equal to size of the display.
        gradientLayer.frame = view.bounds
        // Set an array of Core Graphics colors (.cgColor) to create the gradient.
        // This example uses a Color Literal and a UIColor from RGB values.
        gradientLayer.colors = [#colorLiteral(red: 0, green: 0.5725490196, blue: 0.2705882353, alpha: 1).cgColor, UIColor(red: 252/255, green: 238/255, blue: 33/255, alpha: 1).cgColor]
        // Rasterize this static layer to improve app performance.
        gradientLayer.shouldRasterize = true
        // Apply the gradient to the backgroundGradientView.
        Bg.layer.addSublayer(gradientLayer)
        // Do any additional setup after loading the view.
        // Horizontal: left to right.
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5) // Left side.
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5) // Right side.
    }
    
    override var shouldAutorotate: Bool {
        return false
    }

}
