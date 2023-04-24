//
//  NewAccViewController.swift
//  smollTest
//
//  Created by MacBook Pro on 25/4/23.
//

import UIKit

class NewAccViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressedLoginBtn(sender:UIButton) {
        let name = userNameTextField.checkForEmptiness()
        let email = emailTextField.checkForEmptiness()
        let number = numberTextField.checkForEmptiness()
        let password = passwordTextField.checkForEmptiness()
        if name && email && number && password {
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "ForgotViewController") as! ForgotViewController
            vc.email = emailTextField.text
            self.present(vc, animated: true)
        }
    }
}
