//
//  LoginViewController.swift
//  MVVM-Router
//
//  Created by Mohamed Salah on 7/9/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - IBOulets
    
    
    // MARK: - Routes
    enum LoginRoute {
        case home
        case resetPassword
    }
    
    // MARK: - View Events
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IBActions
    @IBAction func presentHome(_ sender: Any) {
        
    }
    
    @IBAction func presentResetPassword(_ sender: Any) {
        
    }
    
}

