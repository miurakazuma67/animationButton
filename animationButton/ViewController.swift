//
//  ViewController.swift
//  animationButton
//
//  Created by 三浦　一真 on 2021/05/11.
//
import Lottie
import UIKit

final class ViewController: UIViewController {
    
    private var animationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func addAnimationView() {
        animationView = AnimationView(name: "29219-star-smash")
        animationView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        animationView.isUserInteractionEnabled = true
        view.addSubview(animationView)
        animationView.play { finished in
            if finished {
                self.animationView.removeFromSuperview()
            }
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        addAnimationView()
    }
}

