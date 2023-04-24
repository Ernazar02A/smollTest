//
//  ForgotViewController.swift
//  smollTest
//
//  Created by MacBook Pro on 25/4/23.
//

import UIKit

class ForgotViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    var email: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.text = email
    }

    

}
