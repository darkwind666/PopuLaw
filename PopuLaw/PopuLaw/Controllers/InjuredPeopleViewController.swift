//
//  InjuredPeopleViewController.swift
//  PopuLaw
//
//  Created by user on 12/8/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class InjuredPeopleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func yesPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "YesInjuredPeopleViewController") as! YesInjuredPeopleViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
    
    @IBAction func noPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "CheckAgreeWithoutGAEViewController") as! CheckAgreeWithoutGAEViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
}
