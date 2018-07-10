//
//  LoginRouter.swift
//  MVVM-Router
//
//  Created by Mohamed Salah on 7/9/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import UIKit

protocol LoginRouter {
    typealias Route = LoginViewController.LoginRoute
    
    weak var viewController: LoginViewController! { get }
    init(viewController: LoginViewController)
    
    func navigate(to route: Route)
    func prepare(for segue: UIStoryboardSegue)
}

class DefaultLoginRouter: LoginRouter {
    weak var viewController: LoginViewController!
    
    required init(viewController: LoginViewController) {
        self.viewController = viewController
    }
    
    func navigate(to route: Route) {
        viewController.performSegue(withIdentifier: route.rawValue, sender: nil)
    }
    
    func prepare(for segue: UIStoryboardSegue) {
        guard let segueID = segue.identifier,
            let route = LoginViewController.LoginRoute(rawValue: segueID)  else {
            return
        }
        
        switch route {
        case .home:
            passDataToHome(segue)
        case .resetPassword:
            break
        }
    }
}

// MARK: - extension for passing data logic
extension DefaultLoginRouter {
    private func passDataToHome(_ segue: UIStoryboardSegue) {
        let homeVC = segue.destination as! HomeViewController
        homeVC.viewModel.username = viewController.viewModel.username
    }
}
