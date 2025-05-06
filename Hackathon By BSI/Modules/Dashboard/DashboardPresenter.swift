//
//  DashboardPresenter.swift
//  Hackathon By BSI
//
//  Created by MACBOOK PRO M1 2020 on 02/05/25.
//  
//

import Foundation

class DashboardPresenter: BasePresenter {

    // MARK: Properties
    weak var view: DashboardViewController?
    var interactor: DashboardInteractor
    var router = DashboardRouter()
    
    init(interactor: DashboardInteractor) {
        self.interactor = interactor
    }
    
    
}
