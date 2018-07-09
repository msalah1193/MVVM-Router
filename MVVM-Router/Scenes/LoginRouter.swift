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
    func navigate(to route: Route, from viewController: UIViewController, sender: Any?)
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}

struct DefaultLoginRouter: LoginRouter {
    func navigate(to route: Route, from viewController: UIViewController, sender: Any?) {
        viewController.performSegue(withIdentifier: route.rawValue, sender: sender)
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let segueID = segue.identifier,
            let route = LoginViewController.LoginRoute(rawValue: segueID)  else {
            return
        }
        
        switch route {
        case .home:
            passDataToHome(segue, sender: sender)
        case .resetPassword:
            break
        }
    }
}

extension DefaultLoginRouter {
    private func passDataToHome(_ segue: UIStoryboardSegue, sender: Any?) {
        let homeVC = segue.destination as! HomeViewController
        homeVC.viewModel.username = sender as? String
    }
}
