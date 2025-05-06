//
//  MenuProfileView.swift
//  Hackathon By BSI
//
//  Created by MCO on 02/05/25.
//

import UIKit
import AVFoundation
import PhotosUI

class MenuProfileView: BaseViewController, UIAdaptivePresentationControllerDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var accountSetting: UILabel!
    @IBOutlet weak var others: UILabel!
    @IBOutlet weak var appVersionLabel: UILabel!

    //MARK: - Menu Button
    @IBOutlet weak var callCenterButton: UIButton!
    @IBOutlet weak var atmLocationButton: UIButton!
    @IBOutlet weak var chatAisyahButton: UIButton!
    @IBOutlet weak var accountInformationButton: UIButton!
    @IBOutlet weak var loginSecurityButton: UIButton!
    @IBOutlet weak var smsNotifButton: UIButton!
    @IBOutlet weak var limitInformationButton: UIButton!
    @IBOutlet weak var proxyBiFastButton: UIButton!
    @IBOutlet weak var kursGoldInformationButton: UIButton!
    @IBOutlet weak var helpCenterButton: UIButton!
    @IBOutlet weak var transactionComplaintButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var manajementTrxButton: UIButton!
    
    //Title
    @IBOutlet weak var callBSILabel: UILabel!
    @IBOutlet weak var chatAisyahLabel: UILabel!
    @IBOutlet weak var atmAndBranchLabel: UILabel!
    @IBOutlet weak var accountInfoLabel: UILabel!
    @IBOutlet weak var loginAndSecurityLabel: UILabel!
    @IBOutlet weak var transactionSettingLabel: UILabel!
    @IBOutlet weak var manageTransactionLabel: UILabel!
    @IBOutlet weak var manageBifastLabel: UILabel!
    @IBOutlet weak var setLimitLabel: UILabel!
    @IBOutlet weak var smsNotificationLabel: UILabel!
    @IBOutlet weak var transactionReportingLabel: UILabel!
    @IBOutlet weak var kursInfoLabel: UILabel!
    @IBOutlet weak var helpCenterLabel: UILabel!
    @IBOutlet weak var logoutLabel: UILabel!
    @IBOutlet weak var changeLanguageButton: UIButton!

    var picker = UIImagePickerController()
    var hideThirdButton: Bool = false
    var popupSMSNotif: Bool = false
    var imageURL: String?
    var nameAlias: String?
    var deletePhotoCallback: (() -> Void)?
    
    var presenter: MenuProfilePresenter
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    init(presenter: MenuProfilePresenter) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    override func viewDidAppear(_ animated: Bool) {
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
}

extension MenuProfileView {
    func setup() {
        setupView()
    }

    
    func setupView() {
        self.picker.allowsEditing = true
        picker.presentationController?.delegate = self

        userImageView.layer.cornerRadius = userImageView.frame.height/2
        userImageView.layer.masksToBounds = true
//        userImage.layer.cornerRadius = userImage.frame.height/2
        imageView.layer.cornerRadius = imageView.frame.height/2
        
        scrollView.showsVerticalScrollIndicator = false

        
        }
    
    func setupAction() {
        limitInformationButton.addTarget(self, action: #selector(navigateToChallenge), for: .touchUpInside)
    }
    
    @objc func navigateToChallenge() {
        guard let navigation = self.navigationController else {return}
        presenter.navigateToChallenge(from: navigation)
    }

}


