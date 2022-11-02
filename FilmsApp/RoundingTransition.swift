//
//  RoundingTransition.swift
//  TeacherScene
//
//  Created by Vasily Maslov on 25.10.2022.
//

import UIKit

class RoundingTransition: NSObject {
    var round = UIView()
    
    var start = CGPoint.zero {
        didSet {
            round.center = start
        }
    }
    
    var roundColor = UIColor.red
    
    var time = 0.3
    
    enum RoundingTransitionProfile: Int {
        case show, cancel, pop
    }
    
    var transitionProfile: RoundingTransitionProfile = .show
}

extension RoundingTransition: UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return time
    }
    
    func roundFrame(withViewCenter viewCenter: CGPoint, size viewSize: CGSize, startPoint: CGPoint) -> CGRect {
        return CGRect()
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let container = transitionContext.containerView
        
        if transitionProfile == .show {
            if let showedView = transitionContext.view(forKey: UITransitionContextViewKey.to) {
                let viewCenter = showedView.center
                let viewSize = showedView.frame.size
                
                round = UIView()
                
                round.frame = roundFrame(withViewCenter: viewCenter, size: viewSize, startPoint: start)
                round.layer.cornerRadius = round.frame.size.height / 2
                round.backgroundColor = roundColor
                round.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
                container.addSubview(round)
                
                showedView.center = start
                showedView.transform = CGAffineTransform(scaleX: 0.001, y: 0.001)
            }
        } else {
            
        }
    }
    
    
    
}
