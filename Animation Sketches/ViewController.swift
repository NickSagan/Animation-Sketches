//
//  ViewController.swift
//  Animation Sketches
//
//  Created by Nick Sagan on 10.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var animation = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(image: UIImage(named: "dragon"))
        imageView.center = CGPoint(x: view.frame.midX, y: view.frame.midY)
        view.addSubview(imageView)
    }

    @IBAction func tapped(_ sender: UIButton) {
        
        sender.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, options: []) {
            switch self.animation {
            case 0:
                break
            default:
                break
            }
        } completion: { <#Bool#> in
            <#code#>
        }
        
//        UIView.animate(withDuration: 1, delay: 0, options: [],
//           animations: {
//            switch self.currentAnimation {
//            case 0:
//                break
//
//            default:
//                break
//            }
//        }) { finished in
//            sender.isHidden = false
//        }

        
        animation += 1
        if animation > 7 { animation = 0 }
    }
    
}

