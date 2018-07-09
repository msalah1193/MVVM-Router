//
//  HomeViewController.swift
//  MVVM-Router
//
//  Created by Mohamed Salah on 7/9/18.
//  Copyright © 2018 Mohamed Salah. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var usernameLabel: UILabel!
    
    // MARK: - Variables
    var viewModel: HomeViewModel!
    
    // MARK: - init(s)
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        viewModel = HomeViewModel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameLabel.text = viewModel.username
    }
}
