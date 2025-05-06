//
//  ChallengeRouter.swift
//  Hackathon By BSI
//
//  Created by MCO on 02/05/25.
//

import Foundation

class ChallengeRouter: BaseRouter {
    func showView() -> ChallengeViewController {
        let interactor = ChallengeInteractor()
        let presenter = ChallengePresenter(interactor: interactor)
        let view = ChallengeViewController(nibName: String(describing: ChallengeViewController.self), bundle: nil)
        view.presenter = presenter
        return view
    }
}
