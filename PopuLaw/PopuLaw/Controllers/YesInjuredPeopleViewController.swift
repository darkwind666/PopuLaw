//
//  YesInjuredPeopleViewController.swift
//  PopuLaw
//
//  Created by user on 12/8/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class YesInjuredPeopleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
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
        
    }
}
