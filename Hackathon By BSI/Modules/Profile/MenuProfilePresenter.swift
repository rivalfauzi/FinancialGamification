//
//  MenuProfilePresenter.swift
//  Hackathon By BSI
//
//  Created by MCO on 02/05/25.
//

import Foundation
import UIKit

class MenuProfilePresenter: BasePresenter {
    private let interactor: MenuProfileInteractor
    private let routerMenuProfile = MenuProfileRouter()
    
    init(interactor: MenuProfileInteractor) {
        self.interactor = interactor
    }
    
    func navigateToChallenge(from navigation: UINavigationController) {
        routerMenuProfile.navigationToChallengeRouter(from: navigation)
    }
}
