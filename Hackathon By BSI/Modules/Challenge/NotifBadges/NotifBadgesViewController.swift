//
//  NotifBadgesViewController.swift
//  Hackathon By BSI
//
//  Created by Mora on 04/05/25.
//

import UIKit

class NotifBadgesViewController: UIViewController {

    @IBOutlet weak var buttonView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    func setupView() {
        buttonView.makeCornerRadius(20, maskedCorner: nil)
    }

}
