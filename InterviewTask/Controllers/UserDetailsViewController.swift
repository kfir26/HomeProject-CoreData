//
//  UserDetailsViewController.swift
//  InterviewTask
//
//  Created by כפיר פנירי on 05/02/2021.
//

import UIKit
import CoreData
import ChameleonFramework
import Lottie

class UserDetailsViewController: UIViewController {
    
    @IBOutlet weak var animationX: UIView!
    @IBOutlet weak var greenScreen: AnimationView!
    
    @IBOutlet weak var FNameTextField: UITextField!
    @IBOutlet weak var LNameTextField: UITextField!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBAction func saveButton(_ sender: UIButton) {
        guard let users = users else {return}
        delegate?.dataDidChange(user: users)
    }
    
    @IBAction func firstNameTextFieldChange(_ sender: UITextField) {
        users?.first_name = FNameTextField.text ?? ""
    }
    
    @IBAction func lastNameTextFieldChange(_ sender: UITextField) {
        users?.last_name =
            LNameTextField.text ?? ""
    }
    
    var users:User?
    var delegate: UserDataChangeDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        setAll()
        lottieAnimation()
        myBackGroundStyle()
    }
    
    func lottieAnimation(){
        greenScreen.frame = view.bounds
        greenScreen.animation = Animation.named("20180-guy-typing")
        greenScreen.contentMode = .scaleToFill
        greenScreen.loopMode = .loop
        greenScreen.play()
        view.addSubview(greenScreen)
        
        }

    func setAll(){
        FNameTextField.text = users?.first_name
        LNameTextField.text = users?.last_name
    }
    
    func myBackGroundStyle(){
        let colors:[UIColor] = [
        UIColor.flatCoffee(),
        UIColor.flatSkyBlueColorDark()]
        view.backgroundColor = UIColor(gradientStyle: UIGradientStyle.leftToRight,withFrame: view.frame, andColors:colors)
    }
    
    
}
