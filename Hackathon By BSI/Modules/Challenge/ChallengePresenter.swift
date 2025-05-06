//
//  ChallengePresenter.swift
//  Hackathon By BSI
//
//  Created by MCO on 02/05/25.
//

import Foundation

class ChallengePresenter: BasePresenter {
    private let interactor: ChallengeInteractor
    private let routerMenuProfile = ChallengeRouter()
    
    init(interactor: ChallengeInteractor) {
        self.interactor = interactor
    }
}
