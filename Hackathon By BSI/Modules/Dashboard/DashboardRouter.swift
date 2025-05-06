//
//  DashboardRouter.swift
//  Hackathon By BSI
//
//  Created by MACBOOK PRO M1 2020 on 02/05/25.
//  
//

import Foundation
import UIKit

class DashboardRouter: BaseRouter {
    
    func showView() -> DashboardViewController {
        let interactor = DashboardInteractor()
        let presenter = DashboardPresenter(interactor: interactor)
        let view = DashboardViewController(presenter: presenter)
        presenter.view = view
        
        return view
    }
    
}
