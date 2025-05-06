//
//  BadgesSheetViewController.swift
//  Hackathon By BSI
//
//  Created by Mora on 03/05/25.
//

import UIKit

class BadgesSheetViewController: UIViewController {

    @IBOutlet weak var badgesSheetView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        badgesSheetView.makeCornerRadius(8, maskedCorner: nil)
        badgesSheetView.layer.borderWidth = 1
        badgesSheetView.layer.borderColor = UIColor.gray.cgColor
    }



}
