//
//  GradientView.swift
//  Bankey
//
//  Created by Ryan Gallagher on 25/09/2023.
//

import UIKit

class GradientView: UIView {
    
    @IBInspectable
    var startColor: UIColor = .white
    
    @IBInspectable
    var endColor: UIColor = .black

    @IBInspectable
    var startPoint: CGPoint = CGPoint(x: 0.0, y: 0.0)

    @IBInspectable
    var endPoint: CGPoint = CGPoint(x: 0.0, y: 1.0)
    
    private let gradientLayerName = "Gradient"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupGradient()
    }
    
    func setupGradient() {
        var gradient: CAGradientLayer? = layer.sublayers?.first { $0.name == gradientLayerName } as? CAGradientLayer
        if gradient == nil {
            gradient = CAGradientLayer()
            gradient?.name = gradientLayerName
            layer.addSublayer(gradient!)
        }

        gradient?.startPoint = startPoint
        gradient?.endPoint = endPoint
        gradient?.frame = bounds
        gradient?.colors = [startColor.cgColor, endColor.cgColor]
        gradient?.zPosition = -1
    }
}
