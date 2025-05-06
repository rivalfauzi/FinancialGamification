//
//  DashboardViewController.swift
//  Hackathon By BSI
//
//  Created by MACBOOK PRO M1 2020 on 02/05/25.
//  
//

import UIKit

class DashboardViewController: BaseViewController {

    // MARK: - Properties
    @IBOutlet weak var homeHeader: UIView!
    @IBOutlet weak var homeHeaderBackground: UIImageView!
    @IBOutlet weak var homeHeaderLeftIcon: UIImageView!
    @IBOutlet weak var buttonLogout: UIButton!
    @IBOutlet weak var accountCard: UIView!
    @IBOutlet weak var chevronIcon: UIImageView!
    @IBOutlet weak var copyIcon: UIButton!
    @IBOutlet weak var transferButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    var presenter: DashboardPresenter
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    init(presenter: DashboardPresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension DashboardViewController {
    // TODO: Implement View Output Methods
    func setup() {
        setupView()
    }
    
    private func setupView() {
        buttonLogout.setTitle("", for: .normal)
        buttonLogout.setImage(UIImage(resource: .iconLogout), for: .normal)
        
        accountCard.layer.shadowColor = UIColor.init(red: 0, green: 0, blue: 0, alpha: 0.75).cgColor
        accountCard.layer.shadowOffset = CGSize(width: 3.0, height: 4.0)
        accountCard.layer.shadowRadius = 6
        accountCard.layer.shadowOpacity = 0.25
        accountCard.layer.masksToBounds = false
        
        chevronIcon.image = UIImage(systemName: "chevron.right")
        chevronIcon.tintColor = .black
        copyIcon.setTitle("", for: .normal)
        copyIcon.setImage(UIImage(systemName: "square.on.square"), for: .normal)
        copyIcon.tintColor = .systemGray
        profileButton.addTarget(self, action: #selector(navigateToProfile), for: .touchUpInside)
        transferButton.addTarget(self, action: #selector(navigateToTransfer), for: .touchUpInside)
        buttonLogout.addTarget(self, action: #selector(logout), for: .touchUpInside)
    }
    
    @objc func navigateToProfile() {
        guard let navigation = self.navigationController else { return }
        presenter.navigateToProfile(from: navigation)
    }
    
    @objc func navigateToTransfer() {
        guard let navigation = self.navigationController else { return }
        print("navigate to transfer")
    }
    
    @objc func logout() {
        guard let navigation = self.navigationController else { return }
        presenter.logout(from: navigation)
    }
}
