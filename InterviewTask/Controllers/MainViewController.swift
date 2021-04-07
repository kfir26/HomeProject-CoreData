//
//  MainViewController.swift
//  InterviewTask
//
//  Created by כפיר פנירי on 06/02/2021.
//

import UIKit
import ChameleonFramework
import Lottie

class MainViewController: UIViewController {
    
    @IBOutlet weak var animation:UIView!
    @IBOutlet weak var openScreen:AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColor()
        lottieAnimation()
        
    }
    
    func lottieAnimation(){
        openScreen.frame = view.bounds
        openScreen.animation = Animation.named("41627-boat")
        openScreen.contentMode = .scaleToFill
        openScreen.loopMode = .loop
        openScreen.play()
        view.addSubview(openScreen)
    }
    
    
    func backgroundColor(){
        let colors:[UIColor] = [
            UIColor.flatLime(),
            UIColor.flatMint()]
        view.backgroundColor = UIColor(gradientStyle: UIGradientStyle.radial,withFrame: view.frame, andColors:colors)
    }
    
}
