//
//  CustomSegue.swift
//  geekBrainsProj
//
//  Created by k.kochemasov on 13/05/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    override func perform() {
        
        let animationDuration = 0.5
        
        guard let containerView = source.view else {return}
        
        containerView.addSubview(destination.view)
        source.view.frame = containerView.frame
        destination.view.frame = containerView.frame
        destination.view.transform = CGAffineTransform(translationX: source.view.bounds.width, y: source.view.bounds.height)
        
        UIView.animate(withDuration: animationDuration, animations: {
            self.destination.view.transform = .identity
        }, completion: { finished in
            self.source.present(self.destination, animated: false)
        })
    }
}
