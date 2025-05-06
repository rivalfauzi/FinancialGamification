//
//  ChallengeViewController.swift
//  Hackathon By BSI
//
//  Created by MCO on 02/05/25.
//

import UIKit

class ChallengeViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var challengeLabel: UILabel!
    @IBOutlet weak var badgesLabel: UILabel!
    @IBOutlet weak var progressBarChallenge: UIProgressView!
    @IBOutlet weak var challengeImage: UIImageView!
    @IBOutlet weak var seeAllButton: UIButton!
    @IBOutlet weak var badgesMainView: UIView!
    @IBOutlet weak var totalSavingView: UIView!
    @IBOutlet weak var totalXPView: UIView!
    @IBOutlet weak var totalSavingLabel: UILabel!
    @IBOutlet weak var totalXPLabel: UILabel!
    @IBOutlet weak var badgesCollectionView: UICollectionView!
    
    var presenter: ChallengePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        
        badgesCollectionView.delegate = self
        badgesCollectionView.dataSource = self
        
        let nib = UINib(nibName: "BadgesViewCell", bundle: nil)
        badgesCollectionView.register(nib, forCellWithReuseIdentifier: "BadgesViewCell")
        
        progressBarChallenge.progressTintColor = .systemGreen
        progressBarChallenge.trackTintColor = .lightGray

        badgesMainView.makeCornerRadius(8, maskedCorner: nil)
        badgesMainView.layer.borderWidth = 1
        badgesMainView.layer.borderColor = UIColor.gray.cgColor
        totalSavingView.makeCornerRadius(8, maskedCorner: nil)
        totalSavingView.layer.borderColor = UIColor.gray.cgColor
        totalSavingView.layer.borderWidth = 1
        totalXPView.makeCornerRadius(8, maskedCorner: nil)
        totalXPView.layer.borderColor = UIColor.gray.cgColor
        totalXPView.layer.borderWidth = 1
    }

    @IBAction func seeAllAction(_ sender: Any) {
        let bottomSheetVC = BadgesSheetViewController()
           if let sheet = bottomSheetVC.sheetPresentationController {
               sheet.detents = [.medium(), .large()]
               sheet.prefersGrabberVisible = true
           }
           present(bottomSheetVC, animated: true, completion: nil)
    }
}

extension ChallengeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var badgeImages: [String] {
        return ["approved", "badge", "emblem", "medal"]
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return badgeImages.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BadgesViewCell", for: indexPath) as? BadgesViewCell else {
            return UICollectionViewCell()
        }
        let imageName = badgeImages[indexPath.row]
        cell.badgesImage.image = UIImage(named: imageName)
        cell.badgesNameLabel.text = imageName.capitalized
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 100) 
    }
}
