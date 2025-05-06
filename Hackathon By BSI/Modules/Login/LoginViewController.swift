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
    @IBOutlet weak var loginButton: UIButton!
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
    
    func setup() {
        setupView()
    }
    
    private func setupView() {
        loginButton.setTitle(" Login", for: .normal)
        loginButton.tintColor = .primaryBSIGreen
        loginButton.setImage(UIImage(resource: .icLogin), for: .normal)
        loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
    }
    
    @objc func loginAction() {
        guard let navigation = self.navigationController else { return }
        presenter.login(from: navigation)
    }
}
