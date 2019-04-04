//
//  ViewController.swift
//  lesson_01
//
//  Created by k.kochemasov on 02/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        if usernameInput.text == "admin" && passwordInput.text == "password" {
            print("Authorization successfull")
        } else {
            print("Access denied")
        }
    }
    
    @IBAction func regButton(_ sender: UIButton) {
    }
    
}

