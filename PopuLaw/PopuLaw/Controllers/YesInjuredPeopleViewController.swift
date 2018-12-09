//
//  YesInjuredPeopleViewController.swift
//  PopuLaw
//
//  Created by user on 12/8/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class YesInjuredPeopleViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var hospitalButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setupButtonStyle(button: backButton)
        setupButtonStyle(button: hospitalButton)
        setupButtonStyle(button: nextButton)
    }
    
    func setupButtonStyle(button: UIButton) {
        button.setTitleColor(UIColor.init(red: 0/255, green: 255/255, blue: 64/255, alpha: 1), for: [])
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.init(red: 0/255, green: 255/255, blue: 64/255, alpha: 1).cgColor
    }
    
    @IBAction func backPressed(_ sender: Any) {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
    
    @IBAction func fixDTPFeaturesPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "FixDTPFeaturesViewController") as! FixDTPFeaturesViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
    
    @IBAction func goHospitalPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "GoHospitalViewController") as! GoHospitalViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "CallGAEViewController") as! CallGAEViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
}
