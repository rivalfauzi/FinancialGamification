//
//  LoginRouter.swift
//  Hackathon By BSI
//
//  Created by MACBOOK PRO M1 2020 on 02/05/25.
//  
//

import Foundation
import UIKit

class LoginRouter: BaseRouter {
    
    func showView() -> LoginViewController {
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(interactor: interactor)
        let view = LoginViewController(presenter: presenter)
        presenter.view = view
        
        return view
    }
    
    func navigateToDashboard(from navigation: UINavigationController) {
        let view = DashboardRouter().showView()
        navigation.pushViewController(view, animated: true)
    }
    
}
