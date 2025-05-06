//
//  MenuProfileRouter.swift
//  Hackathon By BSI
//
//  Created by MCO on 02/05/25.
//

import Foundation
import UIKit

class MenuProfileRouter: BaseRouter {
    func showView() -> MenuProfileView {
        let interactor = MenuProfileInteractor()
        let presenter = MenuProfilePresenter(interactor: interactor)
        let view = MenuProfileView(presenter: presenter)
        view.presenter = presenter
        return view
    }
    
    func navigationToChallengeRouter(from navigation: UINavigationController) {
        let challengePage = ChallengeRouter().showView()
        navigation.pushViewController(challengePage, animated: true)
    }
}
