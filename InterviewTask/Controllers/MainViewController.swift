//
//  MainViewController.swift
//  InterviewTask
//
//  Created by כפיר פנירי on 06/02/2021.
//

import UIKit
import ChameleonFramework

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundColor()

    }
    
    
    func backgroundColor(){
    let colors:[UIColor] = [
    UIColor.flatLime(),
        UIColor.flatMint()]
        view.backgroundColor = UIColor(gradientStyle: UIGradientStyle.radial,withFrame: view.frame, andColors:colors)
    }

}
