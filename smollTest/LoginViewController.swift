//
//  ViewController.swift
//  smollTest
//
//  Created by MacBook Pro on 22/4/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presseBtnLogin(sender: UIButton) {
        let login = loginTextField.checkForEmptiness()
        let password = passwordTextField.checkForEmptiness()
    }
    
    @IBAction func securyEyeBtn(sender: UIButton) {
        if passwordTextField.isSecureTextEntry {
            let image = UIImage(systemName: "eye.fill")
            sender.setImage(image, for: .normal)
            
            passwordTextField.isSecureTextEntry = false
        } else {
            let image = UIImage(systemName: "eye.slash.fill")
            sender.setImage(image, for: .normal)
            
            passwordTextField.isSecureTextEntry = true
        }
    }
    

}


extension UITextField {
    
    //for change color placeholder
    func placeholderColor(color: UIColor) {
        let placeholder = self.placeholder ?? "" //There should be a placeholder set in storyboard or elsewhere string or pass empty
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor : color])
    }
    func checkForEmptiness() -> Bool{
        if self.text?.isEmpty == true {
            
            self.placeholder = "Заполните, пожалуйста"
            let color: UIColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 0.5)
            self.layer.borderColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 0.5)
            self.layer.borderWidth = 2
            self.placeholderColor(color: color)
            return false
        } else {
            let color: UIColor = #colorLiteral(red: 0.6470588446, green: 0.6470588446, blue: 0.6470588446, alpha: 0.4804852214)
            self.layer.borderColor = #colorLiteral(red: 0, green: 0.4470588235, blue: 0.8823529412, alpha: 0.04303413037)
            self.placeholder = "name"
            self.placeholderColor(color: color)
            return true
        }
    }
}
