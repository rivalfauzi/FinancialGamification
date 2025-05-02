//
//  LoginViewController.swift
//  Hackathon By BSI
//
//  Created by MACBOOK PRO M1 2020 on 02/05/25.
//  
//

import UIKit

class LoginViewController: BaseViewController {

    // MARK: - Properties
    var presenter: LoginPresenter
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    init(presenter: LoginPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension LoginViewController {
    // TODO: Implement View Output Methods
    
    private func setup() {
        
    }
}
