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
        
        if animation < 8 {
            UIView.animate(withDuration: 1, delay: 0, options: []) {
                switch self.animation {
                case 0: self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                case 1: self.imageView.transform = .identity
                case 2: self.imageView.transform = CGAffineTransform(translationX: -100, y: -50)
                case 3: self.imageView.transform = CGAffineTransform(translationX: 100, y: 50)
                case 4: self.imageView.transform = .identity
                case 5: self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
                case 6: self.imageView.alpha = 0.1
                    self.imageView.backgroundColor = .systemRed
                case 7: self.imageView.alpha = 1
                    self.imageView.backgroundColor = .clear
                default:
                    break
                }
            } completion: { _ in
                sender.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: []) {
                switch self.animation {
                case 8: self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                case 8: self.imageView.transform = .identity
                case 10: self.imageView.transform = CGAffineTransform(translationX: -100, y: -50)
                case 11: self.imageView.transform = CGAffineTransform(translationX: 100, y: 50)
                case 12: self.imageView.transform = .identity
                case 13: self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
                case 14: self.imageView.alpha = 0.1
                    self.imageView.backgroundColor = .systemRed
                case 15: self.imageView.alpha = 1
                    self.imageView.backgroundColor = .clear
                default:
                    break
                }
            } completion: { _ in
                sender.isHidden = false
            }
        }

        animation += 1
        if animation > 15 { animation = 0 }
    }
    
}

