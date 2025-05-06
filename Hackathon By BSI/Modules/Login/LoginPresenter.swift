//
//  LoginPresenter.swift
//  Hackathon By BSI
//
//  Created by MACBOOK PRO M1 2020 on 02/05/25.
//  
//

import Foundation
import UIKit

class LoginPresenter: BasePresenter {

    // MARK: Properties
    weak var view: LoginViewController?
    var interactor: LoginInteractor
    var router = LoginRouter()
    
    init(interactor: LoginInteractor) {
        self.interactor = interactor
    }
    
    func login(from navigation: UINavigationController) {
        router.navigateToDashboard(from: navigation)
    }
}
