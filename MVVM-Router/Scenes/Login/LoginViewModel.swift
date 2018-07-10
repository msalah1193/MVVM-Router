//
//  LoginViewModel.swift
//  MVVM-Router
//
//  Created by Mohamed Salah on 7/9/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import Foundation

class LoginViewModel {
    var username: String?
    
    func login(completion: () -> Void) {
        username = "Username is Mohamed Salah 11"
        completion()
    }
}
