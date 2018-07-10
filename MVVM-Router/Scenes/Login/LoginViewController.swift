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
    @IBOutlet weak var btnHome: UIButton!
    @IBOutlet weak var btnResetPassword: UIButton!
    
    // MARK: - Routes
    enum LoginRoute: String {
        case home
        case resetPassword
    }
    
    // MARK: - Variables
    var viewModel: LoginViewModel!
    var router: LoginRouter!
    
    // MARK: - init(s)
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        router = DefaultLoginRouter(viewController: self)
        viewModel = LoginViewModel()
    }
    
    // MARK: - View Events
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnHome.layer.cornerRadius = 5.0
        btnResetPassword.layer.cornerRadius = 5.0
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.prepare(for: segue)
    }

    // MARK: - IBActions
    @IBAction func presentHome(_ sender: Any) {
        viewModel.login {
            self.router.navigate(to: .home)
        }
    }
    
    @IBAction func presentResetPassword(_ sender: Any) {
        router.navigate(to: .resetPassword)
    }
    
}

