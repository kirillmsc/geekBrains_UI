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
    
    @objc func keyboardWasShown(notification: Notification) {
        let info = notification.userInfo as NSDictionary?
        let keyboardSize = (info?.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentsInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        
        scrollView.contentInset = contentsInsets
        scrollView.scrollIndicatorInsets = contentsInsets
    }
    
    @objc func keyboardWasHidden(notification: Notification) {
        let contentsInsets = UIEdgeInsets.zero
        
        scrollView.contentInset = contentsInsets
        scrollView.scrollIndicatorInsets = contentsInsets
    }
    
}

